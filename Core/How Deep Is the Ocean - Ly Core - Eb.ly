%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "How Deep Is the Ocean"
  subtitle = \instrument
  composer = "Irving Berlin"
  copyright = "© 1932 Irving Berlin"
}

refrainLyrics = \lyricmode {
  How much do I love you?
  I'll tell you no lie,
  how deep is the o -- cean,
  how high is the sky?

  How man -- y times a day __ do I think of you? __
  How man -- y ros -- es are sprin -- kled with dew? __
  
  How far would I tra -- vel
  to be where you are?
  How far is the jour -- ney from here to a star?
  
  And if I ev -- er lost you,
  how much would I cry?
  How deep is the o -- cean,
  how high is the sky?
}

refrainChords = \chordmode {
  c1:m c1:m7+ c1:m7 a2:m7.5- d2:7.9-
  g1:m7 a2:m7.5- d2:7.9- g2:m7 c2:7.9- f2:m7 bf2:7
  
  ef1:6 bf2:m7 ef2:7 af1:7 af1:7
  c1:m7.5- f1:7 bf1:7 d2:m7.5- g2:7.9-

  c1:m c1:m7+ c1:m7 a2:m7.5- d2:7.9-
  g1:m7 a2:m7.5- d2:7.9- g2:m7 c2:7.9- f2:m7 bf2:7
  
  ef1:6 g2:m7.5- c2:7.9- f1:m7 df1:9
  ef1:maj7 f1:7 f2:m7 bf2:7 ef2:6 \chordInsideParens{ g2:7.5+ }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad" 4 = 75

  \mark \markup{ \box "A1" }
  
  r4 ef4 \tuplet 3/2 { ef4 d4 ef4 } | g4 g2. |
  r4 ef4 \tuplet 3/2 { ef4 d4 ef4 } | g2 r2 |
  r4 bf4 \tuplet 3/2 { bf4 a4 bf4 } | c4 c2. |
  r4 bf4 \tuplet 3/2 { bf4 a4 bf4 } | c2 r2 |
  
  \bar "||"
  \break

  \mark \markup{ \box "B" }
  
  r4 ef4 ef4 ef4 | ef8 bf4 bf8~ bf4 bf4 |
  bf4 gf4 gf4 gf4~ | gf1 |
  gf4 ef4 ef4 ef4~ | ef4 d2 ef4 |
  gf4 f4 f4 f4~ | f2 r2 |

  \bar "||"
  \break

  \mark \markup{ \box "A2" }
  
  r4 ef4 \tuplet 3/2 { ef4 d4 ef4 } | g4 g2. |
  r4 ef4 \tuplet 3/2 { ef4 d4 ef4 } | g2 r2 |
  r4 bf4 \tuplet 3/2 { bf4 a4 bf4 } | c4 c2. |
  r4 bf4 \tuplet 3/2 { bf4 a4 bf4 } | c2 r2 |
  
  \bar "||"
  \break

  \mark \markup{ \box "C" }
  
  r4 ef4 ef4 df4 | df4 c4 c4 bf4 |
  r4 af4 \tuplet 3/2 { af4 g4 f4  } | af1 |
  r4 g4 \tuplet 3/2 { g4 f4 ef4 } | g4 g2. |
  r4 f4 \tuplet 3/2 { f4 ef4 d4 } | ef2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
