%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Donna Lee"
  subtitle = \instrument
  poet = ""
  composer = "Charlie Parker"
  copyright = \markup \small { \now " " "© 1947 Atlantic Music Corp." }
}

refrainChords = \chordmode {
  af1:maj7 f1:7 bf1:7 bf1:7
  bf1:m7 ef1:7 af1:maj7 ef2:m7 d2:7
  
  df1:maj7 df2:m7 gf2:7 af1:maj7 f1:7.9-
  bf1:7 bf1:7 bf1:m7 ef1:7

  af1:maj7 f1:7 bf1:7 bf1:7
  g1:m7.5- c1:7.9- f1:m7 c1:7
  
  f1:m7 g2:m7.5- c2:7 f1:m bf2:7 b2:dim7
  c2:m7 f2:7 bf2:m7 ef2:7 af2:m7
  \chordOpenParen{ f2:7.9- }
  bf2:m7
  \chordCloseParen{ ef2:7 }
}

refrainKey = af

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Fast Swing [Charley Parker 1947]" 4 = 226

  \xTextMark \markup{ \bold \box "A1" }
  
  r2 \tuplet 3/2 { g'8 af8 g8 } f8 e8 | ef8 df8 c8 bf8 a8 c,8 ef8 f8 |
  \tuplet 3/2 { gf8 af8 gf8 } f8 ef8 d8 f8 af8 c8 | g8 f8 r4 r4 e8 d8 |
  \break
  ef8 a,8 bf8 df8 f8 af8 c8 ef8 | df8 f,8 af8 c8 b8 g16 e16 ef8 df8 |
  c8 ef8 g8 bf8 af4 ef8 f8 | gf8 bf8 df8 f8 e8 c8 r4 |
  
  \sect "B"
  
  ef2~ ef8 df8 c8 bf8 | ef8 df8 r4 gf8 ff8 ef8 df8 |
  c8 c8 df8 d8 ef8 df8 c8 bf8 | a8 c8 ef8 f8 \tuplet 3/2 { gf8 af8 gf8 } f8 ef8 |
  \break
  d8 c8 b8 a8 bf8 af8 c,8 ef8 | \tuplet 3/2 { g8 gf8 f8 } e4 r2 |
  ef'8 df8 f,8 af8 c8 bf8 f8 af8 | g8 bf8 df8 bf8 \tuplet 3/2 { e8 fs8 e8 } ef8 df8 |
  
  \sect "A2"
  
  c4 r4 \tuplet 3/2 { g'8 af8 g8 } f8 e8 | ef8 df8 c8 bf8 a8 c,8 ef8 f8 |
  \tuplet 3/2 { gf8 af8 gf8 } f8 ef8 d8 f8 af8 c8 | g8 f8 r4 r4 g8 f8 |
  \break
  e8 f8 g8 af8 bf8 af8 g8 f8 | \tuplet 3/2 { df'8 ef8 df8 } c8 bf8 \tuplet 3/2 { af8 bf8 af8 } g8 e8 |
  f4 r4 r2 | r2 r4 r8 b8 |
  
  \sect "C"
  
  c8 b8 c8 df8 d8 cs8 d8 ef8 | e8 ds8 e8 ds8 d8 df8 c8 bf8 |
  \tuplet 3/2 { af8 bf8 af8 } g8 af8 bf8 af8 g8 f8 | b,8 d8 f8 af8 b8 g'8 f8 e8 |
  \break
  ef8 df8 c8 bf8 a8 gf8 f8 ef8 | d8 f8 af8 c8 bf8 af8 g8 ef8 | af4 r4 r2 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
