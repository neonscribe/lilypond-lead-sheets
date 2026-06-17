%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:27.502259Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Blues by Five"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Red Garland"
headerCopyright = "© 1956 Prestige Music"

refrainChords = \chordmode {
  s4

  bf1:7 bf1:7 bf1:7 bf1:7
  ef1:7 ef1:7 bf1:7 bf1:7
  f1:7 f1:7 bf2:7 g2:7 c2:m7 f2:7
}

refrainKey = bf

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium-Fast [Miles Davis 1956]" 180

  \partial 4 f4-. |
  \bar "||"

  \sectNoBarNoBreak "Head"

  af4. bf8~ bf4 f4-. | af4. bf8~ bf4 f4-. | af8 bf8 af4 bf4 af8 f8 | r4 r8 bf8~ bf4 bf4-. |
  \break
  df4. ef8~ ef4 bf4-. | df4. ef8~ ef4 f,4-. | af8 bf8 af4 bf4 af8 f8 | r2 r4 bf4-. |
  \break
  df4. bf8~ bf4 df4~ | df8 bf4. af4-. a8 bf8 \textFine | r4 r8 af8 r4 r8 g8 | r4 r8 gf8 r4
  \override Parentheses.font-size = #5 \parenthesize f4-. |

  \bar "|."
}

afterText =
\markup{ "Play head twice, before and after solos." }

\include "../Include/refrainonly.ily"
