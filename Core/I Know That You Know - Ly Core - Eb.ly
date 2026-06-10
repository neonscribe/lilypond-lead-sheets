%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:36.618066Z"

\include "../Include/lead-sheets.ily"

headerTitle = "I Know That You Know"
headerSubtitle = \subtitle
headerPoet = "Anne Caldwell"
headerComposer = "Vincent Youmans"
headerCopyright = "© 1926 HARMS Inc."

refrainLyrics = \lyricmode {
I know __ that you know __ that I'll go __ where you go. __
I choose you; __ won't lose you. __
I wish you knew how much I long to hold you in __ my arms.
This time __ is my time, __ will soon be __ good -- bye time. __
Then in the star -- light, __ hold me tight. __
With one more lit -- tle kiss, say “Night -- y night!”
}

refrainChords = \chordmode {
  f1:9 f1:9 f1:m7 bf1:7
  ef1:maj7 ef1:maj7 c1:7 c1:7

  f1:9 f1:9 f1:m7 bf1:7.9-
  ef1:maj7 ef1:maj7 g1:m7 c1:7.9+

  f1:9 f1:9 f1:m7 bf1:7
  ef1:maj7 ef1:maj7 a1:m7 af1:m7

  g1:m7 c1:7.9- f1:7 bf1:7
  ef1:6 ef1:6 ef4:6 r4*7

}

refrainKey = ef

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Fast Swing [Nat King Cole 1957]" 320

  \sectNoBarNoBreak "A1"

  g2. g4~ | g2. f4 | g2. g4~ | g2. f4 |
  \break
  c'2. c4~ | c2. bf4 | c2. c4~ | c2 r4 bf4 |

  \sect "B"

  g2. g4~ | g2. f4 | g2. g4~ | g2 r4 f4 |
  \break
  ef4 f4 g4 af4 | bf4 c4 d4 ef4 | g2 d4 f4~ | f4 c4 ef4 r4 |

  \sect "A2"

  g,2. g4~ | g2. f4 | g2. g4~ | g2. f4 |
  \break
  c'2. c4~ | c2. bf4 | g'2. g4~ | g4 f4 ef4 d4 |

  \sect "C"

  c2. c4~ | c2. bf4 | g2. g4~ | g2 r4 f4 |
  \break
  ef4 f4 g4 af4 | bf4 c4 d4 f4 | ef4-^ r4^"Solo Break" r2 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\include "../Include/refrain.ily"
