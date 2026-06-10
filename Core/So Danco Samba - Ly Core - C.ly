%% -*- Mode: LilyPond -*-

%{

"Customizer": { "choices": { "alternateChords": [ "hlrb", "newreal" ] } }

%}

songID = "2026-06-01T22:16:50.556337Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Só Danço Samba (Jazz 'n' Samba)"
headerSubtitle = \subtitle
headerPoet = "Vinicius de Moraes"
headerComposer = "Antônio Carlos Jobim"
headerCopyright = "© 1962 Corcovado Music Corporation"

leadingEighth = ##t

refrainLyrics = \lyricmode {
Só dan -- ço sam -- ba
Só dan -- ço sam -- ba
Vai, vai, vai, vai, vai __
Só dan -- ço sam -- ba
Só dan -- ço sam -- ba, vai __

Só dan -- ço sam -- ba
Só dan -- ço sam -- ba
Vai, vai, vai, vai, vai __
Só dan -- ço sam -- ba
Só dan -- ço sam -- ba, vai __

Já dan -- cei __ o twist a -- té de -- mais __
Mas não sei __
Me can -- sei __
Do ca -- lip -- so ao chá -- chá -- chá __

Só dan -- ço sam -- ba
Só dan -- ço sam -- ba
Vai, vai, vai, vai, vai __
Só dan -- ço sam -- ba
Só dan -- ço sam -- ba, vai __
}

refrainHLChords = \chordmode {
  s8
  
  c1:6 a1:7.5+ d1:9 d1:9
  d1:m9 g2.:7 c4*5:6 g1:sus9

  c1:6 a1:7.5+ d1:9 d1:9
  d1:m9 g2.:7 c4*5:6 c1:6

  g1:m7 c1:7 f1:6 f1:6
  a1:m7 d1:7 d1:m7 g1:7

  c1:6 a1:7.5+ d1:9 d1:9
  d1:m9 g1:7 c1:6
  \chordOpenParen{ d2:m7 }
  \chordCloseParen{ g2:7.5+ }
}

refrainLRBChords = \chordmode {
  s8
  
  c1:6.9 f1:9 d1:9 d1:9
  d1:m9 g2.:9 c4*5:6.9 f1:9

  c1:6.9 f1:9 d1:9 d1:9
  d1:m9 g2.:9 c4*5:6.9 c1:6.9

  g1:m7 c2:9 c2:9.5+ f1:maj7 f1:6
  a1:m7 d1:9 g1:7 g2:7  g2:7.5+

  c1:6.9 f1:9 d1:9 d1:9
  d1:m9 g1:9 c1:6.9
  \chordInsideParens{ f1:9 }
}

alternateChords = #(if (defined? 'alternateChords)
		    alternateChords
		    "hlrb")

refrainChords = #(let ((v (assoc alternateChords
			   (list
			    (cons "newreal" refrainLRBChords)
			    (cons "hlrb" refrainHLChords)
			  ))))
		  (if v (cdr v) #{ \chordmode { } #}))

refrainKey = c

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium" 120
  
  \partial 8 g8 |

  \sectNoBreak "A1"
  
  a8 g8 a8 a8 r8 g8 a8 g8 | a8 a8 r4 r2 | 
  \tuplet 3/2 { r4 e'4 ef4 } \tuplet 3/2 { d4 b4 a4~ } | a2. r8 g8 |
  \break
  a8 g8 a8 a8 r8 g8 a8 g8 | a8 a8 r4 r4 c4~ | c1~ | c4 r4 r4 r8 g8 |
  
  \sect "A2"

  a8 g8 a8 a8 r8 g8 a8 g8 | a8 a8 r4 r2 | 
  \tuplet 3/2 { r4 e'4 ef4 } \tuplet 3/2 { d4 b4 a4~ } | a2. r8 g8 |
  \break
  a8 g8 a8 a8 r8 g8 a8 g8 | a8 a8 r4 r4 c4~ | c1~ | c4 r4 r2 |
  
  \sect "B"

  d,8 d4 d8~ d8 d4 a'8~ | a8 a4 af8~ af8 e4 d8~ | d1~ | d2 r2 |
  \break
  e8 e4 e8~( e8 d4.) | b'8 bf4 a8~ a4 d,8 d8 | g4 g8 gf8 f8 e8 d4~ | d2 r4 r8 g8 |

  \sect "C"

  a4 g8 a8~ a8 a4 g8 | a4 g8 a8~ a8 a4. |
  \tuplet 3/2 { r4 e'4 ef4 } \tuplet 3/2 { d4 b4 a4~ } | a2. r8 g8 |
  \break
  a4 g8 a8~ a8 a4 g8 | a4 g8 a8~ a8 a4. | r4 c2.~ | c4 r4 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\include "../Include/refrain.ily"
