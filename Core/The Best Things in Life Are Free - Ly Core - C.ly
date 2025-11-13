%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "The Best Things in Life Are Free"
  subtitle = \instrument
  poet = ""
  composer = "B.G. DeSylva, Lew Brown and Ray Henderson"
  copyright = \markup \small { \now " " "© 1927 Crawford Music Corporation" }
}

refrainLyrics = \lyricmode {
The moon be -- longs to ev -- 'ry -- one, __ the best things in life are free. __
The stars be -- long to ev -- 'ry -- one, __ they gleam there for you and me. __
The flow -- ers in Spring,__ the rob -- ins that sing, __
the sun -- beams that shine, __ they're yours, they're mine!
And love can come to ev -- 'ry -- one, __ the best things in life are free. __
}

refrainChords = \chordmode {
  s2
  
  c1:maj7 c1:maj7 c1:maj7 c1:maj7 
  c1:maj7 e2:m7 ef2:m7 d1:m7 g1:7
  
  d1:m7 d1:m7 g1:sus7 g1:sus7
  d1:m7 g2:7 g2:7.9- c1:maj7 g1:7
  
  g1:m7 c1:7 f1:maj7 f1:maj7
  a1:m7 d1:7 d1:m7 g1:7
  

  c1:maj7 c1:maj7 c2:maj7 f2:9.11+ e2:m7 a2:7
  d1:m7 d2:m7.5- g2:7 c1:6
  \chordOpenParen{ d2:m7 }
  \chordCloseParen{ g2:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Swing [Jo Stafford 1947]" 4 = 165

  \partial 2 g2 |
  \bar "||"

  \sectStart "A1"
  
  c,2 e2 | g2 c2 | b4 c4 b2~ | b2. a4 |
  \break
  g2 b,4 c4 | g'2 gf2 | f1~ | f2. a4 |
  
  \sect "A2"
  
  d,2 f2 | a2 d2 | c4 d4 c2~ | c2. b4 |
  \break
  a2 cs,4 d4 | a'2 af2 | g1~ | g2. g4 |

  \sect "B"
  
  c4 d4 c4 d4~ | d2. e,4 | d4 e4 d4 e4~ | e2. a4 |
  \break
  d4 e4 d4 e4~ | e2. a,4 | c2. f,4 | a2. g4 |

  \sect "A3"

  c,2 e2 | g2 c2 | b4 c4 b2~ | b2 a2 |
  \break
  d2 c4 d4 | c2 d2 | c1~ | c2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
