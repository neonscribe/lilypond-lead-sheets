%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:25.223491Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Artillerie Lourde (Heavy Artillery)"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Django Reinhardt"
headerCopyright = "© 1944 Publications Francis Day S.A."

leadingEighth= ##t

refrainChords = \chordmode {
  s4.

  c2 a2:m7 d2:m7 g2:7 c2 a2:m7 d2:m7 g2:7
  c2 a2:m7 d2:m7 g2:7 c2 g2:7

  c1

  c1

  c1:7 c1:7 bf1:7 bf1:7 af1:7 af1:7 g1:7 g1:7

  c2 a2:m7 d2:m7 g2:7 c2 a2:m7 d2:m7 g2:7
  c2 a2:m7 d2:m7 g2:7 c2 g2:7 c1
}

refrainKey = c

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium [Django Reinhardt 1949]" 116

  \partial 4. g8 b4-. |

  \xTextMark \markup{ \bold \box "A1,A2" }

  \bar ".|:"
  \repeat volta 2 {
  c4-. r4 r4 c8 ef8~ | ef4 c8 a8 r8 g8 b4-. |
  c4-. r4 r4 c8 ef8~ | ef4 c8 a8 r8 g8 b4-. |
  \break
  c4-. r4 r4 c8 ef8~ | ef4 c8 a8 r8 g8 b4-. |
  c4-. r4 r4 g8 g8 |
  \alternative { \volta 1 {
  b8 c8 r4 r8 g8 b4-. |
  } \volta 2 {
  b8 c8 r4 r2 |
  } } }
  \sect "B"

  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq r8 g8 b4-. |

  \sect "A3"

  c4-. r4 r4 c8 ef8~ | ef4 c8 a8 r8 g8 b4-. |
  c4-. r4 r4 c8 ef8~ | ef4 c8 a8 r8 g8 b4-. |
  \break
  c4-. r4 r4 c8 ef8~ | ef4 c8 a8 r8 g8 b4-. |
  c4-. r4 r4 g4 | b8 c8 r4 r2 |


  \bar "|."
}

\include "../Include/paper.ily"

\include "../Include/refrain.ily"

\markup "Solo over Rhythm Changes."
