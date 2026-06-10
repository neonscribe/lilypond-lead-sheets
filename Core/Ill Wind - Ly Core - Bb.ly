%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:38.791419Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Ill Wind"
headerSubtitle = \subtitle
headerPoet = "Ted Koehler"
headerComposer = "Harold Arlen"
headerCopyright = "© 1934 Mills Music, Inc."

refrainLyrics = \lyricmode {
Blow, ill wind, blow a -- way. Let me rest to -- day.
You're blow -- in' me no good, no good.

Go, ill wind, go a -- way.
Skies are oh, so gray a -- around my neigh -- bor -- hood __ and that's no good.

You're on -- ly mis -- lead -- in' the sun -- shine I'm need -- in'.
Ain't that a shame? __
It's so hard to keep up with trou -- bles that creep up
from out of no -- where when love's to blame.

So, ill wind, blow a -- way. Let me rest to -- day.
You're blow -- in' me no good, no good.
}

refrainChords = \chordmode {
  bf1:6 a2:m7 d2:7.5- d2:m7 g2:7 ef2:m7 af2:9
  d2:m7 g2:7 c2:m7.5- f2:7.9- bf2:6 g2:7.9- c2:m7 f2:7

  bf1:6 a2:m7 d2:7.5- d2:m7 g2:7 ef2:m7 af2:9
  d2:m7 g2:7 c2:m7.5- f2:7.9- bf2:6 af2:13 bf1:6

  d2:7 e2:m7 f2:dim7 d2:7/fs g1:sus13 g1:13
  d2:7 e2:m7 f2:dim7 d2:7/fs g2:7 df2:9.11+ c2:m7.5- f2:7

  bf1:6 a2:m7 d2:7.5- d2:m7 g2:7 ef2:m7 af2:9
  d2:m7 g2:7 c2:m7.5- f2:7.9- bf2:6 af2:13 bf4:6 \chordSlash 1
  \chordOpenParen{ c4:m7 }
  \chordCloseParen{ f4:7 }
}

refrainKey = bf

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Ballad [Dinah Washington 1955]" 70

  \sectNoBarNoBreak "A1"

  bf1 | d4 c4 af4. af8 | g1 | df'4 c4 bf4 gf4 |
  f2.. d'8 | f8 ef8 gf,2 gf4 | bf2. af4 | f1 |

  \sect "A2"

  bf1 | d4 c4 af4. af8 | g1 | df'4 c4 bf4 gf4 |
  f2.. d'8 | f8 ef8 gf,2 gf4 | bf2~ bf8 af8 af8 af8 | f2.. cs'8 |

  \sect "B"

  d8 d,4 cs'8 d8 d,4 cs'8 | d8 d,4 cs'8 d8 d,4. |
  \tuplet 3/2 { d'4 d4 d4 } d8( e4.~ | e2..) ef8 |
  d8 d,4 ef'8 d8 d,4 ef'8 | d8 d,4 ef'8 d8 d,4 ef'8 |
  d4 g,8 g8~ g8 g4 g8 | ef'4 gf,4 f2 |

  \sect "A3"

  bf1 | d4 c4 af4. af8 | g1 | df'4 c4 bf4 gf4 |
  f2.. d'8 | f8 ef8 gf,2 gf4 | bf2. af4 | f1 |

  \bar "|."
}

\include "../Include/paper.ily"

\include "../Include/refrain.ily"
