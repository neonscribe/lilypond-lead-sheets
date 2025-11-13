%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Afternoon in Paris"
  subtitle = \instrument
  poet = ""
  composer = "John Lewis"
  copyright = \markup \small { \now " " "© 1949 MJQ Music" }
}

refrainChords = \chordmode {
  s4
  c1:maj7 c2:m7 f2:7 bf1:maj7 bf2:m7 ef2:7
  af1:maj7 d2:m7 g2:7.9-
  c2:maj7 a2:m7 d2:m7 g2:7

  c1:maj7 c2:m7 f2:7 bf1:maj7 bf2:m7 ef2:7
  af1:maj7 d2:m7 g2:7.9-
  c1:maj7 c2:maj7 a2:m7
  
  d1:m7 g1:7 c1:maj7 a1:m7
  d1:m7 g1:7 cs2:m7 fs2:7 d2:m7 g2:7

  c1:maj7 c2:m7 f2:7 bf1:maj7 bf2:m7 ef2:7
  af1:maj7 d2:m7 g2:7.9-
  c2:maj7
  \chordOpenParen{ a2:m7 }
  d2:m7
  \chordCloseParen{ g2:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [John Lewis & Sacha Distel 1956]" 4 = 134

  \partial 4 e'8 g8 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  r8 d4 c8 b8 c8 d8 e8 | ef8 g,8 bf8 d8 c4 d8 f8 |
  r8 c4 bf8 a8 bf8 c8 d8 | df8 f,8 af8 c8 bf4 c8 ef8 |
  \break
  r8 c4 af8 g8 bf8 af8 g8~ | g2~ g8 bf8 af8 g8~ | g1 | r2 r4 e'8 g8 |
  
  \sect "A2"
  
  r8 d4 c8 b8 c8 d8 e8 | ef8 g,8 bf8 d8 c4 d8 f8 |
  r8 c4 bf8 a8 bf8 c8 d8 | df8 f,8 af8 c8 bf4 c8 ef8 |
  \break
  r8 c4 af8 g8 bf8 af8 g8~ | g2~ g8 bf8 af8 g8~ | g1 | r2 a4 b8 c8~ |
  
  \sect "B"
  
  c2. d8 e8~ | e2. d8 c8~ | c2. e8 a,8~ | a2. b8 c8~ |
  \break
  c2. d8 e8~ | e2. d8 e8~ | e2~ e4. f8~ | f2. e8 g8 |
  
  \sect "A3"

  r8 d4 c8 b8 c8 d8 e8 | ef8 g,8 bf8 d8 c4 d8 f8 |
  r8 c4 bf8 a8 bf8 c8 d8 | df8 f,8 af8 c8 bf4 c8 ef8 |
  \break
  r8 c4 af8 g8 bf8 af8 g8~ | g2~ g8 bf8 af8 g8~ | g1~ | g1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
