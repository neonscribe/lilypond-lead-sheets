%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:29.925446Z"

\include "../Include/lead-sheets.ily"

\header {
  title = "Cool Blues"
  subtitle = \subtitle
  poet = ""
  composer = "Charlie Parker"
  copyright = \markup \small { \now " " "© 1947 Songs of Universal Inc." }
}

refrainChords = \chordmode {
  c1 c1 c1 c1 f1:7 f1:7 c1 c1 d1:m7 g1:7 c1 c1
}

refrainKey = c

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Bright Blues [Charlie Parker Quartet 1947]" 162

  \tuplet 3/2 { g8 a8 g8 } e8 f8 g8 c8 b8 a8 | g8 f8 d8 a8 e'4 g8 d8~ | d8 c8 d2. | r1 |
  \break
  \tuplet 3/2 { g8 a8 g8 } ef8 f8 g8 c8 b8 a8 | g8 f8 d8 a8 e'4 g8 d8~ | d8 c8 d2. | r1 |
  \break
  \tuplet 3/2 { g8 a8 g8 } e8 f8 g8 c8 b8 a8 | g8 f8 d8 a8 e'4 g8 d8~ | d8 c8 d2. | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\include "../Include/refrain.ily"
