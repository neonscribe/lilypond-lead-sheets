%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "When Lights Are Low"
  subtitle = \instrument
  poet = "Spencer Williams"
  composer = "Benny Carter"
  copyright = \markup \small { \now " " "© 1936 Bee Cee Music Company" }
}

refrainLyrics = \lyricmode {
Sweet mu -- sic soft __ and mel -- low, sooth -- ing and slow. __
Strains of a mel -- low cel -- lo when lights are low. __

Dear, we're so close __ to -- geth -- er, I love you so. __
Why think a -- bout __ the wea -- ther when lights are low. __

Two hearts re -- veal -- ing, __ mu -- sic hath charms. __
Life's so ap -- peal -- ing with in -- spi -- ra -- tion in your arms. __

Our lips meet -- ing soft __ and ten -- der, love's all a -- glow. __
Why should -- n't we __ sur -- ren -- der when lights are low. __
}

refrainChords = \chordmode {
  ef2:maj7 f2:m7 g2:m7 f2:m7 ef2:maj7 f2:m7 g2:m7 c2:7
  f2:m7 bf2:7 g2:m7 c2:7 f2:m7 bf2:7
  
  ef2:6 bf2:7
  
  ef2:maj7 f2:m7 g2:m7 f2:m7 ef2:maj7 f2:m7 g2:m7 c2:7
  f2:m7 bf2:7 g2:m7 c2:7 f2:m7 bf2:7
  
  ef1:6
  
  af2:m7 df2:7 gf1:maj7 b2:m7 e2:7 a1:maj7
  d2:m7 g2:7 c1:maj7 c2:m7 f2:7 f2:m7 bf2:7.9-

  ef2:maj7 f2:m7 g2:m7 f2:m7 ef2:maj7 f2:m7 g2:m7 c2:7
  f2:m7 bf2:7 g2:m7 c2:7 f2:m7 bf2:7 ef2:6
  \chordInsideParens{ bf2:7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Swing [Miles Davis 1953]" 4 = 130

  \sectStart "A1"
  
  bf2 g8 g4 g8~ | g8 g4 g8~ g8 g4. | bf2 g8 g4 g8~ | g2. r4 |
  \break
  bf2 g8 g4 g8~ | g8 g4 g8~ g8 af4. | g2 ef8 f4 ef8~ |
  ef2 r2 |

  \sect "A2"

  bf'2 g8 g4 g8~ | g8 g4 g8~ g8 g4. | bf2 g8 g4 g8~ | g2. r4 |
  \break
  bf2 g8 g4 g8~ | g8 g4 g8~ g8 af4. | g2 ef8 f4 ef8~ |
  ef2 r2 |

  \sect "B"
  
  gf2 gf4 af8 bf8~ | bf8 df4.~ df4 r4 | a2 a8 b4 cs8~ | cs2. r4 |
  \break
  c2 c8 d4 e8~ | e8 g,4. r8 e'8 e8 e8 | ef8 g,4 d'8~ d8 f,4 c'8~ | c2 r8 cf4. |
  
  \sect "A3"
  
  bf2 g8 g4 g8~ | g8 g4 g8~ g8 g4. | bf2 g8 g4 g8~ | g2. r4 |
  \break
  bf2 g8 g4 g8~ | g8 g4 g8~ g8 af4. | g2 ef8 f4 ef8~ | ef2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
