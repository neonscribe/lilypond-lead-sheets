%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Topsy"
  subtitle = \instrument
  poet = ""
  composer = "Edgar Battle/Eddie Durham"
  copyright = \markup \small { \now " " "© 1938 Vanessa Music Corp." }
}

refrainChords = \chordmode {
  d1:m bf2:7 a2:7 d1:m bf2:7 a2:7 
  d1:m bf2:7 a2:7 d1:m bf2:7 a2:7 

  g1:m ef2:7 d2:7 g1:m g1:m
  d1:m bf2:7 a2:7 d1:m d1:m
  
  d1:7 d1:7 g1:7 g1:7
  c1:7 c1:7 f1:7 bf2:7 a2:7

  d1:m bf2:7 a2:7 d1:m bf2:7 a2:7 
  d1:m bf2:7 a2:7 d1:m d1:m
}

refrainKey = d

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium-Up [Count Basie 1937]" 4 = 200

  \xTextMark \markup{ \bold \box "A1" }
  
  r8 d8 e8 f8 g4 f4 | af4 f4 g4 f8 d8~ | d1 | r1 |
  \break
  r8 d8 e8 f8 g4 f4 | af4. f8 g8 f4 d8~ | d1~ | d1 |
  
  \sect "A2"
  
  r8 g8 a8 bf8 c4 bf4 | df4 bf4 c4 bf8 g8~ g8 d4.~ d2~ | d1 |
  \break
  r8 d8 e8 f8 g4 f4 | af2 g4 f8 d8~ | d1 | r2 r8 b8 d8 e8 |
  
  \sect "B"
  
  a1~ | a2 r8 b,8 d8 e8 | a1~ | a2 r8 b,8 d8 e8 |
  \break
  a1~ | a2 r8 b,8 d8 e8 | a2. r8 d,8 | f8 d4 e8~ e2 |
  
  \sect "A3"

  r8 d8 e8 f8 g4 f4 | af4 f4 g4 f8 d8~ | d8 a4.~ a2 | a1 |
  \break
  r8 d8 e8 f8 g4 f4 | af4. f8 g8 f4 d8~ | d1~ | d1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
