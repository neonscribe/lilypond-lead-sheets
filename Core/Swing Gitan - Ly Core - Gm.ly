%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Swing Gitan"
  subtitle = \instrument
  poet = ""
  composer = "Angelo Debarre"
  copyright = "2002"
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  g1:m g1:m a1:7 a1:7
  a1:m7.5- d1:7 g1:m g1:m
  
  af1 af1 g1:m g1:m
  a1:7 a1:7 d1:7 d1:7

  g1:m g1:m a1:7 a1:7
  a1:m7.5- d1:7 g1:m g1:m
  
  af1 af1 g1:m g1:m
  a1:7 a2:m7.5- d2:7 g1:m
  \chordInsideParens{ d4:7 }
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Up Swing" 4 = 260

  \xTextMark \markup{ \bold \box "A1" }
  
  d'2 cs4 d4 | bf'2. d,4 | cs2 c4 cs4 | a'2. r4 |
  \break
  c,2 b4 c4 | a'2. c,4 | bf2 a4 bf4 | g'2. r4 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B1" }
  
  r8 af,4. c4 ef4 | f2. ef4 | ef4 d4 d4 cs4 | d2. r4 |
  \break
  cs2 e4 g4 | bf2 a4 g4 | g4 fs4 a4 d,4 | ef2. r4 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  d2 cs4 d4 | bf'2. d,4 | cs2 c4 cs4 | a'2. r4 |
  \break
  c,2 b4 c4 | a'2. c,4 | bf2 a4 bf4 | g'2. r4 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B2" }

  r8 af,4. c4 ef4 | f2. ef4 | ef4 ef4 d4 cs4 | d2. r4 |
  \break
  cs4 e4 g4 bf4 | a2 fs2 | g1 | r1 
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
