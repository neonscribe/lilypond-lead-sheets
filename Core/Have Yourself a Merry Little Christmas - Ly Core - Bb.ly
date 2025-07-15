%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "Have Yourself a Merry Little Christmas"
  subtitle = \instrument
  poet = ""
  composer = "Hugh Martin and Ralph Blane"
  copyright = \markup \small "© 1943 Metro-Goldwyn-Mayer Inc."
}

refrainLyrics = \lyricmode {
Have your -- self a mer -- ry lit -- tle Christ -- mas, let your heart be light.
From now on our truo -- bles will be out of sight. __

Have your -- self a mer -- ry lit -- tle Christ -- mas, make the Yule -- tide gay.
From now on our truo -- bles will be miles a -- way. __

Here we are as in old -- en days, hap -- py gol -- den days of yore.
Faith -- ful friends who are dear to us, gath -- er near to us once more.

Through the years we all will be to -- geth -- er, if the fates al -- low.
Hang a shin -- ing star up -- on the high -- est bough, __
and have your -- self a mer -- ry lit -- tle Christ -- mas now. __
}

refrainChords = \chordmode {
  bf2 g2:m7 c2:m7 ef4/f f4:7 bf2 g2:m7 c2:m7 f2:7
  bf2 g2:m7 c2:m7 f2:7 d2:7 g2:7 c2:7 f2:7

  bf2 g2:m7 c2:m7 ef4/f f4:7 bf2 g2:m7 c2:m7 f2:7
  bf2 g2:m7 c2:m7 d2:7 g1:m f2:m7 bf2:7
  
  ef2:maj7 ef2:m7+ d2:m7 df2:dim7 c2.:m7 f4:7.5+ bf1:maj7
  e2:m7.5- a2:7 d2:m df2:dim7 f2/c g4:m7 c4:7 c2:m7 f2:7

  bf2 g2:m7 c2:m7 ef4/f f4:7 bf2 g2:m7 c2:m7 f2:7
  bf2 g2:m7 a2:m7.5- d2:7.9- g1:m bf1:7.5+
  ef2.:maj7 bf4/d c2:m7 c4:m7/f f4:7 bf1:6.9
  \chordOpenParen{ c2:m7 }
  \chordCloseParen{ f2:7 }
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad" 4 = 90

  \xTextMark \markup{ \bold \box "A1" }
  
  bf,4 d4 f4 bf4 | f8 ef8 d8 c8 bf4 c4 | bf4 d4 f4 bf4 | f2. r4 |
  \break
  d4 f4 bf4 d4 | c8 bf8 a8 g8 f4 ef4 | d1~ | d2. r4 |
  
  \sect "A2"
  
  bf4 d4 f4 bf4 | f8 ef8 d8 c8 bf4 c4 | bf4 d4 f4 bf4 | f2. r4 |
  \break
  d4 f4 bf4 d4 | c8 bf8 a8 g8 fs4 a4 | bf1~ | bf2. r4 |
  
  \sect "B"
  
  d4 d4 d4 c8 bf8 | a8 bf8 c2 bf8 a8 | g8 a8 bf2 a4 | a2. r4 |
  \break
  bf4 bf4 bf4 a8 g8 | f8 g8 a2 f8 g8 | a8 bf8 c2 c,4 | f2. r4 |
  
  \sect "A3"

  bf,4 d4 f4 bf4 | f8 ef8 d8 c8 bf4 c4 | bf4 d4 f4 bf4 | f2. r4 |
  \break
  d4 f4 bf4 d4 | ef8 d8 c8 bf8 a4 c4 | d1~ | d2 r4 d4 |
  \break
  d4 ef,4 g4 bf4 | d8 c8 bf8 a8 g4 a4 | bf1~ | bf2. r4 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
