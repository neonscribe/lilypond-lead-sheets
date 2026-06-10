%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:42.927634Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Love Letters (4/4)"
headerSubtitle = \subtitle
headerPoet = "Edward Heyman"
headerComposer = "Victor Young"
headerCopyright = "© 1945 Famous Music Corporation"

refrainLyrics = \lyricmode {
Love let -- ters straight from your heart __ keep us so near __ while a -- part. __
I'm not a -- lone __ in the night __ when I can have __ all the love you write.
I mem -- o -- rize ev -- 'ry line. __ I kiss the name __ that you sign. __
And dar -- ling, then I read a -- gain right from the start
love let -- ters straight from your heart. __
}

refrainChords = \chordmode {
  g1:maj7 g1:maj7 e1:m7 e1:m7
  a1:m7 a2:m7.5- d2:7 g1:maj7 g1:maj7

  cs1:m7.5- fs1:7 b1:m7 e1:7.9-
  a1:m7 e1:7.9- a1:m7 d1:7

  g1:maj7 g1:maj7 e1:m7 e1:m7
  a1:m7 a2:m7.5- d2:7 g1:maj7 g1:7

  c1:maj7 f1:7 g1:maj7 bf1:dim7
  a1:7 d2:7 d2:7.9- g1:6
  \chordOpenParen{ a2:m7 }
  \chordCloseParen{ d2:7 }
}

refrainKey = g

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium [Dick Haymes 1945]" 110

  \sectNoBarNoBreak "A1"

  r4 d4 d4 d4 | d2 d4 d4 | e1~ | e1 |
  \break
  r4 e4 fs4 g4 | a2~ \tuplet 3/2 { a4 g4 fs4 } | b1~ | b1 |

  \sect "B"

  r4 b4 b4 b4 | as2~ \tuplet 3/2 { as4 b4 cs4 } | d1~ | d1 |
  \break
  r4 a4 a4 a4 | gs2~ \tuplet 3/2 { gs4 a4 b4 } | c2. e,4 | a1 |

  \sect "A2"

  r4 d,4 d4 d4 | d2 d4 d4 | e1~ | e1 |
  \break
  r4 e4 fs4 g4 | a2~ \tuplet 3/2 { a4 g4 fs4 } | b1~ | b1 |

  \sect "C"

  r4 b4 a4 b4 | d4 c4 b4 a4 | c4 b4 a4 g4 | fs1 |
  \break
  r4 e4 e4 e4 | c'2 a4 b4 | g1~ | g2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\include "../Include/refrain.ily"
