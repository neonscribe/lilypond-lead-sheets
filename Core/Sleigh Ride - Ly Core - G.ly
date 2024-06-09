%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Sleigh Ride"
  subtitle = \instrument
  poet = "Mitchell Parish"
  composer = "Leroy Anderson"
  copyright = "© 1948 Woodbury Music Company"
}

refrainLyrics = \lyricmode {
  Just hear those sleigh bells jin -- gle -- ing,
  ring --- ting -- tin -- gle -- ing, too.
  Come on, it's love -- ly weath --- er for a
  sleigh ride to -- geth -- er with you.
}

refrainChords = \chordmode {
  s2.
  
  g2:maj7 e2:m7 a2:m7 d4:7 d4:7/c b2:m7 e2:7.9- a2:m7 d2:7 d2:7.9-
  g2:maj7 e2:m7 a2:m7 d2:7 g2:6 e2:m7 a2:m7 af2:9.11-

  g2:maj7 e2:m7 a2:m7 d4:7 d4:7/c b2:m7 e2:7.9- a2:m7 d2:7 d2:7.9-
  g2:maj7 e2:m7 a2:m7 d2:7 g4:6 c4/g g2 c4/g g2.
  
  cs1:m7 cs2:m7/fs fs2:7 b1:maj7 b1:maj7
  cs1:m7 cs2:m7/fs fs2:7 b2:maj9 b2:6 b2:maj9 b2:6
  b1:m7 b2:m7/e e2:7 a1:maj7 a1:maj7
  a1:m7 a1:m7 d2:7 a2:m7/d d1:7

  g2:maj7 e2:m7 a2:m7 d4:7 d4:7/c b2:m7 e2:7.9- a2:m7 d2:7 d2:7.9-
  g2:maj7 e2:m7 a2:m7 d2:7 g2:6 e2:m7 a2:m7 af2:9.11-

  g2:maj7 e2:m7 a2:m7 d4:7 d4:7/c b2:m7 e2:7.9- a2:m7 d2:7 d2:7.9-
  g2:maj7 e2:m7 a2:m7 d2:7 g4:6 c4/g g2 c4/g g2.
  
}

refrainKey = g

refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Fast Swing"

  \textMark \markup{ \bold \box "A1" }
  
  \bar "||"
  \break

  \textMark \markup{ \bold \box "B" }
  
  \bar "||"
  \break

  \textMark \markup{ \bold \box "A2" }
  
  \bar "||"
  \break

  \textMark \markup{ \bold \box "C" }

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
