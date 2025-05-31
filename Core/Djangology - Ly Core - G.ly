%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Djangology"
  subtitle = \instrument
  poet = ""
  composer = "Django Reinhardt"
  copyright = \markup \small "© 1935 Publications Francis Day S.A."
}

refrainChords = \chordmode {
  a1/cs c1:m6 g1/b bf1:dim7
  a1:m7 af1:7 g2 d2:7 g1

  a1:7 d1:7 g1 bf1:dim7
  a1:m7 d1:7 g1 g1

  a1:7 d1:7 g1 bf1:dim7
  a1:m7 d1:7 g1 g1
  
  af2 ef2:7 af1 a2 e2:7 a1

  a1:7 d1:7 g1 bf1:dim7
  a1:m7 d1:7 g1 g1

  a1/cs c1:m6 g1/b bf1:dim7
  a1:m7 af1:7 g4
}

refrainKey = g

refrainMelody = \relative f'' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef

  \xTextMark \markup{ \bold \box "Intro" }
  \tempo \markup { "Charleston" \rhythm { 4. 8~ 2 } } 4 = 172
  
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |

  \sect "A1"
  \tempo "Easy Swing" 4 = 172
  
  cs8 e8 g8 b8 r8 b4 r8 | c,8 ef8 f8 b8~ b4. r8 | b,8 d8 fs8 a8 r8 a4 r8 | bf,8 df8 e8 a8~ a4 g4 |
  \break
  c,4 e2 c4 | b4 d2 b4 | fs4. e8~ e2 | r1 |
  
  \sect "A2"
  
  cs'8 e8 g8 b8 r8 b4 r8 | c,8 ef8 f8 b8~ b4. r8 | b,8 d8 fs8 a8 r8 a4 r8 | bf,8 df8 e8 a8~ a4 g4 |
  \break
  c,4 e2 c4 | b4 d2 b4 | fs4. e8~ e2 | r1 |
  
  \sect "B"
  
  af8 bf8 c8 df8 ef4 ef8 ef8~ | ef2 r2 | a,8 b8 cs8 d8 e4 e8 e8~ | e2 r2 |
  
  \sect "A3"

  cs8 e8 g8 b8 r8 b4 r8 | c,8 ef8 f8 b8~ b4. r8 | b,8 d8 fs8 a8 r8 a4 r8 | bf,8 df8 e8 a8~ a4 g4 |
  \break
  c,4 e2 c4 | b4 d2 b4 \textToCoda | fs4. e8~ e2 | r1 |

  \bar "||-|."
  \textCodaBreak

  \tempo \markup { "Charleston" \rhythm { 4. 8~ 2 } } 4 = 172
  
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \partial 4 \rsq\fermata |
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
