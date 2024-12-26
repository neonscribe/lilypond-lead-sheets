%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Swing 42"
  subtitle = \instrument
  poet = ""
  composer = "Django Reinhardt"
  copyright = "© 1941 Publications Francis Day S.A."
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  c2 a2:m7 d2:m7 g2:7 e2:m7 a2:m7 d2:m7 g2:7
  g2:m6 a2:7 d2:m7 g2:7 c2 a2:m7 d2:m7 g2:7

  c2 a2:m7 d2:m7 g2:7 e2:m7 a2:m7 d2:m7 g2:7
  g2:m6 a2:7 d2:m7 g2:7 c1 fs2:m7 b2:7
  
  e2 cs2:m7 fs2:m7 b2:7 e2 cs2:m7 fs2:m7 b2:7 
  e2 cs2:m7 fs2:m7 b2:7  e1 d2:m7 g2:7

  c2 a2:m7 d2:m7 g2:7 e2:m7 a2:m7 d2:m7 g2:7
  g2:m6 a2:7 d2:m7 g2:7 c2
  \chordOpenParen{  cs2:dim7 }
  d2:m7
  \chordCloseParen{ g2:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Swing" 4 = 160

  \xTextMark \markup{ \bold \box "A1" }
  
  g4 r4 r4 r8 g8 | a8 b8 c8 d8 e4-. f8 g8~ |
  g2 r4 gs8 a8 | r8 f8 d8 c8 b8 af'4. |
  \break
  g2 r8 fs8 g8 gs8 | a8 f8 d8 a8 e'4-. g,8 c8 |
  r8 c8~ c2. | r8 b8 c8 d8 c8 b8 a8 af8 |
  
  \sect "A2"
  
  g4 r4 r4 r8 g8 | a8 b8 c8 d8 e4-. f8 g8~ |
  g2 r4 gs8 a8 | r8 f8 d8 c8 b8 af'4. |
  \break
  g2 r8 fs8 g8 gs8 | a8 f8 d8 a8 e'4-. g,8 c8~ | c1 | r1 |
  
  \sect "B"
  
  gs8 a8 b8 cs8 r8 cs4. | a8 b8 cs8 ds8~ ds4 r4 |
  gs,8 a8 b8 cs8 r8 cs4. | a8 b8 cs8 ds8~ ds4 r4 |
  \break
  gs,8 a8 b8 cs8 r8 cs4. | a8 b8 cs8 ds8~ ds4 r4 |
  e8 e8 r8 e8 a4-. af8 g8~ | g1 |
  
  \sect "A3"

  g,4 r4 r4 r8 g8 | a8 b8 c8 d8 e4-. f8 g8~ |
  g2 r4 gs8 a8 | r8 f8 d8 c8 b8 af'4. |
  \break
  g2 r8 fs8 g8 gs8 | a8 f8 d8 a8 e'4-. g,8 c8~ | c2 r2 | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
