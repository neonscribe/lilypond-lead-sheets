#(define (show-pitches melody)
  (ly:message "This ~S" melody)
  (music-map
   (lambda (m)
    (if (music-is-of-type? m 'note-event)
     (let ((p (ly:music-property m 'pitch)))
      (if (ly:pitch? p)
       (let ((o (ly:pitch-octave p))
	     (a (* 4 (ly:pitch-alteration p)))
	     ;; alteration, a, in quarter tone steps,
	     ;; for historical reasons
	     (n (ly:pitch-notename p)))
	(ly:message "Octave ~S Alteration ~S Notename ~S" o a n))))))
   melody))

#(define (semitones-above-middle-c p)
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
