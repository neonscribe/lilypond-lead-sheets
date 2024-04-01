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

myChords = \chordmode {
  %\germanChords

  \set chordChanges = ##t
  d2:m d:m/cis

  d:m/c
  \set chordChanges = ##f
  d:m/b

  e1:7
  \set chordChanges = ##t
  e
  \break
  \once \set chordChanges = ##f
  e1/f
  e2/gis e/+gis e e:m/f d:m d:m/cis d:m/c
  \set chordChanges = ##f
  d:m/b
}

<<
  \new ChordNames
    \with { \consists #Bass_changes_equal_root_engraver }
    \myChords
  \new Staff \myChords
>>
