%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Embraceable You"
  subtitle = \instrument
  poet = "Ira Gershwin"
  composer = "George Gershwin"
  copyright = "© 1930 New World Music Corp."
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  g1:6 bf1:dim7 a1:m7 d2:7 b4:m7.5- e4:7.9-
  a1:m7 c2:m6 f2:9 g2:maj7 a4:m7 bf4:dim7 g2:6 c4:7 b4:7
  
  e2:m e2:m7+ e2:m7 e2:m6 b2:m7 x2 x2:m7.5- x2
  fs2:m7 x2 x4 x4 ef2:7 x1:sus d2:7 af2:9.11+

  g1:6 bf1:dim7 a1:m7 d2:7 b4:m7.5- e4:7.9-
  a1:m7 c2:m6 f2:9 g1:maj7 d2:m7 g2:7.5+
  
  c1:maj7 fs2:m7.5- b2:7 e2:m e2:m/d cs2:m7.5- c2:m6
  b2:m7 e2:7.90 a2:m7.5- d2:7 g1:6
  \chordOpenParen{ a2:m7 }
  \chordCloseParen{ d2:7 }
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad" 4 = 120

  \mark \markup{ \box "A1" }
  
  r4 e4 fs4 g4 | r4 e4 fs4 g4 | a8 r8 r8 d,8 d4 d4~ | d1 |
  r4 a4 b4 c4 | r4 a4 b4 c4 | d8 r8 r8 g,8 g4 g4~ | g1 |
  
  \bar "||"
  \break

  \mark \markup{ \box "B" }
  
  b4 g4 a4 g4 | b4 g4 a4 g4 | b8 r8 r8 fs8
  
  \bar "||"
  \break

  \mark \markup{ \box "A2" }
  
  \bar "||"
  \break

  \mark \markup{ \box "C" }

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
