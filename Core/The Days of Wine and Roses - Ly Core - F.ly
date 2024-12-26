%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "The Days of Wine and Roses"
  subtitle = \instrument
  poet = "Johnny Mercer"
  composer = "Henry Mancini"
  copyright = "© 1962 M. Witmark & Sons"
}

refrainLyrics = \lyricmode {
The days __ of wine and ros -- es __ Laugh and run a -- way __ like a child at play, __
Through the mead -- ow -- land to -- ward a clo -- sing door,
A door marked “Nev -- er -- more” that was -- n't there be -- fore. __

The lone -- ly night dis -- clos -- es __ Just a pass -- ing breeze __ filled with mem -- o -- ries __
Of the gold -- en smile that in -- tro -- duced me to __
The days of wine and ros -- es and you.
}

refrainChords = \chordmode {
  s4

  f1:maj7 ef1:7.11+ a1:m7 d1:7.9-
  g1:m7 g1:m7 ef1:7.11+ ef1:7.11+
  
  f1:maj7 d1:m7 g1:m7 g1:m7/f
  e2:m7.5- a2:7.9- d2:m7 g2:7 g1:m7 c1:7

  f1:maj7 ef1:7.11+ a1:m7 d1:7.9-
  g1:m7 g1:m7 ef1:7.11+ ef1:7.11+
  
  f1:maj7 d2:7 d2:7/c b1:m7.5- e1:7.9-
  a2:m7 d2:m7 g2:m7 c2:7 f1:6

  \chordOpenParen{ g2:m7 }
  \chordCloseParen{ c2:7 }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 130

  \partial 4 c4 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  a'1~ | a4 g4 a4 c4 | d2 c2~ | c2 c4 a4 |
  \break
  a4 d,4 d2~ | d2 c'4 a4 | a4 df,4 df2~ | df2 a'4 g4 |
  
  \sect "B"
  
  g4 c,4 d4. e8 | g4 f4 a4 d4 | c2. bf4 | c4 bf4 a4 g4 |
  \break
  a2. e4 | g4 f4 e4. d8 | g1~ | g2 r4 c,4 |

  \sect "A2"
  
  a'1~ | a4 g4 a4 c4 | d2 c2~ | c2 c4 a4 |
  \break
  a4 d,4 d2~ | d2 c'4 a4 | a4 df,4 df2~ | df2 a'4 g4 |
  
  \sect "C"
  
  g4 c,4 d4 e4 | f4 g4 a4 c4 | e1~ | e2. d4 |
  \break
  c4 a4 g4 f4 | a4 a2 d,4 | f1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
