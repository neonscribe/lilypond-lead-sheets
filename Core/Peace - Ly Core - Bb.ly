%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Peace"
  subtitle = \instrument
  poet = ""
  composer = "Horace Silver"
  copyright = \markup \small { \now " " "© 1959 Ecaroh Music, Inc." }
}

refrainChords = \chordmode {
  \chordOpenParen{ c2:m7 }
  \chordCloseParen{ f2:7 }
}

refrainKey = bf

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad [Horace Silver 1959]" 4 = 50

  \partial 4 \tuplet 3/2 { r8 c'8 d8 } |
  \bar "||"
  
  \sectStart "Head"
  
  \tuplet 3/2 { ef4 ef4 ef4 } ef4~ \tuplet 3/2 { ef8 d8 c8 } | d16 c16 bf8~ bf4 bf4. bf8 |
  \break
  bf16 af16 gf8~ gf4 gf4 af4 | f2. \tuplet 3/2 { r8 d8 e8 } |
  \break
  \tuplet 3/2 { fs4 fs4 fs4 } fs4~ \tuplet 3/2 { fs8 e8 d8 } | cs8 e8 af8 b8 cs4~ \tuplet 3/2 { cs8 b8 af8 } |
  \break
  \tuplet 3/2 { af4 b4 a4 } af4 af4 | af1 |
  \break
  \tuplet 3/2 { gf4 af4 gf4 } f4 f4 | f2._"FINE"
  \tuplet 3/2 {
  \override Parentheses.font-size = #5
  \startParenthesis \parenthesize r8 c8
  \endParenthesis \parenthesize d8
  } |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup{ "Play head twice, before and after solos. Last time end at FINE" }
