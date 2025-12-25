%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Birk's Works"
  subtitle = \instrument
  poet = ""
  composer = "Dizzy Gillespie"
  copyright = \markup \small { \now " " "© 1951 Dizlo Music Corporation" }
}

refrainChords = \chordmode {
  s2
  
  f1:m7 g2:m7.5- c2:7.5+ f1:m7 c2:m7.5- f2:7.9+
  bf1:m7 bf1:m7 f1:m7 f1:m7
  af2:m7 df2:7 g2:m7.5- c2:7.5+.9+ f1:7 f1:7
}

refrainKey = f

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
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium Swing [Art Pepper 1957]" 4 = 158

  \partial 2 \invisEighth f8 af8-. bf8 |
  \bar "||"
  
  \sectStart "Head"

  b8-. c8 \tuplet 3/2 { b16 c16 b16 } bf8 af8 f8 af8-. bf8 | bf4 af8 c8 r8 f,8 af8-. bf8 |
  \break
  b8-. c8 \tuplet 3/2 { b16 c16 b16 } bf8 af8 f8 af8 bf8 | r2 r8 f8 af8-. bf8 |
  \break
  bf8-. b8 \tuplet 3/2 { b16 c16 b16 } bf8 af8 f8 af8-. bf8 | bf4 af8 cf8 r8 f,8 af8-. bf8 |
  \break
  b8-. c8 \tuplet 3/2 { b16 c16 b16 } bf8 af8 f8 af8 bf8 | r2 r8 f8 af8 bf8 |
  \break
  r8 bf4. r8 f8 af8 bf8 | r8 bf4. \tuplet 3/2 { af16 bf16 af16 } f8 ef8 f8~ |
  \break
  f2. ef8 f8 | r2 r8
  \override Parentheses.font-size = #5
  \startParenthesis \parenthesize f8
  af8
  \endParenthesis \parenthesize bf8 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup{ "Play head twice, before and after solos." }
