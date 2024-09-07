%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "River, Stay 'Way From My Door"
  subtitle = \instrument
  poet = "Mort Dixon"
  composer = "Harry Woods"
  copyright = "© 1931 Shapiro, Bernstein & Co., Inc., New York"
}

refrainLyrics = \lyricmode {
  You keep go -- in' your way,
  I'll keep go -- in' my way.
  Riv -- er, stay 'way from my door.
  
  I just got a cab -- in,
  You don't need my cab -- in.
  Riv -- er, stay 'way from my door.

  Don't come up an -- y high -- er,
  I'm so all a -- lone.
  Leave my bed and my fi -- re.
  That's all I own.
  
  I ain't break -- in' your heart,
  Don't start break -- in' my heart.
  Riv -- er, stay 'way from my door.
}

refrainChords = \chordmode {
  c2 d2:m7 c2/e c2:7 f2 fs2:dim7 c2 a2:7
  d1:7 af2:7 g2:7 c2 f2:7 c2 g2:7

  c2 d2:m7 c2/e c2:7 f2 fs2:dim7 c2 a2:7
  d1:7 af2:7 g2:7 c2 f2 c2 b2:7
  
  e1:m e1:m7+ e1:m7 a2:7 af2:maj7
  g2 e2:m a2:7 d2:7 g2 d2:7.5+ g2:7.9+ b2:dim7

  c2:6 d2:m7 c2 c2:7 f2 fs2:dim7 c2 a2:7
  d1:7 af2:7 g2:7 c2 f2 c2

  \chordInsideParens{ g2:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium"

  \xTextMark \markup{ \bold \box "A1" }
  
  c4 c4 c4 d4 | e4 g2. | c4 c4 c4 a4 | g4 e2. |
  e4 d2 c4 | ef2 ef4 d4 | c1~ | c4 r4 r2 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  c4 c4 c4 d4 | e4 g2. | c4 c4 c4 a4 | g4 e2. |
  e4 d2 c4 | ef2 ef4 d4 | c1~ | c4 r4 r2 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  b'4 b8 b8~ b8 e,8 g4 | b4 b2. | b4 b4 e,4 g4 | b1 |
  d4 d8 d8~ d8 g,8 b4 | d4 d2. | r4 d4 d4 d4 | g,1 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A3" }

  c,4 c4 c4 d4 | e4 g2. | c4 c4 c4 a4 | g4 e2. |
  e4 d2 c4 | ef2 ef4 d4 | c1~ | c2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
