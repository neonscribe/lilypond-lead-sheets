%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Soul Eyes"
  subtitle = \instrument
  poet = ""
  composer = "Mal Waldron"
  copyright = \markup \small { \now " " "© 1957 Prestige Music" }
}

refrainChords = \chordmode {
  s4
  
  c1:m7 g1:7.9- c1:m7 f1:7
  f1:m7 bf1:7.9+ g1:7.5- c1:7.9-
  
  af1:maj7 a2:m7.5- d2:7.9- g1:maj7 df1:7.11+
  gf1:maj7 f2:m7 bf2:7 ef1:maj7 d2:m7.5- g2:7.9-
  
  c1:m7 g1:7.9- c1:m7 f1:7
  f1:m7 bf1:7.9+ g1:7.5- c1:7.9-

  af1:maj7 a2:m7.5- d2:7.9- g1:maj7 c1:7.9-
  f1:m7 bf1:7.9+ ef1:maj7
  \chordOpenParen{ d2:m7.5- }
  \chordCloseParen{ g2:7.9- }
}

refrainKey = ef

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
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad [John Coltrane 1962]" 4 = 72

  \partial 4 g4 |
  \bar "||"

  \sectStart "A1"
  
  d2. ef4 | b2~ b8 c8 d8 ef8 | f4 f2 g4 | d2~ d8 ef8 f8 g8 |
  \break
  bf1 | df2~ df4. bf16 af16 | bf2~ bf4. bf16 ef16 | df2. c4 |

  \sect "B"
  
  ef2. ef4 | ef2~ ef8 d4 c16 d16 | b1~ | b2. bf4 |
  \break
  df2~ df8 bf4 af16 gf16 | bf2. bf4 | g2 bf2~ | bf2~ bf8 af8 ef8 b8 |
  
  \sect "A2"

  d2. ef4 | b2~ b8 c8 d8 ef8 | f4 f2 g4 | d2~ d8 ef8 f8 g8 |
  \break
  bf1 | df2~ df4. bf16 af16 | bf2~ bf4. bf16 ef16 | df2. c4 |

  \sect "C"

  ef2. ef4 | ef2~ ef8 d4 c16 d16 | bf1~ | bf2. g4 |
  \break
  ef2. bf'4 | df2~ df4. bf16 af16 | bf1~ | bf2. r4 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
