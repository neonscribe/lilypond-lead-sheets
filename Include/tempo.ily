%% -*- Mode: LilyPond -*-

tempoEight = #(define-music-function (indication bpm)
	      (scheme? scheme?)
	       (if (defined? 'tempoIndication)
		(set! indication tempoIndication))
	       (if (defined? 'tempoBPM)
		(set! bpm tempoBPM))
	      (if (and (string? indication)
		   (not (string= indication "")))
	       (if (and (rational? bpm) (not (eqv? bpm 0)))
		#{ \tempo #indication 8 = #bpm #}
		#{ \tempo #indication #})
	       (if (and (rational? bpm) (not (eqv? bpm 0)))
		#{ \tempo 8 = #bpm #}
		#{ #})))

tempoFour = #(define-music-function (indication bpm)
	      (scheme? scheme?)
	       (if (defined? 'tempoIndication)
		(set! indication tempoIndication))
	       (if (defined? 'tempoBPM)
		(set! bpm tempoBPM))
	      (if (and (string? indication)
		   (not (string= indication "")))
	       (if (and (rational? bpm) (not (eqv? bpm 0)))
		#{ \tempo #indication 4 = #bpm #}
		#{ \tempo #indication #})
	       (if (and (rational? bpm) (not (eqv? bpm 0)))
		#{ \tempo 4 = #bpm #}
		#{ #})))

tempoFourDot = #(define-music-function (indication bpm)
	      (scheme? scheme?)
	       (if (defined? 'tempoIndication)
		(set! indication tempoIndication))
	       (if (defined? 'tempoBPM)
		(set! bpm tempoBPM))
	      (if (and (string? indication)
		   (not (string= indication "")))
	       (if (and (rational? bpm) (not (eqv? bpm 0)))
		#{ \tempo #indication 4. = #bpm #}
		#{ \tempo #indication #})
	       (if (and (rational? bpm) (not (eqv? bpm 0)))
		#{ \tempo 4. = #bpm #}
		#{ #})))

tempoTwo = #(define-music-function (indication bpm)
	      (scheme? scheme?)
	       (if (defined? 'tempoIndication)
		(set! indication tempoIndication))
	       (if (defined? 'tempoBPM)
		(set! bpm tempoBPM))
	      (if (and (string? indication)
		   (not (string= indication "")))
	       (if (and (rational? bpm) (not (eqv? bpm 0)))
		#{ \tempo #indication 2 = #bpm #}
		#{ \tempo #indication #})
	       (if (and (rational? bpm) (not (eqv? bpm 0)))
		#{ \tempo 2 = #bpm #}
		#{ #})))

tempoTwoDot = #(define-music-function (indication bpm)
	      (scheme? scheme?)
	       (if (defined? 'tempoIndication)
		(set! indication tempoIndication))
	       (if (defined? 'tempoBPM)
		(set! bpm tempoBPM))
	      (if (and (string? indication)
		   (not (string= indication "")))
	       (if (and (rational? bpm) (not (eqv? bpm 0)))
		#{ \tempo #indication 2. = #bpm #}
		#{ \tempo #indication #})
	       (if (and (rational? bpm) (not (eqv? bpm 0)))
		#{ \tempo 2. = #bpm #}
		#{ #})))
