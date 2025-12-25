%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Airegin"
  subtitle = \instrument
  poet = ""
  composer = "Sonny Rollins"
  copyright = \markup \small { \now " " "© 1954 Prestige Music" }
}

refrainChords = \chordmode {
  f1:m7 c1:7.9+ f1:m7 f1:7
  bf1:m7 f1:7.9+ bf1:m7 bf1:m7
  
  df1:maj7 d2:m7 g2:7 c1:maj7 cs2:m7 fs2:7
  b1:maj7 c2:m7 f2:7 bf1:maj7 bf1:maj7
  bf1:m7 ef1:7 af1:maj7 g2:m7.5- c2:7.9-
  
  f1:m7 c1:7.9+ f1:m7 f1:7
  bf1:m7 f1:7.9+ bf1:m7 bf1:m7
  
  df1:maj7 d2:m7 g2:7 c1:m7.5- f1:7 
  bf1:m7 ef1:sus7 af1
  \chordOpenParen{ g2:m7.5- }
  \chordCloseParen{ c2:7.9- }
}

refrainKey = f

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium-Up [Miles Davis 1954]" 4 = 230

  \xTextMark \markup{ \bold \box "A1" }
  
  r4 \tuplet 3/2 { f8 g8 f8 } c8 f8 af8 c8 | gf4 ef'2 df4 | r1 | r8 c,8 f4 g4 a4 |
  \break
  r4 \tuplet 3/2 { bf8 c8 bf8 } f8 bf8 df8 f8 | b,4 af'2 gf4 | r1 | r8 f,8 bf4 c4 df4 |
  
  \sect "B"
  
  r4 f2. | g4 g2 f4 | e1 | fs4 fs2 e4 |
  \break
  ds1 | f4 f2 ef4 | d1~ | d2. r4 |
  \break
  df1 | ef4 ef2 df4 | c1~ | c2. r4 |
  
  \sect "A2"
  
  r4 \tuplet 3/2 { f,8 g8 f8 } c8 f8 af8 c8 | gf4 ef'2 df4 | r1 | r8 c,8 f4 g4 a4 |
  \break
  r4 \tuplet 3/2 { bf8 c8 bf8 } f8 bf8 df8 f8 | b,4 af'2 gf4 | r1 | r8 f,8 bf4 c4 df4 |
  
  \sect "C"

  r4 f2. | g4 g2 f8 ef8 | r4 r8 c8~ c8 gf'4 ef8 | f4 f4 bf,4 b4 |
  \break
  c4 r8 af8 r8 f8 bf4 | r8  af8 r8 f8 e4. d8 | ef4 af4 r2 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
