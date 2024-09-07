\version "2.24"

#(use-modules (ice-9 receive))

#(define possible-naturalizations
   (list
     #{ deses #}
     #{ bis #}))

#(define no-naturalization
   #{ c #})


#(define (key-alterations context pitch-alist)
   "Compute alterations in the key, based on the pitch-alist.

This replicates the action of Key_engraver::read_event in lily/key-engraver.cc."
   (let loop ((alist (list-copy pitch-alist))
              (order (ly:context-property context 'keyAlterationOrder))
              (accidentals '()))
     (if (or (null? alist)
             (null? order))
         (append
           (filter-map
             (lambda (entry)
               (and (not (zero? (cdr entry)))
                    ; No, don't warn, because we may get very
                    ; weird accidentals in the process of finding
                    ; the best key.
                    entry))
             alist)
           (reverse! accidentals))
         (let* ((entry (car order))
                (head (member entry alist))
                (found (and head (car head)))
                (remaining-order (cdr order)))
           (if found
               (loop (delete! found alist)
                     remaining-order
                     (cons found accidentals))
               (loop alist
                     remaining-order
                     accidentals))))))


#(define (alteration-number accidentals)
   "Compute the number of accidentals in this key, taking double accidentals into account."
   (* 2 (apply + (map abs (map cdr accidentals)))))

#(define (best-naturalization context tonic pitch-alist alterations)
   "Determine best tonic to minimize the number of alterations.

Receives pre-computed alterations for the base tonic, to avoid calculating
them again.  Returns the best alterations found, for the same reason.

This applies a very simple-minded algorithm: try two possible ways to
naturalize, changing flats to sharps or sharps to flats, and return the
best one among the default and these two."
   (let loop ((best-naturalization-found tonic)
              (best-alterations-found alterations)
              (changed #f)
              (naturalizations-to-try possible-naturalizations))
     (if (null? naturalizations-to-try)
         (values best-naturalization-found best-alterations-found changed)
         (let* ((naturalization (car naturalizations-to-try))
                (remaining-naturalizations (cdr naturalizations-to-try))
                (new-pitch (ly:pitch-transpose tonic naturalization))
                (new-pitch-alist (ly:transpose-key-alist pitch-alist naturalization))
                (new-alterations (key-alterations context new-pitch-alist)))
           (if (< (alteration-number new-alterations)
                  (alteration-number best-alterations-found))
               (loop naturalization
                     new-alterations
                     #t
                     remaining-naturalizations)
               (loop best-naturalization-found
                     best-alterations-found
                     changed
                     remaining-naturalizations))))))


#(define (naturalize-note! event naturalization)
   (ly:event-set-property!
     event
     'pitch
     (ly:pitch-transpose (ly:event-property event 'pitch)
                         naturalization)))


#(define (reset-naturalization! context)
   (ly:context-set-property! context 'currentNaturalization no-naturalization))


#(set-object-property! 'currentNaturalization 'translation-type? ly:pitch?)

#(define (Naturalize_engraver context)
   (let ((notes-with-original-pitches '()))
     (make-engraver
       (listeners
         ((note-event engraver event)
            (set! notes-with-original-pitches
                  (cons
                    (cons event
                          (ly:event-property event 'pitch))
                    notes-with-original-pitches))
            (naturalize-note! event
                              (ly:context-property context 'currentNaturalization)))
         ((key-change-event engraver event)
            (let* ((tonic (ly:event-property event 'tonic))
                   (pitch-alist (ly:event-property event 'pitch-alist))
                   (default-alterations
                     (key-alterations context pitch-alist)))
              ; Find the best key to minimize accidentals.  If it
              ; is different from what we had (that is, we managed
              ; to find a better enharmony), then use it.
              (receive (new-naturalization new-alterations changed)
                  (best-naturalization context
                                       tonic
                                       pitch-alist
                                       default-alterations)
                (if changed
                    (begin
                      (ly:context-set-property!
                        context
                        'tonic
                        (ly:pitch-transpose tonic new-naturalization))
                      (ly:context-set-property!
                        context
                        'keyAlterations
                        new-alterations)
                      (ly:context-set-property!
                        context
                        'currentNaturalization
                        new-naturalization)
                      ; Strictly speaking, the order of events is
                      ; unspecified.  Who knows: we may get a note
                      ; before the key.  In this case, we have to
                      ; re-transpose the previously transposed notes.
                      (for-each
                        (lambda (entry)
                          (let ((note-event (car entry))
                                (original-pitch (cdr entry)))
                            (ly:event-set-property! note-event
                                                    'pitch
                                                    original-pitch)
                            (naturalize-note! note-event new-tonic)))
                        notes-with-original-pitches))
                    ; Nothing better could be found.
                    (reset-naturalization! context))))))
       ((stop-translation-timestep engraver)
          (set! notes-with-original-pitches '())))))

#(ly:register-translator
 Naturalize_engraver 'Naturalize_engraver
 '((grobs-created . ())
   (events-accepted . (key-change-event note-event))
   (properties-read . ())
   (properties-written . (currentNaturalization keyAlterations tonic))
   (description . "Try to naturalize key signatures.")))


\layout {
  \context {
    \Staff
    % Start with a no-op, for the case when there is no \key involved.
    currentNaturalization = #no-naturalization
  }
}



%{
%% Example

\layout {
  \context {
    \Staff
    % Just for visibility in this snippet
    printKeyCancellation = ##f
  }
}

notes = \relative {
  \key aeses \major
  aeses'8 beses ces deses eeses fes ges aeses
  \key cis \minor
  cis, dis e fis gis a bis cis
  \break
}

music = <<
  \notes
  \transpose ees c \notes
>>

\score {
  \new StaffGroup \with {
    instrumentName = "Default"
  } \music
}

\score {
  \layout {
    \context {
      \Staff
      \consists Naturalize_engraver
    }
  }
  \new StaffGroup \with {
    instrumentName = "Naturalized"
  } \music
}
%}