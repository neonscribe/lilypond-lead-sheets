%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Cotton Tail"
  subtitle = \instrument
  poet = ""
  composer = "Duke Ellington"
  copyright = \markup \small "© 1940 Famous Music Corporation"
}

refrainChords = \chordmode {
  bf2:maj7 g2:m7 c2:m7 f2:7 d2:m7 g2:m7 c2:m7 f2:7
  bf1:7 ef2:6 e2:dim7 bf2/f g2:m7
  
  c2:m7 f2:7
  
  c4:m7 f4:7 bf2:6
  
  d1:7 d1:7 g1:7 g1:7 c1:7 c1:7 f1:7 f1:7

  bf2:maj7 g2:m7 c2:m7 f2:7 d2:m7 g2:m7 c2:m7 f2:7
  bf1:7 ef2:6 e2:dim7 bf2/f g2:m7 c4:m7 f4:7 bf2:6
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Up [Duke Ellington 1940]" 4 = 235

  \xTextMark \markup{ \bold \box "A1,A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  r8 c'4. g8 bf8 d4 | c4. c8 r2 | r8 c4 r8 c4. d8 |
  \break
  c8 bf8 g4-. f2 | r4 e'4~ e4.  g8 | f8 ef4 d8~ d8 c4 bf8~ |
  \break
  bf8 g8 gs8 a8~ a8 f8 fs8 g8~ |
  \alternative { \volta 1 {
  g8 ef8 e8 f8~ f4 r4 |
  } \volta 2 {
  g8\repeatTie gs8 a8 bf8~ bf4 r4 |
  } } }
  \sect "B"
  
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  
  \sect "A3"
  
  r8 c4. g8 bf8 d4 | c4. c8 r2 | r8 c4 r8 c4. d8 | c8 bf8 g4-. f2 |
  \break
  r4 e'4~ e4.  g8 | f8 ef4 d8~ d8 c4 bf8~ | bf8 g8 gs8 a8~ a8 f8 fs8 g8~ | g8 gs8 a8 bf8~ bf4 r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
