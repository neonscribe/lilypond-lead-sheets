%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "In a Mellow Tone"
  subtitle = \instrument
  poet = "Milt Gabler"
  composer = "Duke Ellington"
  copyright = "© 1940 Famous Music Corporation"
}

refrainLyrics = \lyricmode {
In a mel -- low tone, __
Feel -- in' fan -- cy free. __
And I'm not a -- lone, __
I've got comp -- a -- ny. __
Ev -- 'ry -- thing's O. -- K. __
The live -- long day. __
With this mel -- low song __
I can't go wrong. __
In a mel -- low tone, __
That's the way to live.  __
If you mope and groan, __
some -- thing's got to give. __
So go __ your way __
and laugh __ and play. __
There's joy __ un -- known __
in a mel -- low tone. __
}

refrainChords = \chordmode {
  s2.
  
  bf1:7 ef1:7 af1:6 af1:6
  ef1:m7 af1:7 df1:maj7 df1:maj7

  df1:6 gf1:7 af1:6 f1:7
  bf1:7 bf1:7 ef1:7 ef2:7 f2:7

  bf1:7 ef1:7 af1:6 af1:6
  ef1:m7 af1:7 df1:maj7 df1:maj7

  df1:7 d1:dim7 af1:6/ef f1:7
  bf1:7 ef1:7 af2:6
  \chordOpenParen{ g2:7 }
  gf2:7
  \chordCloseParen{ f2:7 }
}

refrainKey = af

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 150

  \partial 2. g8 ef8 f8 g4 af8~ |
  \bar "$"

  \xTextMark \markup{ \bold \box "A1" }
  
  af1 | r4 g8 ef8 f8 g4 af8~ | af1 | r4 g8 ef8 f8 g4 af8~ |
  \break
  af1 | r4 bf8 f8 af8 bf4 c8~ | c1 | r4 bf8 f8 af8 bf4 f8~ |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  f1 | r4 af8 bf8~ bf4 af8 c8~ | c1 | r4 g8 ef8 f8 g4 af8~ |
  \break
  af1 | r4 af8 c8~ c4 af8 ef8~ | ef1 | r4 g8 ef8 f8 g4 af8~ |
  
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  af1 | r4 g8 ef8 f8 g4 af8~ | af1 | r4 g8 ef8 f8 g4 af8~ |
  \break
  af1 | r4 bf8 f8 af8 bf4 c8~ | c1 | r4 b8 f'8~ f4 b,8 f8~ |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "C" }
  
  f1 | r4 b8 f'8~ f4 b,8 f8~ | f1 | r4 b8 f'8~ f4 b,8 f8~ |
  \break
  f1 | r4 g8 ef8 f8 g4 af8~ | af1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
