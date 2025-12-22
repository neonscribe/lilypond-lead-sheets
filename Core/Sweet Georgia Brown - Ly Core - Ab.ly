%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Sweet Georgia Brown"
  subtitle = \instrument
  poet = ""
  composer = "Ben Bernie, Maceo Pinkard, Kenneth Casey"
  copyright = \markup \small { \now " " "© 1925 Warner Bros., Inc." }
}

refrainLyrics = \lyricmode {
  No gal made has got a shade on Sweet Geor -- gia Brown. __
  Two left feet but oh so neat is Sweet Geor -- gia Brown. __
  They all sigh and wan -- na die for Sweet Geor -- gia Brown, __
  I'll tell you just why, __ you know, I don't lie, not much!
  It's been said she knocks 'em dead when she lands in town. __
  Since she came why it's a shame how she cools 'em down. __
  Fel -- lers __ she can't get are fel -- lers __ she ain't met. __
  Geor -- gia claimed her, Geor -- gia named her Seet Geor -- gia Brown. __
}

refrainSRBChords = \chordmode {
  f1:7 f1:7 f1:7 f2:7 \chordInsideParens{ b2:7.5- }
  bf1:7 bf1:7 bf1:7 bf2:7 \chordInsideParens{ e2:7.5- }
  
  ef1:7 ef1:7 ef1:7 ef2:7 
  \chordOpenParen{ bf4:m7 }
  \chordCloseParen{ ef4:9 }
  af1:6 bf2:m7 ef2:7 af1:6 g2:m7.5- c2:7.9-

  f1:7 f1:7 f1:7 f2:7 \chordInsideParens{ b2:7.5- }
  bf1:7 bf1:7 bf1:7 bf2:7 c2:7
  
  f1:m6 g2:m7.5- c2:7 f1:m7 g2:m7.5- c2:7
  af2:7 g2:7 gf2:7 f2:7 bf2:7 ef2:7 af2:6
  \chordInsideParens{ c2:7 }
}

refrainSimpleChords = \chordmode {
  f1:7 f1:7 f1:7 f1:7
  bf1:7 bf1:7 bf1:7 bf1:7
  ef1:7 ef1:7 ef1:7 ef1:7
  af1:maj7 ef1:5+ af1:maj7 g2:7 c2:7

  f1:7 f1:7 f1:7 f1:7
  bf1:7 bf1:7 bf1:7 c1:7
  f1:m c1:7 f1:m c1:7
  af2:7 g2:7 gf2:7 f2:7 bf2:7 ef2:7 af1:6
}

refrainChords = \refrainSimpleChords

refrainKey = af

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Up [Brother Bones 1949]" 4 = 166

  \xTextMark \markup{ \bold \box "A1" }
  
  f4 g4 a4 f4 | c'8 a4 d8~ d4 c4 | f2 c8 a4 f8~ | f2. r4 |
  \break
  f4 g4 af4 f4 | c'8 af4 d8~ d4 c4 | f2 d8 c4 bf8~ | bf2. r4 |
  
  \sect "B"
  
  ef,4 f4 g4 ef4 | bf'8 g4 c8~ c4 bf4 | ef2 bf8 g4 ef8~ | ef4 ef8 f8~ f8 ef8 f4 |
  \break
  c'1~ | c4 ef,8 f8~ f8 ef8 f4 | c'2. c4 | bf2. r4 |
  
  \sect "A2"
  
  f4 g4 a4 f4 | c'8 a4 d8~ d4 c4 | f2 c8 a4 f8~ | f2. r4 |
  \break
  f4 g4 af4 f4 | c'8 af4 d8~ d4 c4 | f2 d8 c4 bf8~ | bf2. r4 |
  
  \sect "C"
  
  c4. c8~ c2 | bf8 g4 c8~ c4 c4 | c4. c8~ c2 | bf8 g4 c8~ c4 r4 |
  \break
  ef,8 f4 af8~ af8 c4. | ef8 e4 f8~ f8 c4. | bf2 ef8 c4 af8~ | af2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
