%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Inner Urge"
  subtitle = \instrument
  poet = ""
  composer = "Joe Henderson"
  copyright = \markup \small { \now " " "© 1964 Johen Music" }
}

refrainChords = \chordmode {
  fs1:m7.5- fs1:m7.5- fs1:m7.5- fs1:m7.5- 
  f1:maj7.5- f1:maj7.5- f1:maj7.5- f1:maj7.5- 
  e1:maj7.5- e1:maj7.5- e1:maj7.5- e1:maj7.5- 
  df1:maj7.5- df1:maj7.5- df1:maj7.5- df1:maj7.5- 
  e1:maj7 df1:maj7 d1:maj7 b1:maj7.11+
  c1:maj7 a1:maj7 bf1:7 g1:maj7
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Up [Joe Henderson 1964]" 4 = 220

  \sectStart "A"
  
  r4 r8 fs8 b8 c8 fs,8 b8 | c4. fs,8 b8 c8 r4 | r4 r8 fs,8 b8 c8 fs,8 b8 | c8 fs,8 b8 c8 r2 |
  \break
  r4 r8 f,8 b8 c8 f,8 b8 | c4. f,8 b8 c8 r4 | r4 r8 f,8 b8 c8 f,8 b8 | c8 f,8 b8 c8 r2 | 
  \break
  r4 r8 bf8 a8 ef8 a,8 d8 | ef4. a,8 cs8 d4. | r4 r8 bf'8 a8 ef8 a,8 d8 | ef8 a,8 cs8 d8~ d8 f4 g8~ | 
  \break
  g4. g8 f8 c8 g'8 c8 | df4. f8 g8 c4.~ | c4 r8 g,8 f8 c8 g'8 c8 | df8 f8 g8 c8 r8 bf4-. ds8~ |
  
  \sect "B"
  
  ds4. cs8 b8 gs8 fs8 e8 | ef8 d8 df8 ef8 c8 ef8 \tuplet 3/2 { f8 g8 b8 } | 
  cs4. b8 a4 fs8 as8~ | as8 f4. r4 fs4 |
  \break
  b4 \tuplet 3/2 { g8 e8 c8 } b4 \tuplet 5/4 { c16 d16 e16 g16 b16 } |
  gs4 \tuplet 3/2 { e8 cs8 gs8 } fs8 gs8 bf16 c16 d16 f16 |
  g4 \tuplet 3/2 { e8 c8 af8 } f8 g8 bf16 c16 d16 fs16 | a4._"FINE" fs8 a8 fs8 r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup{ "Play head twice before and twice after solos." }
