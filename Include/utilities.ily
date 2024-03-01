%% -*- Mode: LilyPond -*-

#(define-bar-line "||-:|." ":|." "||" ".|")

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

sect =
#(define-music-function (s)
   (string?)
  #{ \section \sectionLabel #s #} )


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
    ;; We do not mess with c flat, b sharp, etc.
     '(cond
      ;; Avoid b sharp and e sharp
      ((and (> a 1) (or (eq? n 6) (eq? n 2)))
       (set! a (- a 2))
       (set! n (+ n 1)))
      ;; Avoid c flat and f flat
      ((and (< a -1) (or (eq? n 0) (eq? n 3)))
       (set! a (+ a 2))
       (set! n (- n 1))))
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
