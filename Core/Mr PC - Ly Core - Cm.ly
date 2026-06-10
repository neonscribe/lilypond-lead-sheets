%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:45.165357Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Mr. P.C."
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "John Coltrane"
headerCopyright = "© 1959 Jowcol Music"

refrainChords = \chordmode {
  c1:m c1:m c1:m c1:m
  f1:m f1:m c1:m c1:m
  af1:7 g1:7 c1:m c1:m
}

refrainKey = c

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempoFour "Fast [John Coltrane 1959]" 262

  c8 c8 d8 d8 ef8 ef8 f8 f8 | g4. f8 ef8 c4 bf8 | c2 bf4. c8~ | c4 r4 r2 |
  \break
  f8 f8 g8 g8 af8 af8 bf8 bf8 | c4. bf8 g8 f4 ef8 | c2 bf4. c8~ | c4 r4 ef8 c8 ef8 gf8~ |
  \break
  gf8 f4.~ f4. gf8~ | gf8 f4 ef8 f4 ef4 | c2 bf4. c8~ | c4 r4 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\include "../Include/refrain.ily"
