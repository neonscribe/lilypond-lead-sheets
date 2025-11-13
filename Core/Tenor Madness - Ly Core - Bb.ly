%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Tenor Madness"
  subtitle = \instrument
  poet = ""
  composer = "Sonny Rollins"
  copyright = \markup \small { \now " " "© 1956 Prestige Music" }
}

refrainChords = \chordmode {
  s4

  bf1:7 ef1:7 bf1:7 bf1:7
  ef1:7 ef1:7 bf1:7 g1:7.9+
  c1:m7 f1:7 bf1:7 bf1:7
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Up [Sonny Rollins 1956]" 4 = 175

  \partial 4 \invisEighth d'8 |
  \bar "||"

  r8 bf4 g8 bf4 r8 df8 | r8 bf4 g8 bf4 r8 d8 |
  r8 bf4 g8 bf8 c8 bf8 g8 | bf8 c8 bf8 bf8 r4 r8 df8 |
  \break
  r8 bf4 g8 bf4 r8 df8 | r8 bf4 g8 bf4 r8 df8 |
  r8 bf4 g8 bf8 c8 bf8 g8 | bf8 c8 bf8 bf8 r4 r8 c8 |
  \break
  r8 g4 c8 b8 g8 ef8 c8 | bf'8 g8 gs8 a8 r4 r8 d8 |
  r8 bf4 g8 bf8 c8 bf8 g8 | bf8 c8 bf8 bf8 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
