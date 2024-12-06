%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Joseph, Joseph (Yossel, Yossel, מיין יאסעל)"
  subtitle = \instrument
  poet = "Nellie Casman"
  composer = "Samuel Steinberg"
  copyright = "© 1923"
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  s2.
  
  b1:m b1:m b1:m b1:m
  b1:m b1:m e1:m e1:m
  
  fs1:7 fs1:7 fs1:7 fs1:7
  fs1:7 fs1:7 b1:m b1:m

  b1:m b1:m b1:m b1:m
  b1:m b1:m e1:m e1:m
  
  e1:m e1:m b1:m b1:m
  cs1:7 fs1:7 b1:m \chordInsideParens{ e1:7 }
}

refrainKey = b

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Up" 4 = 190

  \partial 2. fs4 b4 d4 |
  \bar "$"

  \xTextMark \markup{ \bold \box "A1" }
  
  fs2 g2 | fs4 fs4 e4 d4 | g4 fs2.~ | fs4 fs,4 b4 d4 |
  \break
  fs2 g2 | fs4 e4 g4 fs4 | e1~ | e4 fs,4 as4 cs4 |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  e2 fs2 | e4 e4 d4 cs4 | e4 e2.~ | e4 fs,4 as4 cs4 |
  \break
  e2 fs2 | e4 d4 fs4 e4 | d1~ | d4 fs,4 b4 d4 |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  fs2 g2 | fs4 fs4 e4 d4 | g4 fs2.~ | fs4 fs,4 b4 d4 |
  \break
  fs2 b2 | a4 fs4 b4 a4 | g1~ | g2. g4 |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "C" }
  
  b4 b4 b4 b4 | b2 a4 g4 | fs4 fs4 fs4 fs4 | fs2 e4 d4 |
  \break
  fs2 d2 | e4 e4 d4 cs4 | b1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
