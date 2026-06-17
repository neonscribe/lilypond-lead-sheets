%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:32.134552Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Doxy"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Sonny Rollins"
headerCopyright = "© 1963 Prestige Music"

refrainLeadingEighth = ##t

refrainChords = \chordmode {
  s8

  bf2:7 af2:7 g1:7 c2:7 f2:7 bf2 f2:7.5+
  bf2:7 af2:7 g1:7 c1:7 f1:7
  bf1:7 bf1:7 ef1:7 e1:dim7
  bf2:7 af2:7 g1:7 c2:7 f2:7 bf2
  \chordInsideParens{ f2:7.5+ }
}

refrainKey = bf

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium [Miles Davis 1954]" 120

  \partial 8 f8 |

  \bar ".|:"
  \repeat volta 2 {
  bf8 d8 bf8 g8 bf4 r8 f8 | bf8 g8 bf8 df8 r8 g,4-. f8 |
  e8 g8 bf8 df8 \tuplet 3/2 { c8 df8 c8 } g8 bf8 | r2 r4 r8 f8 |
  \break
  bf8 d8 bf8 g8 bf4 r8 f8 | bf8 g8 bf8 df8 r8 g,4-. f8 |
  e8 g8 bf8 df8 \tuplet 3/2 { c8 df8 c8 } g8 a8 | r1 |
  \break
  g'4 r8 f8 r4 df4~ | df4. g,8 r8 df'8 r8 g,8 |
  df'4 df8 df8 g,4 c4 | r2 r4 r8 f,8 |
  \break
  bf8 d8 bf8 g8 bf4 r8 f8 | bf8 g8 bf8 df8 r8 g,4-. f8 |
  e8 g8 bf8 df8 \tuplet 3/2 { c8 df8 c8 } g8 bf8 | r2 r4 r8 f8 |
  }
}

afterText = \markup{ "Play head twice at the beginning, once after solos." }

\include "../Include/refrainonly.ily"
