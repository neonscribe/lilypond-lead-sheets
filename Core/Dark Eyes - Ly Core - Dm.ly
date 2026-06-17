%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:30.604466Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Dark Eyes (Les Yeux Noir, Очи чёрные)"
headerSubtitle = \subtitle
headerPoet = "Yevhen Hrebinka"
headerComposer = "Florian Hermann"
headerCopyright = "1879"

refrainXChords = \chordmode {
  s2.

  a1:7 a1:7 d1:m d1:m
  a1:7 a1:7 bf1 bf1
  g1:m6 g1:m6 d1:m d1:m
  a1:7 a1:7 d1:m d1:m
}

refrainChords = \chordmode {
  s2.

  a1:9 a1:9 d1:m6 d1:m6
  a1:9 a1:9 bf1:9 bf1:9
  g1:m6 g1:m6 d1:m6 d1:m6
  a1:9 a1:9 d1:m6 d1:m6
}

refrainKey = d

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempoFour "Fast [Django Reinhardt 1940]" 264

  \partial 2. \tuplet 3/2 { a8 bf8 a8 } gs4 a4 |
  \bar "||"

  bf4. a8~ a2 | r4 r8 a8 gs4 a4 | bf4. a8~ a2 | r2 a4 d4 |
  \break
  d4. cs8~ cs2 | r8 e4. f4 cs4 | e4. d8~ d2 | r2 f4 g4 |
  \break
  f4. e8~ e4 bf4~ | bf2 e4 f4 | e4. d8~ d4 a4~ | a4. a8 gs4 a4 |
  \break
  bf2 a2 | e'2 f2 | d1~ | d1 |

  \bar "|."
}

\include "../Include/refrainonly.ily"
