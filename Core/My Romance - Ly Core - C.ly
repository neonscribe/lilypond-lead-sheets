%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "My Romance"
  subtitle = \instrument
  poet = "Lorenz Hart"
  composer = "Richard Rodgers"
  copyright = \markup \small "© 1935 T.B. Harms Co."
}

refrainLyrics = \lyricmode {
My ro -- mance does -- n't have to have a moon in the sky,
My ro -- mance does -- n't need a blue la -- goon stand -- ing by;
No month of May, no twink -- ling stars,
No hide -- a -- way, no soft gui -- tars.
My ro -- mance does -- n't need a cas -- tle ris -- ing in Spain,
Nor a dance to a con -- stant -- ly sur -- pris -- ing re -- frain
Wide a -- wake I can make my most fan -- tas -- tic dreams come true;
My ro -- mance does -- n't need a thing but you.
}

refrainNewRealChords = \chordmode {
  s4
  
  c2.:maj7
  \chordInsideParens{ f4:maj7 }
  e2:m7 ef2:dim7 d2:m7 g2:7 c2:maj7 e2:7.5+
  a2:m e2:7.5+ a2:m7 a2:7.5+ d2:m7 g2:7 c2:maj7 c2:7
  
  f2:maj7
  \chordInsideParens{ bf2:9 }
  c2:maj7 c2:7 f2:maj7 
  \chordInsideParens{ bf2:9 }
  c1:maj7
  fs2:m7.5- b2:7 e2:m7 bf2:13 a2:m9 d2:13 d2:m7 g2:7

  c2.:maj7
  \chordInsideParens{ f4:maj7 }
  e2:m7 ef2:dim7 d2:m7 g2:7 c2:maj7 e2:7.5+
  a2:m e2:7.5+ a2:m7 a2:7.5+ d2:m7 g2:7 c2:maj7 c2:7

  f2:maj7 a2:7.5+ d2:m7 d2:m7/c b2:m7.5- e2:7 a2:m7 af2:7
  c2:maj7/g a2:m7 d2:m7 g2:7 c2:6
  \chordOpenParen{ a2:m7 }
  d2:m7
  \chordCloseParen{ g2:7 }
}

refrainRealBookSixthChords = \chordmode {
  s4
  
  c2:maj7
  d2:m7
  e2:m7 ef2:dim7 d2:m7 g2:7 c2:maj7 e2:7
  a2:m a2:m7+ a2:m7 a2:7 d2:m7 g2:7 c2:maj7 c2:7
  
  f2:maj7
  bf2:7
  c2:maj7 c2:7 f2:maj7 
  bf2:7
  c1:maj7
  fs2:m7.5- b2:7.9- e2:m7 bf2:7 a2:m7 d2:7 d2:m7 g2:7

  c2:maj7
  d2:m7
  e2:m7 ef2:dim7 d2:m7 g2:7 c2:maj7 e2:7
  a2:m a2:m7+ a2:m7 a2:7 d2:m7 g2:7 c2:maj7 c2:7

  f2:maj7 a2:7 d2:m7 d2:m/c b2:m7.5- e2:7 a2:m7 af2:7
  c2:maj7/g a2:m7 d2:m7 g2:7 c1:6
  \chordOpenParen{ d2:m7 }
  \chordCloseParen{ g2:7 }
}

refrainChords = \refrainRealBookSixthChords

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Swing"
  
  \partial 4 e8 f8 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  g2. e8 f8 | g4 a4 b4 c4 | c2. b8 a8 | g2. c,8 d8 |
  e2. c8 d8 | e4 f4 g4 a4 | a2. g8 f8 | e2. g4 |

  \sect "B"
  
  c,2. c'4 | g2. g4 | c,2. c'4 | g2. c4 |
  b2. a4 | g2. c4 | b2. a4 | g2. e8 f8 |

  \sect "A2"
  
  g2. e8 f8 | g4 a4 b4 c4 | c2. b8 a8 | g2. c,8 d8 |
  e2. c8 d8 | e4 f4 g4 a4 | a2. g8 f8 | e2. f8 g8 |

  \sect "C"

  a2. f8 g8 | a4 b4 c4 d4 | e4 e4 e4 e4 | c2. c8 d8 |
  e2. c8 d8 | e4 c4 a4 f4 | c'1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
