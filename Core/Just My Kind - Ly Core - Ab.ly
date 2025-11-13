%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Just My Kind"
  subtitle = \instrument
  composer = "Paul Sawyer"
  copyright = \markup \small { \now " " "© 2019" }
}

refrainLyrics = \lyricmode {
  ''One __ in a mill -- ion,'' is what I thought the day __ your eyes met mine. __
  We talked a -- while, it seems your smile, in -- tox -- i -- cates like wine. __
  
  Some __ -- thing has real -- ly got a hold on me, feels like __ I'm fly -- ing blind. __
  And I've just got to let you know that you are just my kind. __

  I felt __ the spark turn in __ -- to a flame and it's still burn -- ing bright. __
  I hope that you might feel the same.
  I wished up -- on a star last night.

  You're __ sweet and love -- ly with a cer -- tain style that's aw __ -- 'fly hard to find. __
  You got me if you want me, 'cause I know you're just my kind. __
}

refrainChords = \chordmode {
  s4

  af2:maj7 f2:m7 bf2:m7 ef2:7
  af2:maj7 f2:m7 bf2:m7 ef2:7
  c1:7 f1:m7 bf1:7 bf2:m7 ef2:7

  af2:maj7 f2:m7 bf2:m7 ef2:7
  af2:maj7 f2:m7 bf2:m7 ef2:7
  d2:m7.5- g2:7 c2:m7.5- f2:7 bf2:m7 ef2:7 af1:6
  
  bf2:m7 ef2:7 bf2:m7 ef2:7 bf2:m7 ef2:7 af1:maj7
  c2:m7 f2:7 c2:m7 f2:7 bf1:7 bf2:m7 ef2:7

  af2:maj7 f2:m7 bf2:m7 ef2:7
  af2:maj7 f2:m7 bf2:m7 ef2:7
  d2:m7.5- g2:7 c2:m7.5- f2:7 bf2:m7 ef2:7 af2:6
  
  \chordInsideParens{ ef2:7 }
}

refrainKey = af

refrainMelody = \relative f'' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Slow to Medium Swing"

  \partial 4 \invisEighth c8~ |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  c4 df8 b8 c8 af4 f8 | c'8 c4 bf4. ef8 c8~ |
  c4 af8 f4. df'8 bf~ | bf2. r8 c8 |
  bf4 b8 c2 af8 | g4 af8 f2 c'8 |
  bf4 c4 d4 bf8 ef8~ | ef2. r8 c8~ |

  \sect "A2"
  
  c4 df8 b8 c8 af8 f8 af8 | c8 c4 bf4. ef8 c8~ |
  c4 af8 f4. ef'8 f~ | f2. r8 ef8 |
  f8 af4. g4 f4 | ef8 gf4. f4 c4 |
  ef8 df4. c4 c8 af8~ | af2. af8 bf8~ |

  \sect "B"
  
  bf4 bf8 f'4. bf,8 f'8~ | f4 ef8 c8 bf4. af8 |
  bf4 bf4 f'4 ff8 ef8~ | ef2. r8 ef8 |
  c4 c4 g'4 c,4 | g'4 gf8 f2 af8 |
  bf4 af4 g4 f4 | ef4 df8 bf2 c8~ |
  
  \sect "A3"
  
  c4 df8 b8 c8 af8 f8 af8 | c8 c4 bf4. ef8 c8~ |
  c4 af8 f4. ef'8 f~ | f2. r8 ef8 |
  f8 af4. g4 f4 | ef8 gf4. f4 c4 |
  ef8 df4. c4 c8 af8~ | af2. r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
