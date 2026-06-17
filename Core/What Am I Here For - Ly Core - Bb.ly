%% -*- Mode: LilyPond -*-

%{

"Customizer": { "choices": { "alternateChords": [ "hlrb", "newreal" ] } }

%}

songID = "2026-06-01T22:16:58.296725Z"

\include "../Include/lead-sheets.ily"

headerTitle = "What Am I Here For"
headerSubtitle = \subtitle
headerPoet = "Frankie Laine"
headerComposer = "Duke Ellington"
headerCopyright = "© 1942 Famous Music Corporation"

refrainLyrics = \lyricmode {
}

refrainHLChords = \chordmode {
  bf1:maj7 b1:dim7 c1:m7 f1:7
  bf1:maj7 b1:dim7 c1:m7 f1:7

  bf1:7 bf1:7.5- ef1:maj7 d2:m7 g2:7
  c1:7 c1:7 c1:m7 c2:m7 f2:7
  bf1:maj7 b1:dim7 c1:m7 f1:7
  bf1:maj7 b1:dim7 c1:m7 f1:7

  bf1:maj7 b2:7 e2:7 ef1:maj7 c2:m7.5- f2:7
  bf1:maj7 b1:dim7 c2:m7 f2:7
  \chordOpenParen{ bf2:7 }
  \chordCloseParen{ f2:7.9+.5+ }
}

refrainSRBChords = \chordmode {
  bf1:6 b1:dim7 c1:m7 f1:7
  bf1:6 b1:dim7 c1:m7 f1:7

  bf1:7 e1:7 ef1:6 d2:m7 g2:9
  c1:9 c1:9 c1:m9 f2:13 f2:7.5+

  bf1:6 b1:dim7 c1:m7 f1:7
  bf1:6 b1:dim7 c1:m7 f1:7

  bf1:7 b2:7 e2:7 ef1:6 c2:m9.5- f2:13.9-
  bf1:6 b1:dim7 c2:m7 f4:9 f8:7.9- bf8:6
  \chordOpenParen{ bf2:6 }
  \chordCloseParen{ f2:7.5+ }
}

alternateChords = #(if (defined? 'alternateChords)
		    alternateChords
		    "hlrb")

refrainChords = #(let ((v (assoc alternateChords
			   (list
			    (cons "newreal" refrainSRBChords)
			    (cons "hlrb" refrainHLChords)
			  ))))
		  (if v (cdr v) #{ \chordmode { } #}))

refrainKey = bf

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium [Duke Ellington 1942]" 100

  \sectNoBarNoBreak "A1"

  bf,8 c8 d8 c8~ c8 bf4. | b8 c8 d8 c8~ c8 b4. | c8 d8 ef8 d8~ d8 c8 g'8 f8~ | f2. r4 |
  \break
  bf,8 c8 d8 c8~ c8 bf4. | b8 c8 d8 c8~ c8 b4. | c8 d8 ef8 d8~ d8 c8 g'8 f8~ | f2. r4 |

  \sect "B"

  r8 bf,4 c8 d4 f4 | e1 | r8 ef4 f8 g4 bf4 | a1 |
  r8 bf4 g8 bf4. g8 | bf4 g8 d8~ d2 | r8 bf'4 g8 bf4. g8 | d4 f8 f8~ f2 |

  \sect "A2"

  bf,8 c8 d8 c8~ c8 bf4. | b8 c8 d8 c8~ c8 b4. | c8 d8 ef8 d8~ d8 c8 g'8 f8~ | f2. r4 |
  \break
  bf,8 c8 d8 c8~ c8 bf4. | b8 c8 d8 c8~ c8 b4. | c8 d8 ef8 d8~ d8 c8 g'8 f8~ | f2. r4 |

  \sect "C"

  r8 bf,4 d8 f4 bf4 | b2 b,4. bf8~ | bf2 r4 \tuplet 3/2 { bf8 c8 bf8 } | f'2 d2 |
  \break
  bf8 c8 d8 c8~ c8 bf4. | b8 c8 d8 c8~ c8 b4. | c8 d8 ef8 f8 g4 a,8 bf8 | r1 |

  \bar "|."
}

\include "../Include/refrainonly.ily"
