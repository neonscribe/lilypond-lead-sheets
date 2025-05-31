%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Little Boat (O Barquinho)"
  subtitle = \instrument
  poet = "Ronaldo Bocoli, Buddy Kaye"
  composer = "Roberto Menescal"
  copyright = \markup \small "© 1963 Editions Sacha S.A.R.L."
}

bossaRhythm = ##t

refrainChords = \chordmode {
  bf1:maj7 bf1:maj7 e2:m7 a2:7 e2:m7 a2:7
  af1:maj7 af1:maj7 d2:m7 g2:7 d2:m7 g2:7
  gf1:maj7 gf1:maj7 c2:m7 f2:7 c2:m7 f2:7
  d1:m7 g1:7.9- c1:m7 f1:7.9-
  
  bf1:maj7 bf1:maj7 b1:13 b1:13 bf1:maj7 bf1:maj7
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Bossa" 4 = 170

  \xTextMark \markup { \bold \box "Head" }

  \bar ".|:"
  \repeat volta 2 {
  a8 bf4 a8 c4 a8 bf8~ | bf8 a8 c4 b4 bf4 | a8 a8 a8 a8 a4 ef8 e8 | a8 a8 a8 a8 a2 |
  \break
  g8 af4 g8 bf4 g8 af8~ | af8 g8 bf4 a4 af4 | g8 g8 g8 g8 g4 df8 d8 | g8 g8 g8 g8 g2 |
  \break
  f8 gf4 f8 af4 f8 gf8~ | gf8 f8 af4 g4 gf4 | f8 f8 f8 f8 f4 cf8 c8 | f2 r8 c'4 bf8 |
  \break
  f2. g4 af2~ af8 ef'4 d8 | ef,2. f4 | gf2. r4 |
  \break
  }

  \xTextMark \markup { \bold \box "Outro" }
  
  r1 | r2 r4 f4 |
  
  \bar ".|:"
  \repeat volta 2 {
  af1~ | af2 f4 ef4 | f1~_"FINE" | f2. f4 |
  }
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
