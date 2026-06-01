%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:27.590432Z"

\include "../Include/lead-sheets.ily"

\header {
  title = "Blues in the Closet"
  subtitle = \subtitle
  poet = ""
  composer = "Oscar Pettiford"
  copyright = \markup \small { \now " " "© 1955 Orpheus Music, Inc." }
}

leadingEighth = ##t

refrainChords = \chordmode {
  s8
  g1:7 g1:7 g1:7 g1:7
  c1:7 c1:7 g1:7 g1:7
  a1:m7 d1:7 g1:7 g1:7
}

refrainKey = g

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Bright Blues [Oscar Pettiford 1953]" 184

  \partial 8 g8~ |
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

\include "../Include/refrain.ily"
