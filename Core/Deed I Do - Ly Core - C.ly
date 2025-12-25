%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "'Deed I Do"
  subtitle = \instrument
  poet = ""
  composer = "Walter Hirsch and Fred Rose"
  copyright = \markup \small { \now " " "© 1926 Ted Browne Music Co. Inc." }
}

refrainLyrics = \lyricmode {
  Do I __ want you __ Oh my, __ do I? __
  Hon -- ey, __ 'deed I do! __

  Do I __ need you __ Oh my, __ do I? __
  Hon -- ey, __ 'deed I do! __
  
  I'm glad that I'm the one who found you,
  That's why I'm al -- ways hang -- in' 'round you.

  Do I __ love you __ Oh my, __ do I? __
  Hon -- ey, __ 'deed I do! __
}

refrainChords = \chordmode {
  c1:6 g2:m7 c2:7 f1:6 bf1:9
  c2:maj7 a2:7 d2:7 g2:7 c2:6 a2:m7 d2:m7 g2:7

  c1:6 g2:m7 c2:7 f1:6 bf1:9
  c2:maj7 a2:7 d2:7 g2:7 c1:6 g2:m7 c2:7
  
  f1:maj7 f1:maj7 b1:m7 e1:7
  a1:7 a1:7 d1:7 d2:m7 g2:7

  c1:6 g2:m7 c2:7 f1:6 bf1:9
  c2:maj7 a2:7 d2:7 g2:7 c1:6
  \chordOpenParen{ d2:m7 }
  \chordCloseParen{ g2:7 }
}

refrainKey = c

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Lena Horne 1948]" 4 = 125

  \xTextMark \markup{ \bold \box "A1" }
  
  a8 c4.~ c2 | a8 g4.~ g2 | e8 d4.~ d2 | e8 d4.~ d2 |
  \break
  e8 g4.~ g2 | c,2 d2 | c1~ | c2 r2 |
  
  \sect "A2"
  
  a'8 c4.~ c2 | a8 g4.~ g2 | e8 d4.~ d2 | e8 d4.~ d2 |
  \break
  e8 g4.~ g2 | c,2 d2 | c1~ | c2 r2 |
  
  \sect "B"
  
  r4 a'4 b4 c4 | d4 c4 a4 f4 | e1 | b'1 |
  \break
  r4 e,4 g4 a4 | b4 a4 g4 e4 | d1 | g1 |
  
  \sect "A3"

  a8 c4.~ c2 | a8 g4.~ g2 | e8 d4.~ d2 | e8 d4.~ d2 |
  \break
  e8 g4.~ g2 | c,2 d2 | c1~ | c2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
