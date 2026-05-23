%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Peace"
  subtitle = \subtitle
  poet = ""
  composer = "Horace Silver"
  copyright = \markup \small { \now " " "© 1959 Ecaroh Music, Inc." }
}

refrainChords = \chordmode {
  s4
  
  a2:m7.5- af2:7 g2:m7 c2:7.9- b2:maj7 c4:m7.5- f4:7.9+
  bf1:maj7 b2:m7 e2:7 a2:maj7 fs2:m7
  ef2:m7.5- af4:13 af4:7.5+ df1:maj9 c2:7.11+ b2:7.11+ bf1:maj7
}

refrainKey = bf

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Ballad [Horace Silver 1959]" 50

  \partial 4 \tuplet 3/2 { r8 c'8 d8 } |
  \bar "||"

  \sectNoBarNoBreak "Head"

  \tuplet 3/2 { ef4 ef4 ef4 } ef4~ \tuplet 3/2 { ef8 d8 c8 } | d16 c16 bf8~ bf4 bf4. bf8 |
  \break
  bf16 af16 gf8~ gf4 gf4 af4 | f2. \tuplet 3/2 { r8 d8 e8 } |
  \break
  \tuplet 3/2 { fs4 fs4 fs4 } fs4~ \tuplet 3/2 { fs8 e8 d8 } | cs8 e8 af8 b8 cs4~ \tuplet 3/2 { cs8 b8 af8 } |
  \break
  \tuplet 3/2 { af4 b4 a4 } af4 af4 | af1 |
  \break
  \tuplet 3/2 { gf4 af4 gf4 } f4 f4 | f2. \textFine
  \tuplet 3/2 {
  \override Parentheses.font-size = #5
  \startParenthesis \parenthesize r8 c8
  \endParenthesis \parenthesize d8
  } |

  \bar "|."
}

\include "../Include/paper.ily"

\include "../Include/refrain.ily"

\markup{ "Play head twice, before and after solos. Last time end at FINE" }
