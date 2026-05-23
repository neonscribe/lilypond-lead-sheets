%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "C Jam Blues"
  subtitle = \subtitle
  poet = ""
  composer = "Duke Ellington"
  copyright = \markup \small { \now " " "© 1942 Famous Music Corporation" }
}

refrainChords = \chordmode {
  c1:7 c1:7 c1:7 c1:7
  f1:7 f1:7 c1:7 c1:7
  d1:m7 g1:7 c1:7 c1:7
}

refrainKey = c

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium-Up [Duke Ellington 1942]" 200

  g8-- g8-. r4 r2 | g8-- g8-. r4 g8-- g8-. r4 | g4. c8-> r2 | r1 |
  \break
  g8-- g8-. r4 r2 | g8-- g8-. r4 g8-- g8-. r4 | g4. c8-> r2 | r1 |
  \break
  g8-- g8-. r4 r2 | g8-- g8-. r4 g8-- g8-. r4 | g4. c8-> r2 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\include "../Include/refrain.ily"
