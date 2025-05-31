%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Line for Lyons"
  subtitle = \instrument
  poet = ""
  composer = "Gerry Mulligan"
  copyright = \markup \small "© 1954 Criterion Music Corp."
}

refrainChords = \chordmode { 
  g2:6 g2:7 c2:m7 f2:7 b2:m7 e2:7 a2:m7 d2:7
  g2:maj7 e2:7 a2:m7 d2:7 g2:6 e2:7 a2:m7 d2:7

  g2:6 g2:7 c2:m7 f2:7 b2:m7 e2:7 a2:m7 d2:7
  g2:maj7 e2:7 a2:m7 d2:7 g1:6 g1:7
  
  c1:maj7 cs2:m7.5- fs2:7.9- b1:m7 b2:m7 e2:7.9-
  a1:m7 a2:m7 d2:7.9- b2:m7 e2:7 a2:m7 d2:7

  g2:6 g2:7 c2:m7 f2:7 b2:m7 e2:7 a2:m7 d2:7
  g2:maj7 e2:7 a2:m7 d2:7 g2:6
  \chordOpenParen{ e2:m7 }
  a2:m7
  \chordCloseParen{ d2:7 }
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Swing [Gerry Mulligan 1952]" 4 = 165

  \sectStart "A1"
  
  g8 b8 d8 g8 f4 d8 ef8~ | ef2 r8 f8 ef8 d8 | r8 ef8 d8 d8 r8 e8 d8 df8 | c8 d8 c8 c8~ c2 |
  \break
  b8 c8 b8 d8~ d4 g,4 | a8 b8 a8 c8~ c4 fs,8 g8~ | g4. d'8~ d2~ | d2. r4 |
  
  \sect "A2"

  g,8 b8 d8 g8 f4 d8 ef8~ | ef2 r8 f8 ef8 d8 | r8 ef8 d8 d8 r8 e8 d8 df8 | c8 d8 c8 c8~ c2 |
  \break
  b8 c8 b8 d8~ d4 g,4 | a8 b8 a8 c8~ c4 fs,8 g8~ | g1 | r4 g8 a8 b8 c8 d8 ds8 |
  
  \sect "B"
  
  e1~ | \tuplet 3/2 { e4 ds4 e4 } g4 fs4 | d1~ | \tuplet 3/2 { d4 cs4 d4 } f4 e4 |
  \break
  c1 | r8 b8 c8 ef8~ ef4 d4 | g2 r8 d8 c8 a8~ | a2. r4 |

  \sect "A3"

  g8 b8 d8 g8 f4 d8 ef8~ | ef2 r8 f8 ef8 d8 | r8 ef8 d8 d8 r8 e8 d8 df8 | c8 d8 c8 c8~ c2 |
  \break
  b8 c8 b8 d8~ d4 g,4 | a8 b8 a8 c8~ c4 fs,8 g8~ | g1 | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
