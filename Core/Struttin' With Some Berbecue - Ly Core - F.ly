%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Struttin' With Some Berbecue"
  subtitle = \instrument
  poet = ""
  composer = "Lil Armstrong"
  copyright = \markup \small "© 1928 Universal Music Corp."
}

refrainChords = \chordmode {
  s2
  
  f1:maj7 f1:maj7 f1:6 f1:7 
  f1:maj7 f1:maj7 d1:7 d1:7

  g1:m7 c4:7 \chordSlash 2 cs4:dim7 d1:m7 d1:m7
  g1:7 g1:7 c1:7 c1:7
  
  f1:maj7 f1:maj7 f1:6 f1:7 
  c1:m7 f1:7 bf1:6 bf1:6
  
  bf1:6 bf1:m6 f1:maj7 d1:7
  g1:m7 c1:7 f2:6
  \chordOpenParen{ df2:7 }
  \chordCloseParen{ c1:7 }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Up [Louis Armstrong 1927]" 4 = 190

  \partial 2 e8 f8 a8 c8 |
  \bar "||"

  \sectStart "A1"
  
  e4 e4 e2~ | e2 d8 c8 a8 f8 | a1 | r2 e8 f8 a8 c8 |
  \break
  e4 e4 e2~ | e2 d8 c8 a8 c8 | a1 | r2 a8 bf8 c8 d8~ |
  
  \sect "B"
  
  d4. d8~ d2~ | d4 c8 a8 c8 a8 g8 f8~ | f1 | r2 e8 f8 a8 c8 |
  \break
  d2 g,8 f8 g8 a8 | d8 a4.~ a2 | a8 a8 c8 c8 a4 af8 g8~ | g4 r4 e8 f8 a8 c8 |
  
  \sect "A2"

  e4 e4 e2~ | e2 d8 c8 a8 f8 | a1 | r2 e8 f8 a8 c8 |
  \break
  d4. d8~ d2 | r8 f4 d8 c4 a8 g8~ | g1 | r4 r8 g8 g8 g8 a8 bf8 |
  
  \sect "C"

  c4 b8 bf8~ bf2 | r4 bf8 f'8~ f4. bf,8 | a4 c8 e8~ e2~ | e4 r8 d8 cs4 d4 |
  \break
  f4 d4 f8 d8 r8 f,8 | a8 c8 a4 c4 d8 f8~ | f1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
