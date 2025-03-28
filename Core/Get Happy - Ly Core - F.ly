%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "Get Happy"
  subtitle = \instrument
  poet = "Ted Koehler"
  composer = "Harold Arlen"
  copyright = \markup \small "© 1929 Warner Bros. Inc."
}

refrainLyrics = \lyricmode {
For -- get your trou -- bles and just get hap -- py, __ you bet -- ter chase all your cares a -- way. __
Sing Ha -- le -- lu -- jah, come on, get hap -- py, __ get read -- y for the judge -- ment day. __
The sun is shin -- in', come on, get hap -- py, __ the Lord is wait -- ing to take your hand. __
Shout Ha -- le -- lu -- jah, come on, get hap -- py, __ we're go -- ing to the prom -- ised land. __
We're head -- in' 'cross the Riv -- er, __ wash your sins 'way in the tide.
It's all so peace -- ful __ on the oth -- er side. __
For -- get your trou -- bles and just get hap -- py, __ you bet -- ter chase all your cares a -- way. __
Shout Ha -- le -- lu -- jah, come on, get hap -- py, __ get read -- y for the judge -- ment day. __
}

refrainChords = \chordmode {
  s2
  
  f2:maj7 g2:m7 a2:m7 g2:m7 f2:maj7 g2:m7 f2:6/a g2:m7
  f2:maj7 g2:m7 a2:m7 g2:m7 f2:6 c2:7 f2:6 f2:7
  
  bf2:maj7 c2:m7 d2:m7 c2:m7 bf2:maj7 c2:m7 bf2:6/d c2:m7 
  bf2:maj7 c2:m7 d2:m7 c2:m7 bf2:6 f2:7 bf2:6 c2:7
  
  f1:7 ef1:7 d1:7 c1:7
  f1:7 ef1:7 d1:7 c1:7

  f2:maj7 g2:m7 a2:m7 g2:m7 f2:maj7 g2:m7 f2:6/a g2:m7
  f2:maj7 g2:m7 a2:m7 g2:m7 f2:6 c2:7 f2:6
  \chordOpenParen{ g4:m7 }
  \chordCloseParen{ c4:7 }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Up [Judy Garland 1950]" 4 = 170

  \partial 2 \invisEighth c8 f8 a8 |

  \sectNoBreak "A1"
  
  c8 c4 c8 bf4 a8 c8~ | c8 c4.~ c8 c,8 f8 a8 | c8 c4 c8 bf4 a8 f8~ | f2~ f8 c8 f8 a8 |
  c8 c4 c8 bf4 a8 c8~ | c8 c4.~ c8 f4 f8~ | f8 a,8 bf8 b8 c4 a8 f8~ | f2~ f8 f8 bf8 d8 |
  
  \sect "A2"
  
  f8 f4 f8 ef4 d8 f8~ | f8 f4.~ f8 f,8 bf8 d8 | f8 f4 f8 ef4 d8 bf8~ | bf2~ bf8 f8 bf8 d8 |
  f8 f4 f8 ef4 d8 f8~ | f8 f4.~ f8 a4 a8~ | a8 d,8 ef8 e8 f4 d8 bf8~ | bf2. c4 |
  
  \sect "B"
  
  f4. c8~ c8 c4 c8 | ef4. bf8~ bf8 bf4 bf8 | d4. a8~ a8 a4 a8 | c2. c4 |
  f2 c2 | ef4. bf8~ bf2 | d4 d4 a8 a4 c8~ | c2~ c8 c,8 f8 a8 |

  \sect "A3"

  c8 c4 c8 bf4 a8 c8~ | c8 c4.~ c8 c,8 f8 a8 | c8 c4 c8 bf4 a8 f8~ | f2~ f8 c8 f8 a8 |
  c8 c4 c8 bf4 a8 c8~ | c8 c4.~ c8 f4 f8~ | f8 a,8 bf8 b8 c4 c8 f8~ | f2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
