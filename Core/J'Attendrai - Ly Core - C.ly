%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "J'Attendrai"
  subtitle = \instrument
  poet = "Louis Poterat, Anna Sosenko"
  composer = "Dino Olivieri"
  copyright = "© 1938 P. Leonardi, Milano, Italy"
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  s2
  
  c1 c1 c1 b1:7
  c1 cs1:dim7 d1:m7 a1:7
  d1:m d1:m d1:m d1:m
  g1:7 g1:7 c2 cs2:dim7 d2:m7 g2:7
  
  c1:7 c1:7 f1 f1:m
  c1 c2/e ef2:dim7 d1:m7 g1:7
  c2
  \chordOpenParen{ cs2:dim7 }
  d2:m7
  \chordCloseParen{ g2:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 160

  \partial 2 g4 b4 |
  \bar "||"

  \mark \markup{ \box "A" }
  
  c4-. r8 c8~ c2 | r2 d2 | e2 d4 c4 | b2 a4 g4 |
  \break
  a8 a8 a4-. a2 | r2 g4 b4 | a1 | r2 g4 a4 |
  \break
  d1~ | d2 c4 d4 | c2 b4 c4 | b2 a4 g4 |
  \break
  a8 a8 a4-. a2 | r2 g4 b4 | a1 | r2 c4 d4 |

  \bar "||"
  \break

  \mark \markup{ \box "B" }
  
  e1~ | e2 d4 c4 | e2 d4 c4 | e2 d4 c4 |
  \break
  g8 g8 g4-. g2~ | g2 g4 b4 | a2 g4 b4 | a2 e'4 g,4 |
  \break
  c2 r2 | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
