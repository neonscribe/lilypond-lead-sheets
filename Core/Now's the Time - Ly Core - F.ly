%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:46.662238Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Now's the Time"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Charlie Parker"
headerCopyright = "© 1945 Atlantic Music Corp."

refrainLeadingEighth = ##t

refrainChords = \chordmode {
  s8

  f1:7 bf1:7 f1:7 f1:7
  bf1:7 b1:dim7 f2:7/c e2:7
  ef2:7 d2:7.5+.9+ g1:m7 c1:7 f1:7 f1:7

  f1:7 bf1:7 f1:7 f1:7
  bf1:7 bf1:7 f1:7 f1:7
  g1:m7 c1:7 f1:7 f1:7

  f1:7 f1:7
}

refrainKey = f

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium Blues [Charley Parker's Ree Boppers 1945]" 130

  \partial 8 c8 |

  \xTextMark \markup { \bold \box "Refrain" }

  \bar ".|:"
  \repeat volta 2 {
  f8 f8 g8 c,8 f4-. r8 c8 | f8 f8 g8 c,8 f4-. r8 c8 | f8 f8 g8 c,8 f8 f8 g8 c,8 | f8 f8 g8 c,8 f4-. r8 c8 |
  \break
  f8 f8 g8 c,8 f8 bf,4.-> | f'8 f8 g8 c,8 f8 b,4.-> | f'8 f8 g8 c,8 f8 f8 g8 c,8 | f8 f8 g8 c,8 f4-. r8 af8~-> |
  \break
  \tuplet 3/2 { af16 bf16 af16 } f8 d8 c8 d4-. r4 | r8 g4.-> f8 g8 f8 ef8 \textToCodaLastTime |
  r8 c4-. bf8 c4-. r4 | r2 r4 r8
  \once \override Parentheses.font-size = #5
  \parenthesize c8 |
  }
  \break

  \xTextMark \markup { \bold \box "Solos" }

  \bar ":|.|:"
  \repeat volta 2 {
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  }
  \bar "||-:|."

  \textCodaBreak

  r8 c4-. bf8 c4-. r8 ef8-> | r8 c4-. bf8 c4-. e8-- f8-> |

  \bar "|."
}

afterText =
\markup{ "Play head twice before and twice after solos, take coda second time at end." }

\include "../Include/refrainonly.ily"
