%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:33.148878Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Fee-Fi-Fo-Fum"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Wayne Shorter"
headerCopyright = "© 1964 Miyako Music"

refrainChords = \chordmode {
  ef2:7 d2:7.9+ g2:m7 af2:maj7 b2:maj7 d2:7 d2:m7 g2:7
  ef2:7 d2:7.9+ g2:m7 af2:maj7 c2:7.9- f2:7 bf1:7

  ef1:7 ef1:7 bf1:7 bf1:7
  ef1:7 ef1:7 bf2:m7 ef2:7 a2:m7 d2:7

  ef2:7 d2:7.9+ g2:m7 af2:maj7 b2:maj7 d2:7 d2:m7 g2:7
  ef2:7 d2:7.9+ df4:maj7 \chordSlash 1 c4:7.9- b4*9:maj7
}

refrainKey = c

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Slow Swing [Wayne Shorter 1964]" 105

  \sectNoBarNoBreak "A1"

  a'2~ a8 g4 f16 d16 | c4. bf8~ bf2 | bf2 b4. d8~ | d2. \tuplet 3/2 { d8 g8 bf8 } |
  \break
  r8 a8 g8 f8~ f4. d8 | c4. bf8~ bf4. df8~ | df4. g8~ g4. f8~ | f2. bf8 bf,8 |

  \sect "B"

  c2 df2 | ef8 df8 ef8 ef8~ ef4 df4~ | df4 c2 bf8 a8 | r2 r4 bf'8-^ bf,8 |
  \break
  c2 df2 | ef8 df8 ef8 ef8~ ef4 df4~ | df4 c2 bf8 a8 | r2 r4 \tuplet 3/2 { d8 g8 bf8 } |

  \sect "A2"

  a2~ a8 g4 f16 d16 | c4. bf8~ bf2 | bf2 b4. d8~ | d2. \tuplet 3/2 { d8 g8 bf8 } |
  \break
  r8 a8 g8 f8~ f4. d8 | c4. bf8 r4 bf'4~ | bf1~ | bf2. r4 |

  \bar "|."
}

\include "../Include/refrainonly.ily"
