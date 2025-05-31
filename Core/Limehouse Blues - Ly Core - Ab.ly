%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Limehouse Blues"
  subtitle = \instrument
  poet = "Douglas Furber"
  composer = "Philip Braham"
  copyright = \markup \small "© 1922 Ascherberg, Hopwood & Crew Ltd."
}

refrainChords = \chordmode {
  df1:7 df1:7 df1:7 df1:7
  bf1:7 bf1:7 bf1:7 bf1:7
  af1:6 af1:6 c1:7 f1:m7
  bf1:7 bf1:7 bf1:m7 ef2:7 d2:7

  df1:7 df1:7 df1:7 df1:7
  bf1:7 bf1:7 bf1:7 bf1:7
  af1:6 f1:7 bf1:m7 df1:m6
  af2:6/c b2:dim7 bf2:m7 ef2:7 af1:6 af1:6
}

refrainKey = af

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Fast Swing" 4 = 240

  \xTextMark \markup{ \bold \box "A1" }
  
  f4 g4 af4 f4~ | f4 g2 af4 | f4 g4 af4 f4~ | f1 |
  \break
  f4 g4 af4 f4~ | f4 g2 af4 | f4 g4 af4 f4~ | f1 |
  
  \sect "B"
  
  ef4 f4 g4 af4~ | af4 bf2 b4 | c4 b4 bf4 af4~ | af1 |
  \break
  f4 g4 af4 a4~ | a4 bf2 c4 | bf4 a4 af4 g4~ | g4 gf2 f4 |
  
  \sect "A2"
  
  f4 g4 af4 f4~ | f4 g2 af4 | f4 g4 af4 f4~ | f1 |
  \break
  f4 g4 af4 f4~ | f4 g2 af4 | f4 g4 af4 f4~ | f1 |
  
  \sect "C"
  
  ef'4 df4 ef4 f4~ | f4 ef2 c4 | df4 c4 df4 bf4~ | bf1 |
  \break
  df4 c4 df4 ef4~ | ef4 c2 bf4 | af2 af4 af4 | af2. r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
