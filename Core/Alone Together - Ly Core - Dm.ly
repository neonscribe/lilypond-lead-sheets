%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Alone Together"
  subtitle = \instrument
  poet = ""
  composer = "Howard Dietz and Arthur Schwartz"
  copyright = \markup \small "© 1932 HARMS Incorporated"
}

refrainLyrics = \lyricmode {
A -- lone __ to -- ge -- ther, __ be -- yond the crowd __
A -- bove the world, __ we're not too proud
to cling __ to -- ge -- ther, __ we're strong
as long as we're __ to -- ge -- ther. __

A -- lone __ to -- ge -- ther, __ the blind -- ing rain, __
The star -- less night, __ were not in vain. __
For we're __ to -- ge -- ther __ and what is there
To fear __ to __ get -- ther. __

Our love __ is as deep as the sea. __
Our love __ is as great as a love __ can be,
And we __ can wea -- ther __ the great un -- known __
If we're a -- lone __ to -- ge -- ther. __
}

refrainChords = \chordmode {
  s4

  d1:m6 e2:m7.5- a2:7.9- d1:m9 e2:m7.5- a2:7.9-
  d1:m6 a2:m7.5- d2:7.9- g2:m7 d2:7.9- g1:m7
  
  b2:m7 e2:7 g2:m7 c2:7 f1
  e2:m7.5- a2:7.9-.5-
  
  d1:maj7 e2:m7 a2:7.9-
  
  d1:m6 e2:m7.5- a2:7.9- d1:m9 e2:m7.5- a2:7.9-
  d1:m6 a2:m7.5- d2:7.9- g2:m7 d2:7.9- g1:m7
  
  b2:m7 e2:7 g2:m7 c2:7 f1
  e2:m7.5- a2:7.9-.5-
  
  d1:maj7 d1:maj7
  
  a1:m7.5- d1:7.9- g1:m7 g1:m7
  g1:m7.5- c1:7.9- f1:maj7 e2:m7.5- a2:7.9-

  d1:m6 e2:m7.5- a2:7.9- d1:m6 e2:m7.5- a2:7.9-
  d2:m6 b2:m7.5- bf2:9 a2:7.9-.5+ d1:m6

  \chordOpenParen{ bf2:9 }
  \chordCloseParen{ a2:7.9- }
}

refrainKey = d

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium [Leo Reisman 1932]" 4 = 132

  \partial 4 \invisEighth d8 |

  \sectNoBreak "A1"
  
  f2~ f4. d8 | e8 e4.~ e2~ | e4 r8 d8 e4. f8 | a1~ |
  a4 r8 d,8 e4. f8 | a1~ | a4 r8 g8 a4. bf8 | d2~ d4. d8 |
  e2~ e4. d8 | c8 c4.~ c4. bf8 | a4. g8 a4. g8 | a2~ a4. g8 |
  fs8 fs4.~ fs2~ | fs2 r4 r8 d8 |

  \sect "A2"
  
  f2~ f4. d8 | e8 e4.~ e2~ | e4 r8 d8 e4. f8 | a1~ |
  a4 r8 d,8 e4. f8 | a1~ | a4 r8 g8 a4. bf8 | d2~ d4. d8 |
  e2~ e4. d8 | c8 c4.~ c4. bf8 | a4. g8 a4. g8 | a2~ a4. g8 |
  fs8 fs4.~ fs2~ | fs2. d4 |

  \bar "||"
  
  \xPageBreak
  \sectNoBarNoBreak "B"
  
  c'1~ | \tuplet 3/2 { c4 a4 bf4 } \tuplet 3/2 { c4 ef4 d4 } | bf1~ | bf2. d,4 |
  bf'1~ | \tuplet 3/2 { bf4 g4 a4 } \tuplet 3/2 { bf4 df4 c4 } | a2~ a4. f8 | g2~ g4. d8 |
  
  \sect "A3"
  
  f2~ f4. d8 | e8 e4.~ e2~ | e4 r8 d8 e4. f8 | a1~ |
  a4 r8 a8 b4. d8 | f2~ f4. cs8 | d8 d4.~ d2~ | d4 r4 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
