%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "After You've Gone"
  subtitle = \instrument
  poet = "Henry Creamer"
  composer = "Turner Layton"
  copyright = \markup \small { \now " " "© 1918 Morley Music Company" }
}

refrainLyrics = \lyricmode {
  Af -- ter you've gone, __ and left me cry -- ing;
  Af -- ter you've gone, __ there's no de -- ny -- ing
  You'll feel blue, __ you'll feel sad. __
  You'll miss the dear -- est pal you've ev -- er had. __

  Some -- day when you grow lone -- ly,
  Your heart will break like mine and you'll want me on -- ly.
  Af -- ter you've gone, __ af -- ter you've gone a -- way. __
}

refrainLyricsTwo = \lyricmode {
  There'll come a time, __ now don't for -- get it.
  There'll come a time __ when you'll reg -- ret it.
}

refrainDFBChords = \chordmode {
  c1 c1 c1:m c1:m
  g1 g1 e1:7 e1:7

  a1:7 a1:7 d1:7 d1:7
  g4 r2. s1 s1 g1:7

  a1:m e1:7 a1:m c1:m6
  g1 b1:7 e1:m7 a1:7

  g1 e1:7 a1:m7 d1:7
  g1 g1 g1:7 g1:7
}

refrainHLChords = \chordmode {
  c1:maj7 c1:maj7 f1:7.5- f1:7.5- 
  g1:maj7 g1:maj7 b1:m7 e1:7 

  a1:7 a1:7 d1:7 d1:7
  g1:6 g1:6 g1:7 g1:7
  
  a1:m7 e1:7 a1:m7 f1:7.5-
  g1:maj7 b1:7/fs e2:m7 e2:m7/d cs1:dim7
  
  g1:maj7 e1:7 a1:m7 d1:7
  g1:6 g1:6
  \chordOpenParen{ g1:7 }
  \chordCloseParen{ g1:7 }
}

refrainChords = 
   $(if (and (defined? 'useDFBChords) useDFBChords)
     refrainDFBChords
     refrainHLChords)

refrainKey = g

refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Fast Swing [Benny Goodman Quintet 1935]" 2 = 135

  \sectStart "A1,A2"
  
  \bar ".|:"
  \repeat volta 2 {
  e4 g4 a4 b4~ | b1 | r4 a4 b4 a4 | b4 a2. |
  \break
  b,4 d4 e4 fs4~ | fs1 | r4 e4 fs4 e4 | fs4 e2. |

  \alternative { \volta 1 {

  \sect "B"
  

  e4 b'2 b4~ | b1 | e,4 a2 a4~ | a1 |
  \break
  r4 
  e4 e4 d4 | fs4 d4 e4 d4 | g4 b,2 d4~ | d1  |

} \volta 2 {

  \sectNoBar "C"
  
  c'1 | b1 | a4 ds,4 e4 b'4~ | b2 a2 |
  \break
  r4 as4 b4 g4 | a4 gs4 a4 fs4 | g4 as,4 b4 fs'4~ | fs2 e2 |

  \sect "D"

  d4 e4 g4 b4~ | b1 | r4 c,4 d4 e4 | a2 b2 |
  \break
  b4( g2.~ | g1~ | g1~ | g1) |
  } } }

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
