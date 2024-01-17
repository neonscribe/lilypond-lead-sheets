%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = \songTitle
  subtitle = \instrument
  poet = "Oscar Hammerstein II"
  composer = "Jerome Kern"
  copyright = "© 1939 T.B. Harms Co."
}

refrainLyrics = \lyricmode {
You are the prom -- ised kiss of spring -- time
that makes the lone -- ly win -- ter seem long. __
You are the breath -- less hush of eve -- ning
That trem -- bles on the brink of a love -- ly song. __
You are the an -- gel glow that lights a star, __
The dear -- est things I know __ are what you are. __
Some day my hap -- py arms will hold you,
And some day I'll know that mo -- ment di -- vine,
When all the things you are, are mine.
}

refrainNewRealChords = \chordmode {
  f1:m7 bf1:m7 ef1:7 af1:maj7
  df1:maj7 g1:7 c1:maj7 c1:maj7
  
  c1:m7 f1:m7 bf1:7 ef1:maj7
  af1:maj7 a2:m7.5- d2:7 g1:maj7 g1:maj7
  
  a1:m7 d1:7 g1:maj7 g1:maj7
  fs1:m7.5- b1:7 e1:maj7 c1:7.5+
  
  f1:m7 bf1:m7 ef1:7 af1:maj7
  df1:maj7 gf1:13 c1:m7 b1:dim7
  
  bf1:m7 ef1:7 af1:6
  \chordOpenParen{ g2:m7.5- }
  \chordCloseParen{ c2:7 }
}

refrainRealBookSixthChords = \chordmode {
  f1:m7 bf1:m7 ef1:7 af1:maj7
  df1:maj7 d2:m7 g2:7 c1:maj7 c1:maj7
  
  c1:m7 f1:m7 bf1:7 ef1:maj7
  af1:maj7 a2:m7.5- d2:7 g1:maj7 g2:maj7 e2:7.9+
  
  a1:m7 d1:7 g1:maj7 g1:maj7
  fs1:m7.5- b1:7 e1:maj7 c1:7.5+
  
  f1:m7 bf1:m7 ef1:7 af1:maj7
  df1:maj7 gf1:13 c1:m7 b1:dim7
  
  bf1:m7 ef1:7 af1:maj7
  \chordOpenParen{ g2:m7.5- }
  \chordCloseParen{ c2:7.9- }
}

refrainChords = \refrainRealBookSixthChords

refrainKey = af

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 130

  \mark \markup{ \box "A1" }
  
  af1 | df2. af4 | g4 g4 g4 g4 | g4 c2 g4 |
  \break
  f4 f4 f4 f4 | f4 b2 f4 | e1~ | e1 |

  \bar "||"
  \break

  \mark \markup{ \box "A2" }
  
  ef1 | af2. ef4 | d4 d4 d4 d4 | d4 g2 d4 |
  \break
  c4 c4 c4 c4 | c4 d8 ef8 d4 c4 | b1~ | b4 d4 g4 d'4 |

  \bar "||"
  \break

  \mark \markup{ \box "B" }
  
  d4. c8 c2~ | c4 ds,4 e4 c'4 | b1~ | b4 d,4 g4 b4 |
  \break
  b4. a8 a2~ | a4 bf,4 b4 a'4 | gs1~ | gs1 |
  
  \bar "||"
  \break

  \mark \markup{ \box "A3" }
  
  af1 | df2. af4 | g4 g4 g4 g4 | g4 c2 g4 |
  \break
  f1 | ef'2. df4 | ef,4 ef4 \tuplet 3/2 { ef4 ef4 ef4 } | g2. f4 |
  \break
  
  df4 df4 f4 af4 | f'2 g,2 | af1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
