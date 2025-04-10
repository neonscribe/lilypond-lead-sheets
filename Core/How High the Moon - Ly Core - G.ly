%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "How High the Moon"
  subtitle = \instrument
  poet = "Nancy Hamilton"
  composer = "Morgan Lewis"
  copyright = \markup \small "© 1940 Chappell & Co."
}

refrainLyrics = \lyricmode {
Some -- where there's mu -- sic, __
How faint the tune. __
Some -- where there's hea -- ven, __
how high the moon. __
There is no moon a -- bove
when love is far a -- way too, __
Till it comes true __
That you love me as I love you.
Some -- where there's mu -- sic, __
it's where you are,
Some -- where there's hea -- ven, __
how near, how far. __
The dark -- est night would shine
if you would come to me soon. __
Un -- til you will, how still my heart,
how high the moon.
}

refrainChords = \chordmode {
  s2.

  g1:maj7 g1:maj7 g1:m7 c1:7
  f1:maj7 f1:maj7 f1:m7 bf1:7

  ef1:maj7 a2:m7.5- d2:7 g1:m7 a2:m7.5- d2:7
  g1:maj7 a2:m7 d2:7 b2:m7 bf2:7 a2:m7 d2:7
  
  g1:maj7 g1:maj7 g1:m7 c1:7
  f1:maj7 f1:maj7 f1:m7 bf1:7

  ef1:maj7 a2:m7.5- d2:7 g1:maj7 a2:m7 d2:7
  b2:m7 bf2:7 a2:m7 d2:7 g1:6
  \chordOpenParen{ a2:m7 }
  \chordCloseParen{ d2:7 }
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Swing" 4 = 130

  \partial 2. d4 g4 a4 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }

  a2 b2~ | b4 d,4 g4 a4 | bf1~ | bf4 c,4 f4 g4 |
  g2 a2~ | a4 c,4 f4 g4 | af1~ | af4 d,4 ef4 f4 |

  \sect "B1"

  g4 g4 g4 g4 | g4 g8 a4 g8 a4 | bf1~ | bf4. a4 g8 a4 |
  b1~ | b4 a4 b4 c4 | d4 d4 d4 d4 | d8 r8 d,4 g4 a4 |

  \sect "A2"
  
  a2 b2~ | b4 d,4 g4 a4 | bf1~ | bf4 c,4 f4 g4 |
  \break
  g2 a2~ | a4 c,4 f4 g4 | af1~ | af4 d,4 ef4 f4 |
  
  \sect "B2"
  
  g4 g4 g4 g4 | g4 g8 a4 g8 a4 | b1~ | b4 a4 b4 c4 |
  \break
  d4 d4 d4 d4 | d4 d,4 g4 a4 | g1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
