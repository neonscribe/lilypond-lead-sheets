%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:28.917368Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Central Park West"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "John Coltrane"
headerCopyright = "© 1964 Jowcol Music"

refrainChords = \chordmode {
  cs4:m7 fs4:7

  b4:maj7 \chordSlash 1 e4:m7 a4:7 d2:maj7 bf4:m7 ef4:7 af2:maj7 g4:m7 c4:7
  f2:maj7 cs4:m7 fs4:7 b4:maj7 \chordSlash 1 e4:m7 a4:7 d2:maj7 cs4:m7 fs4:7
  b1:maj7 cs1:m7/b b1:maj7 cs2:m7/b cs4:m7 fs4:7

  b1:maj7
}

refrainKey = b

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Ballad [John Coltrane 1964]" 72

  \partial 2 ds4 cs4 |

  \sectNoBarNoBreak "Refrain"

  \bar ".|:"
  \repeat volta 2 {
  fs1~ | fs2 af4 bf4 |
  \break
  c4 c4 c4 c4 | a4. r8 ds,4 cs4 |
  \break
  fs1~ | fs4. r8 ds4. cs8 |
  \break
  ds2.~ ds16 gs16 fs16 ds16 | cs2. \tuplet 3/2 { r8 b8 cs8 } |
  \break
  ds2.~ ds16 as'16 fs16 ds16 | cs4.  r8 ds4 cs4 |
  }

  \sectNoBarNoBreak "Ending"

  ds1\fermata

  \bar "|."
}

afterText = \markup{ "Play head twice, before and after solos. Melody is freely interpreted." }

\include "../Include/refrainonly.ily"
