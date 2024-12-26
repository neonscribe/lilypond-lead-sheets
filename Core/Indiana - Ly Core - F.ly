%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Indiana (Back Home Again in Indiana)"
  subtitle = \instrument
  poet = "Ballard MacDonald"
  composer = "James F. Hanley"
  copyright = "© 1917 Shapiro, Bernstein & Co., Inc."
}

refrainLyrics = \lyricmode {
Back home a -- gain __ in In -- di -- an -- a, __
and it seems that I can see __
the gleam -- ing can -- dle -- light __
still shin -- ing bright __
through the syc -- a mores __ for me; __

The new mown hay __ sends all its fra -- grance __
from the fields I used to roam; __
When I dream a -- bout the moon -- light on the Wa -- bash, __
then I long for my In -- di -- an -- a home. __
}

refrainChords = \chordmode {
  s1
  
  f2 ef2:7 d1:7 g1:7 g1:7
  g1:m7 c1:7 f1:6 f1:7
  
  bf1 bf2 b2:dim7 f1 d1:7
  g1:7 g1:7 g1:m7 c1:7

  f2 ef2:7 d1:7 g1:7 g1:7
  a1:7 a1:7 d1:m bf1:m7
  
  f1 a1:7 d2:m d2:m/c bf1:m7
  a2:m7 d2:m7 g2:m7 c2:7 f1:6
  \chordOpenParen{ g2:m7 }
  \chordCloseParen{ c2:7 }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Fast Swing" 4 = 180

  r8 c4. f4 a4 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  c2 r2 | r8 d4. c4 a4 | g4. d8~ d2 | r2 e4 f4 |
  \break
  a2. e4 | a2 g4. f8~ | f1 | r8 f4. e4 ef4 |

  \sect "B"
  
  d4 f8 bf8~ bf2~ | bf2 d,2 | c4 f8 a8~ a2~ | a2 a4 bf4 |
  \break
  b4 a4 e2~ | e2 d4. g8~ | g1 | r8 c,4. f4 a4 |

  \sect "A2"
  
  c2 r2 | r8 d4. c4 a4 | g4. d8~ d2 | r2 e4 f4 |
  \break
  a2. e4 | a2 g4. f8~ | f1 | r2 f4 g4 |

  \sect "C"

  a4 gs4 a4. f8 | g4 a4 g4 e4 | f4. d8~ d2~ | d4 r4 e4 d4 |
  \break
  c2 f4 a4 | c4 g4 bf8 a4 f8~ | f2 r2 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
