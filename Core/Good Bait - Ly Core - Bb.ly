%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Good Bait"
  subtitle = \instrument
  poet = ""
  composer = "Tadd Dameron/Count Basie"
  copyright = \markup \small { \now " " "© 1944 Bregman-Vocco-Conn Inc." }
}

refrainChords = \chordmode {
  s4
  
  bf2:6 g2:m7 c2:m7 f2:7.5+.9- d2:m7 g2:m7 c2:m7 f2:7
  bf2:6 bf2:7 ef2:maj7 af2:9 d4:m7 df4:m7 c4:m7 b4:7 bf2:6 f2:9.11+

  bf2:6 g2:m7 c2:m7 f2:7.5+.9- d2:m7 g2:m7 c2:m7 f2:7
  bf2:6 bf2:7 ef2:maj7 af2:9 d4:m7 df4:m7 c4:m7 b4:7 bf2:6 bf2:7.5-
  
  ef2:6 c2:m7 f2:m7 bf2:7.9-.5+ g2:m7 c2:m7 f2:m7 bf2:7
  bf2:m7 ef2:7 af2:maj7 df2:9 g4:m7 gf4:m7 f4:m7 e4:7 ef2:6 f2:13

  bf2:6 g2:m7 c2:m7 f2:7.5+.9- d2:m7 g2:m7 c2:m7 f2:7
  bf2:6 bf2:7 ef2:maj7 af2:9 d4:m7 df4:m7 c4:m7 b4:7 bf2:6 
  \chordInsideParens{ f2:9.11+ }
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Slow Swing [John Coltrane 1958]" 4 = 128
  
  \partial 4 \invisEighth f8 |
  \bar "||"

  \sectStart "A1"
  
  bf4 bf8 a8 bf2 | r8 a8 bf8 c8 df8 ef8 gf8 af8 | f4 f8 e8 f2 | r8 d8 c8 bf8 a8 c8 f8 ef8 |
  \break
  d4 \tuplet 3/2 { d16 ef16 d16 } cs8 d8 g8 f8 d8 | bf4 \tuplet 3/2 { bf16 c16 bf16 } a8 bf8 d8 f8 ef8 |
  d8 a8 af8 df8 c8 g8 fs8 b8 | bf4 r4 r4 r8 f8 |
  
  \sect "A2"

  bf4 bf8 a8 bf2 | r8 a8 bf8 c8 df8 ef8 gf8 af8 | f4 f8 e8 f2 | r8 d8 c8 bf8 a8 c8 f8 ef8 |
  \break
  d4 \tuplet 3/2 { d16 ef16 d16 } cs8 d8 g8 f8 d8 | bf4 \tuplet 3/2 { bf16 c16 bf16 } a8 bf8 d8 f8 ef8 |
  d8 a8 af8 df8 c8 g8 fs8 b8 | bf4 r4 r2 |
  
  \sect "B"
  
  ef,4 ef8 d8 ef2 | r8 d8 ef8 f8 gf8 af8 cf8 df8 | bf4 bf8 a8 bf2 | r8 g8 f8 ef8 d8 f8 bf8 af8 |
  \break
  g4 g16 af16 g16 fs16 g8 c8 bf8 g8 | ef4 ef16 f16 ef16 d16 ef8 g8 bf8 af8 | 
  g8 d8 df8 gf8 f8 c8 b8 e8 | ef4 r4 r4 r8 f8 |
  
  \sect "A3"

  bf4 bf8 a8 bf2 | r8 a8 bf8 c8 df8 ef8 gf8 af8 | f4 f8 e8 f2 | r8 d8 c8 bf8 a8 c8 f8 ef8 |
  \break
  d4 \tuplet 3/2 { d16 ef16 d16 } cs8 d8 g8 f8 d8 | bf4 \tuplet 3/2 { bf16 c16 bf16 } a8 bf8 d8 f8 ef8 |
  d8 a8 af8 df8 c8 g8 fs8 b8 | bf4 r4 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
