%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Bossa Antigua"
  subtitle = \instrument
  poet = ""
  composer = "Paul Desmond"
  copyright = \markup \small "© 1965 Desmond Music Company"
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  s2
  bf1:m7 ef1:7 c1:m7 f1:m7
  bf1:m7 ef1:7 c1:m7 f1:m7
  bf1:m7 ef1:7 c1:m7 f1:m7
  bf1:m7 d2:m7 g2:7 c1:maj7 a1:m7
  d1:m7 g1:7 e1:m7 a1:m7
  d1:m7 g1:7 c1:m7 f1:7
  bf1:m7 ef1:7 c1:m7 f1:m7
  bf1:m7 ef1:7 af1:maj7 af1:maj7
}

refrainKey = af

refrainMelody = \relative c' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  
  \tempo "Medium Bossa [Paul Desmond 1965]" 2 = 95

  \partial 2 c8 df4 ef8 |
  \bar "||"
  
  f2~ f8 g4 af8 | bf2 bf,8 c4 df8 | ef8 ef4 ef8~ ef8 f8 g8 af8~ | af2 r8 bf,4 c8 |
  \break
  df2~ df8 ef4 f8 | \acciaccatura fs8 g2~ g4. ef8 | c8 c4.~ c2 | r2 c8 df8 ef8 c8 |
  \break
  f2 f8 g8 af8 bf8~ | bf2 bf,8 c8 df8 ef8~ | ef8 ef4 ef8~ ef8 f8 g8 af8~ | af2 r8 bf,4 c8 |
  \break
  df2~ df8 ef4 f8 | \acciaccatura fs8 g2~ g4. e8 | g,4. g8~ g2~ | g2. r4 |
  \break
  r4 r8 a8 b8 c4 cs8~ | cs8 d4.~ d8 c4 b8 | g'2. \acciaccatura { ef16 c16 } b8 c8~ | c2~ c8 d4 e8 |
  \break
  f2. a,8 b8~ | b2~ b8 c4 d8 | c1~ | c4 r4 c8 df8 ef8 c8 |
  \break
  f2~ f8 g4 af8 | bf2 bf,8 c8 df8 ef8~ | ef8 ef4 ef8 r8 f8 g8 af8~ | af2 r8 bf,4 c8 |
  \break
  df2~ df8 ef4 f8 | g2 bf8 g8 ef8 df8 | c8 ef4.~ ef2 | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
