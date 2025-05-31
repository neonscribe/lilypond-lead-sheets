%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Come Sunday"
  subtitle = \instrument
  poet = ""
  composer = "Duke Ellington"
  copyright = \markup \small "© 1946 G. Schirmer, Inc."
}

refrainChords = \chordmode {
  f1:7 ef1:7 f4:7 \chordSlash 2 d4:7.5+ g1:7
  c1:m7 f1:7 bf2 ef2/bf bf2:dim7 bf2:6
  
  f1:7 ef1:7 f4:7 \chordSlash 2 d4:7.5+ g1:7
  c1:m7 f1:7 bf2 ef2/bf bf2:dim7 bf2:6
  
  d2:7 ef2:7 d1:7 g1:m7 c1:7
  f2:7 c2:m7 f2:7 af4:7 g4:7.5+ c1:7 f1:7.5+
  
  f1:7 ef1:7 f4:7 \chordSlash 2 d4:7.5+ g1:7
  c1:m7 f1:7 bf2 ef2/bf bf2:dim7 bf2:6  
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad [Duke Ellington 1946]" 4 = 65

  \xTextMark \markup{ \bold \box "A1" }
  
  d4 g4 f4 g4 | a2 g4 f4 | d4 f4 g4 bf4 | a1 |
  \break
  d4 c4 bf4 g4 | f4 d4 c4. g8 | bf1~ | bf1 |
  
  \sect "A2"
  
  d4 g4 f4 g4 | a2 g4 f4 | d4 f4 g4 bf4 | a1 |
  \break
  d4 c4 bf4 g4 | f4 d4 c4. g8 | bf1~ | bf1 |
  
  \sect "B"
  
  d'4 d4 ef4 a,4 | d4 c4 bf4 a4 | c4 bf4 a4 g4 | d1 |
  \break
  a'4 a4 bf4 g4 | a4 g4 f4 ef4 | d4 g4 a4 bf4 | cs,1 |

  \sect "A3"

  d4 g4 f4 g4 | a2 g4 f4 | d4 f4 g4 bf4 | a1 |
  \break
  d4 c4 bf4 g4 | f4 d4 c4. g8 | bf1~ | bf1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
