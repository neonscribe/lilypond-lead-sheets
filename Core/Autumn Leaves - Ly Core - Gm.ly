%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "Autumn Leaves"
  subtitle = \instrument
  poet = "Johnny Mercer"
  composer = "Joseph Kosma"
  copyright = \markup \small { \now " " "© 1947 T.B. Enoch et Cie." }
}

refrainLyrics = \lyricmode {
  The fall -- ing leaves __ drift by my win -- dow,
  The au -- tumn leaves __ of red and gold;
  I see your lips, __ the sum -- mer kiss -- es,
  The sun -- burned hands __ I used to hold.
  Since you went a -- way __ the days grow long, __
  And soon I'll hear __ old win -- ter's song,
  But I miss you most of all, my dar -- ling,
  When au -- tumn leaves start to fall.
}

refrainHLChords = \chordmode {
  s2.
  
  c1:m7 f1:7 bf1:maj7 ef1:maj7
  a1:m7.5- d1:7.9- g1:m g1:m

  c1:m7 f1:7 bf1:maj7 ef1:maj7
  a1:m7.5- d1:7.9- g1:m g4:m r2.
  
  a1:m7.5- d1:7.9- g1:m g1:m
  c1:m7 f1:7 bf1:maj7 ef1:maj7

  a1:m7.5- d1:7.9- g2:m7 c2:7 f2:m7 bf2:7
  a1:m7.5- d1:7.9- g1:m g1:m
}

refrainNRChords = \chordmode {
  s2.
  
  c1:m7 f1:7 bf1:maj7 ef1:maj7
  a1:m7.5- d1:7 g1:m g1:m

  c1:m7 f1:7 bf1:maj7 ef1:maj7
  a1:m7.5- d1:7 g1:m g4:m r2.
  
  a1:m7.5- d1:7 g1:m g1:m
  c1:m7 f1:7 bf1:maj7 ef1:maj7

  a1:m7.5- d1:7 g2:m7 c2:9 f2:m7 bf2:7
  ef1:maj7 a2:m7.5- d2:7.5+ g1:m \chordInsideParens{ g1:7 }
}

refrainChords = 
   $(if (and (defined? 'useAlternateChords) useAlternateChords)
     refrainNRChords
     refrainHLChords)

refrainKey = g

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
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium [Cannonball Adderley 1958]" 4 = 112
  
  \partial 2. g4 a4 bf4 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  ef1~ | ef4 f,4 g4 a4 | d2 d2~ | d4 ef,4 f4 g4 |
  \break
  c1~ | c4 d,4 e4 fs4 | bf1 | r4 g4 a4 bf4 |

  \sect "A2"
  
  ef1~ | ef4 f,4 g4 a4 | d2 d2~ | d4 ef,4 f4 g4 |
  \break
  c1~ | c4 a4 c4 bf4 | g1 | r2 fs4 g4 |
  
  \sect "B"
  
  a4 d,4 a'2~ | a4 a4 g4 a4 | bf1~ | bf4 bf4 a4 bf4 |
  \break
  c1~ | c4 f,4 f'4 ef4 | d1~ | d2 cs4 d4 |
  
  \sect "C"
  
  ef4 ef4 c4 c4 | a2. ef'4 | d2 d2~ | d2 g,2 |
  \break
  c2. bf4 | a2 bf4 d,4 | g1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
