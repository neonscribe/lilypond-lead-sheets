%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Exactly Like You"
  subtitle = \instrument
  poet = "Dorothy Fields"
  composer = "Jimmy McHugh"
  copyright = "© 1930 Shapiro, Bernstein & Co. Inc."
}

refrainLyrics = \lyricmode {
  I know why I've wait -- ed, __
  Know why I've been blue, __
  Prayed each night for some -- one __
  ex -- act -- ly like you. __
  
  Why should we spend mo -- ney __
  on a show or two? __
  No one does those love scenes __
  ex -- act -- ly like you. __
  
  You make me feel so grand, __
  I want to hand the world to you, __
  You seem to un -- der -- stand __
  each fool -- ish lit -- tle scheme I'm schem -- ing,
  dream I'm dream -- ing.
  
  Now I know why moth -- er __
  taught me to be true, __
  She meant me for some -- one ex -- act -- ly like you. __
}

refrainNRTwoChords = \chordmode {
  bf1 bf1 c1:7 c1:7
  f1:7 f1:7 bf1 c2:m7 f2:7

  bf1 bf1 c1:7 c1:7
  f1:7 f1:7 bf1 bf2 bf2:7
  
  ef1 ef1:m bf1 bf1
  c1:m f1:7 bf2 g2:7 c2:m7 f2:7

  bf1 bf1 c1:7 c1:7
  f1:7 f1:7 bf1 bf1
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Fast Swing" 4 = 175

  \xTextMark \markup{ \bold \box "A1" }
  
  d'4 a4 c4 g4 | bf8 bf8~ bf2. | d4 a4 c4 g8 bf8~ | bf1 |
  \break
  a4 f4 g4 d4 | f8 f8~ f2 r8 f8 | bf8 bf,8 bf4 bf2~ | bf2 r2 |
  
  \sect "A2"
  
  d'4 a4 c4 g4 | bf8 bf8~ bf2. | d4 a4 c4 g8 bf8~ | bf1 |
  \break
  a4 f4 g4 d4 | f8 f8~ f2 r8 f8 | bf8 bf,8 bf4 bf2~ | bf4 c4 d4 f4 |
  
  \sect "B"
  
  c'4 c4 c2~ | c4 b4 d8 c8 bf8 a8 | bf4 bf4 bf2~ | bf4 g4 a4 bf4 |
  \break
  ef4 ef4 ef2~ | ef4 d4 f8 ef8 d8 c8 | d4 d4 a8 a8~ a4 | c4 c4 g8 f8~ f4 |
  
  \sect "A3"

  d'4 a4 c4 g4 | bf8 bf8~ bf2. | d4 a4 c4 g8 bf8~ | bf1 |
  \break
  a4 f4 g4 d4 | f8 f8~ f2 r8 f8 | bf8 bf,8 bf4 bf2~ | bf2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
