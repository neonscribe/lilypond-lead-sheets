%% -*- Mode: LilyPond -*-

%%% now = #(strftime "%Y-%m-%d %H:%M" (localtime (current-time)))
now = ""


#(define (begin-parenthesis-ignatzek-chord-names in-pitches bass inversion context)
   (markup #:line ("(" (ignatzek-chord-names in-pitches bass inversion context))))

#(define (end-parenthesis-ignatzek-chord-names in-pitches bass inversion context)
   (markup #:line ((ignatzek-chord-names in-pitches bass inversion context) ")")))

#(define (begin-end-parenthesis-ignatzek-chord-names in-pitches bass inversion context)
   (markup #:line ("(" (ignatzek-chord-names in-pitches bass inversion context) ")")))

chordOpenParen =
#(define-music-function (chord)
  (ly:music?)
  "open paren to the left of chord"
  #{
  \set chordNameFunction = #begin-parenthesis-ignatzek-chord-names 
  #chord
  \unset chordNameFunction
  #} )

chordCloseParen = 
#(define-music-function (chord)
  (ly:music?)
  "close paren to the right of chord"
  #{
  \set chordNameFunction = #end-parenthesis-ignatzek-chord-names 
  #chord
  \unset chordNameFunction
  #})

chordInsideParens =
#(define-music-function (chord)
  (ly:music?)
  "open paren to the left of chord"
  #{
  \set chordNameFunction = #begin-end-parenthesis-ignatzek-chord-names 
  #chord
  \unset chordNameFunction
  #})

%%% Macro to print single slash for a quarter note
rs = {
  \once \override Rest.stencil = #ly:percent-repeat-interface::beat-slash
  \once \override Rest.thickness = #0.48
  \once \override Rest.slope = #1.7
  r4
}

stemOff = \hide Staff.Stem
stemOn = \undo \stemOff

% Macros to print slashes
rsq = {
  \once \override Rest.stencil = #ly:percent-repeat-interface::beat-slash
  \once \override Rest.thickness = #0.48
  \once \override Rest.slope = #1.7
  r4
}

rse = {
  \once \override Rest.stencil = #ly:percent-repeat-interface::beat-slash
  \once \override Rest.thickness = #0.24
  \once \override Rest.slope = #1.7
  r8
}

rss = {
  \once \override Rest.stencil = #ly:percent-repeat-interface::beat-slash
  \once \override Rest.thickness = #0.24
  \once \override Rest.slope = #1.7
  r16
}

% Macros to print slashes
rsw = {
  %% \once \override Rest.stencil = #ly:percent-repeat-interface::beat-slash
  \once \override Rest.thickness = #0.48
  \once \override Rest.slope = #1.7
  r1
}

xPageBreak = {
  \pageBreak
  \once \override Score.Clef.break-visibility = #begin-of-line-visible
  \once \override Score.KeySignature.break-visibility = #begin-of-line-visible
}

invisEighth = {
  \once \omit Voice.Rest
  \tweak X-extent #'(+inf.0 . -inf.0)
  r8
}

ambitusOff = {
  \override NoteHead.ignore-ambitus = ##t
}

ambitusOn = {
  \revert NoteHead.ignore-ambitus
}

sect =
#(define-music-function (s)
   (string?)
  #{ \bar "||-||"
     \break
     \xTextMark \markup{ \bold \box #s } #} )

sectGap =
#(define-music-function (s)
   (markup?)
  #{ \bar "||-||"
     \break
     \xTextMark \markup{ \pad-around #3 { \bold \box #s } } #} )

sectStart =
#(define-music-function (s)
   (string?)
  #{ \xTextMark \markup{ \bold \box #s } #} )


sectNoBreak =
#(define-music-function (s)
   (string?)
  #{ \bar "||-||"
     \xTextMark \markup{ \bold \box #s } #} )

sectNoBar =
#(define-music-function (s)
   (string?)
  #{ \break
     \xTextMark \markup{ \bold \box #s } #} )

sectNoBarNoBreak =
#(define-music-function (s)
   (string?)
  #{ \xTextMark \markup{ \bold \box #s } #} )


#(define (no-double-accidental-pitch p)
   (let ((o (ly:pitch-octave p))
         (a (* 4 (ly:pitch-alteration p)))
         ;; alteration, a, in quarter tone steps,
         ;; for historical reasons
         (n (ly:pitch-notename p)))
    ;; Avoid double accidentals
     (cond
      ((> a 2) (set! a (- a 4)) (set! n (+ n 1)))
      ((< a -2) (set! a (+ a 4)) (set! n (- n 1))))
    (if (not (and (defined? 'keepWeirdAccidentals) keepWeirdAccidentals))
     (cond
      ;; Avoid b sharp and e sharp
      ((and (> a 1) (or (eq? n 6) (eq? n 2)))
       (set! a (- a 2))
       (set! n (+ n 1)))
      ;; Avoid c flat and f flat
      ((and (< a -1) (or (eq? n 0) (eq? n 3)))
       (set! a (+ a 2))
       (set! n (- n 1)))))
     (if (< n 0) (begin (set! o (- o 1)) (set! n (+ n 7))))
     (if (> n 6) (begin (set! o (+ o 1)) (set! n (- n 7))))
     (ly:make-pitch o n (/ a 4))))

#(define (no-double-accidental music)
   (let ((es (ly:music-property music 'elements))
         (e (ly:music-property music 'element))
         (p (ly:music-property music 'pitch)))
     (if (pair? es)
         (ly:music-set-property!
          music 'elements
          (map (lambda (x) (no-double-accidental x)) es)))
     (if (ly:music? e)
         (ly:music-set-property!
          music 'element
          (no-double-accidental e)))
     (if (ly:pitch? p)
         (begin
           (set! p (no-double-accidental-pitch p))
           (ly:music-set-property! music 'pitch p)))
     music))

noDoubleAccidentalMusic =
#(define-music-function (m)
   (ly:music?)
   (no-double-accidental m))

#(define (naturalize-pitch p)
   (let ((o (ly:pitch-octave p))
         (a (* 4 (ly:pitch-alteration p)))
         ;; alteration, a, in quarter tone steps,
         ;; for historical reasons
         (n (ly:pitch-notename p)))
     (cond
      ((and (> a 1) (or (eqv? n 6) (eqv? n 2)))
       (set! a (- a 2))
       (set! n (+ n 1)))
      ((and (< a -1) (or (eqv? n 0) (eqv? n 3)))
       (set! a (+ a 2))
       (set! n (- n 1))))
     (cond
      ((> a 2) (set! a (- a 4)) (set! n (+ n 1)))
      ((< a -2) (set! a (+ a 4)) (set! n (- n 1))))
     (if (< n 0) (begin (set! o (- o 1)) (set! n (+ n 7))))
     (if (> n 6) (begin (set! o (+ o 1)) (set! n (- n 7))))
     (ly:make-pitch o n (/ a 4))))

#(define (naturalize music)
  (let ((es (ly:music-property music 'elements))
	(e (ly:music-property music 'element))
	(p (ly:music-property music 'pitch)))
   (if (pair? es)
    (ly:music-set-property!
     music 'elements
     (map naturalize es)))
   (if (ly:music? e)
    (ly:music-set-property!
     music 'element
     (naturalize e)))
   (if (ly:pitch? p)
    (begin
     (set! p (naturalize-pitch p))
     (ly:music-set-property! music 'pitch p)))
   music))

naturalizeMusic = #(define-music-function (m) (ly:music?) (no-double-accidental m))

startParenthesis = {
  \once \override Parentheses.font-size = 5
  \once \override Parentheses.stencils = #(lambda (grob)
        (let ((par-list (parentheses-interface::calc-parenthesis-stencils grob)))
          (list (car par-list) point-stencil )))
}

endParenthesis = {
  \once \override Parentheses.font-size = 5
  \once \override Parentheses.stencils = #(lambda (grob)
        (let ((par-list (parentheses-interface::calc-parenthesis-stencils grob)))
          (list point-stencil (cadr par-list))))
}

%%% \startParenthesis \parenthesize $note --- and --- \endParenthesis \parenthesize $note


#(define (scoop-stencil grob)
  (ly:stencil-combine-at-edge
   (ly:note-head::print grob) 0 -1
   (grob-interpret-markup grob
    (markup #:with-dimensions '(0 . 0) '(0 . 0)
     #:translate '( -2 . -2) #:musicglyph "brackettips.up" )) 0 )
)

scoop = \once \override NoteHead.stencil = #scoop-stencil

#(define (name-of music) (ly:music-property music 'name))

tiedNoteToSkip = #(define-music-function (music) (ly:music?)
(let ((prev-was-tie? #f))
  (map-some-music 
   (lambda (evt)
     (cond ((memq (name-of evt) '(EventChord NoteEvent))
               (let ((old-flag prev-was-tie?))
                  (set! prev-was-tie? #f)
                  (let ((res (music-filter (lambda(x)
                                (or (not (eq? (name-of x) 'TieEvent))
                                    (begin (set! prev-was-tie? #t)
                                            #f)))
                                evt)))
                    (if old-flag (skip-of-length evt) res))))          
           (else (ly:music-property music 'duration #f)))) 
    music)))


glissDown =
#(define-music-function (note)
  (ly:music?)
  "Contemporary glissando down"
  #{
  \override Glissando.style = #'zigzag
    \cadenzaOn
  #note
  \hideNotes
  c,,4
  \unHideNotes
  \cadenzaOff
  #})

#(define Bass_changes_equal_root_engraver
  (lambda (ctx)
  "For sequential @code{ChordNames} with same root, but different bass, the root
markup is dropped: D D/C D/B  -> D /C /B
The behaviour may be controlled by setting the @code{chordChanges}
context-property."
    (let ((chord-pitches '())
          (last-chord-pitches '())
          (bass-pitch #f))
      (make-engraver
        ((initialize this-engraver)
          (let ((chord-note-namer (ly:context-property ctx 'chordNoteNamer)))
            ;; Set 'chordNoteNamer, respect user setting if already done
            (ly:context-set-property! ctx 'chordNoteNamer
              (if (procedure? chord-note-namer)
                  chord-note-namer
                  note-name->markup))))
        (listeners
          ((note-event this-engraver event)
            (let* ((pitch (ly:event-property event 'pitch))
                   (pitch-name (ly:pitch-notename pitch))
                   (pitch-alt (ly:pitch-alteration pitch))
                   (bass (ly:event-property event 'bass #f))
                   (inversion (ly:event-property event 'inversion #f)))
            ;; Collect notes of the chord
            ;;  - to compare inversed chords we need to collect the bass note
            ;;    as usual member of the chord, whereas an added bass must be
            ;;    treated separate from the usual chord-notes
            ;;  - notes are stored as pairs containing their
            ;;    pitch-name (an integer), i.e. disregarding their octave and
            ;;    their alteration
            (cond (bass (set! bass-pitch pitch))
                  (inversion
                    (set! bass-pitch pitch)
                    (set! chord-pitches
                          (cons (cons pitch-name pitch-alt) chord-pitches)))
                  (else
                    (set! chord-pitches
                          (cons (cons pitch-name pitch-alt) chord-pitches)))))))
        (acknowledgers
          ((chord-name-interface this-engraver grob source-engraver)
            (let ((chord-changes (ly:context-property ctx 'chordChanges #f)))
              ;; If subsequent chords are equal apart from their bass,
              ;; reset the 'text-property.
              ;; Equality is done by comparing the sorted lists of this chord's
              ;; elements and the previous chord. Sorting is needed because
              ;; inverted chords may have a different order of pitches.
              ;; `chord-changes' needs to be true
              (if (and bass-pitch
                       chord-changes
                       (equal?
                         (sort chord-pitches car<)
                         (sort last-chord-pitches car<)))
                  (ly:grob-set-property! grob 'text
                    (make-line-markup
                      (list
                        (ly:context-property ctx 'slashChordSeparator)
                        ((ly:context-property ctx 'chordNoteNamer)
                         bass-pitch
                         (ly:context-property ctx 'chordNameLowercaseMinor))))))
              (set! last-chord-pitches chord-pitches)
              (set! chord-pitches '())
              (set! bass-pitch #f))))
        ((finalize this-engraver)
          (set! last-chord-pitches '()))))))

#(define-markup-command (noteName layout props mus) (ly:music?)
   ;; accept mus as music instead of pitch
   ;; in order to allow for transposition
   (let*
    ((pitch (first (music-pitches (no-double-accidental mus))))
     (alt (ly:pitch-alteration pitch)))
    (interpret-markup
     layout
     props
     (markup #:concat
             ((string-upcase (note-name->string pitch))
              (if (zero? alt)
                  empty-markup
                  (alteration->text-accidental-markup alt)))))))
