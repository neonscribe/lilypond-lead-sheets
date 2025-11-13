%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Down for Double"
  subtitle = \instrument
  poet = ""
  composer = "Freddie Green"
  copyright = \markup \small { \now " " "© 1941 Regent Music Corporation" }
}

refrainChords = \chordmode {
  s4
  
  bf2 g2:7 c2:7 f2:7 bf2 g2:7 c2:7 f2:7 
  bf2 g2:7 c2:7 f2:7 bf2 g2:7 c2:7 f2:7

  bf2 g2:7 c2:7 f2:7 bf2 g2:7 c2:7 f2:7 
  bf2 g2:7 c2:7 f2:7 bf2 c2:m7 cs2:dim7 bf2/d
  
  bf1:7 bf1:7 ef1:6 ef1:6 c1:7 c1:7 f1:7 f1:7

  bf2 g2:7 c2:7 f2:7 bf2 g2:7 c2:7 f2:7 
  bf2 g2:7 c2:7 f2:7 bf2 ef2 bf2
  \chordCloseParen{ f2:7 }
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Up Swing [Count Basie 1941]" 4 = 210

  \partial 4 \invisEighth cs'8 |
  \bar "||"

  \sectStart "A1"
  
  d8 f8 d8 bf8 g4-. f4-. | e8 d'8 r8 ef,8~ ef4 r8 d'8~ | d8 d4-. bf8 g4-. f4-. | e8 d'8 r8 ef,8~ ef4 r4 |
  \break
  r8 d'4-. bf8 g4-. f4-. | e8 d'8 r8 ef,8~ ef4 g4 | bf4. c8 d8 f4 g8~ | g2. r8 cs,8 |
  
  \sect "A2"
  
  d8 f8 d8 bf8 g4-. f4-. | e8 d'8 r8 ef,8~ ef4 r8 d'8~ | d8 d4-. bf8 g4-. f4-. | e8 d'8 r8 ef,8~ ef4 r4 |
  \break
  r8 d'4-. bf8 g4-. f4-. | e8 d'8 r8 ef,8~ ef4 g4 | bf4. c8~ c4. cs8~ | cs4. d8~ d2 |
  
  \sect "B"
  
  af8 bf8 d8 f8~ f2 | r8 bf,8 c8 d8 g4 f4 | f4 ef4 ef8 d4 d8~ | d8 c4. r2 |
  \break
  c8 d8 e8 g8~ g2 | r8 c,8 d8 e8 a4 g4 | g4 g4 g8 f4 d8~ | d4. df8~ df4 r8 cs8 |

  \sect "A3"

  d8 f8 d8 bf8 g4-. f4-. | e8 d'8 r8 ef,8~ ef4 r8 d'8~ | d8 d4-. bf8 g4-. f4-. | e8 d'8 r8 ef,8~ ef4 r4 |
  \break
  r8 d'4-. bf8 g4-. f4-. | e8 d'8 r8 ef,8~ ef4 g4 | bf4. g8 bf8 g4 bf8~ | bf2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
