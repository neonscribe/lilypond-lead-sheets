%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Blues in the Closet"
  subtitle = \instrument
  poet = ""
  composer = "Oscar Pettiford"
  copyright = \markup \small { \now " " "© 1955 Orpheus Music, Inc." }
}

refrainChords = \chordmode {
  s4
  g1:7 g1:7 g1:7 g1:7
  c1:7 c1:7 g1:7 g1:7
  a1:m7 d1:7 g1:7 g1:7
}

refrainKey = g

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
  \tempo "Bright Blues [Oscar Pettiford 1953]" 4 = 184

  \partial 4 \invisEighth g8~ |
  \bar "||"
  
  \xTextMark \markup{ \bold \box "Head" }

  g4 b8 g8 c4 b8 g8 | c4 b8 g8 r8 d4 g8~ | g4 b8 g8 c4 b8 g8 | r8 d4. r4 r8 g8~ |
  \break
  g4 bf8 g8 c4 bf8 g8 | c4 bf8 g8 r8 d4 g8~ | g4 b8 g8 c4 b8 g8 | r8 d4. r4 r8 g8~ |
  \break
  g4 b8 g8 c4 b8 g8 | c4 b8 g8 r8 d4 g8~ | g4 b8 g8 c4 b8 g8 | r8 d4. r4 r8
  \override Parentheses.font-size = #5
  \parenthesize g8\laissezVibrer |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
