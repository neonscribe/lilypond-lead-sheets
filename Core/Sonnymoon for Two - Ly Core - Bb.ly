%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:51.366645Z"

\include "../Include/lead-sheets.ily"

\header {
  title = "Sonnymoon for Two"
  subtitle = \subtitle
  poet = ""
  composer = "Sonny Rollins"
  copyright = \markup \small { \now " " "© 1957 Son Rol Music Co." }
}

refrainChords = \chordmode {
  bf1:7 ef1:7 bf1:7 bf1:7
  ef1:7 ef1:7 bf1:7 bf1:7
  c1:m7 f1:7 bf1:7 bf1:7

  bf1:7 bf1:7
}

refrainKey = bf

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium-Up [Sonny Rollins 1957]" 156

  \xTextMark \markup{ \bold \box "Head" }

  \bar ".|:"
  \repeat volta 2 {
  r8 bf4.-> af4 f4 | ef4 df4 bf8 bf4-. bf8 |
  r4 r8 ef8~-> ef4 df8 bf8-> | \tuplet 3/2 { r4 bf4 df8 bf8 } ef4 df8 bf8 |
  \break
  r8 bf'4.-> af4 f4 | ef4 df4 bf8 bf4-. bf8 |
  r4 r8 ef8~-> ef4 df8 bf8-> | \tuplet 3/2 { r4 bf4 df8 bf8 } ef4 df8 bf8 |
  \break
  r8 bf'4.-> af4 f4 | ef4 df4 bf8 bf4-. bf8 \textToCodaLastTime |
  r4 r8 ef8~-> ef4 df8 bf8-> | \tuplet 3/2 { r4 bf4 df8 bf8 } ef4 df8 bf8 |
  }

  \textCodaBreak

  r8 af'8 g8 g8 gf8 gf8 f8 f8 | ef4 d8 bf8~ bf2\fermata |

  \bar "|."
}

\include "../Include/paper.ily"

\include "../Include/refrain.ily"

\markup "Play head twice before and twice after solos, to coda on the final repeat."
