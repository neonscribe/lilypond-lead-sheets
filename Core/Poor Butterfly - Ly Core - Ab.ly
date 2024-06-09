%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Poor Butterfly"
  subtitle = \instrument
  poet = "John L. Golden"
  composer = "Raymond Hubbell"
  copyright = "© 1916 T.B. Harms and Francis, Day & Hunter"
}

refrainLyrics = \lyricmode {
Poor but -- ter -- fly, 'neath the blos -- soms wait -- ing.
Poor but -- ter -- fly, for she loved him so.
The mo -- ments pass in -- to hours, the hours pass in -- to years,
and as she smiles thru her tears, she mur -- murs low,
“The moon and I know that he be faith -- ful,
I'm sure he come to me by and by.
But if he don't come back then I nev -- er sigh or cry,
I just must die.” Poor but -- ter -- fly.
}

%% Peter Spitzer's basic chart
refrainChords = \chordmode {
  s2.

  bf1:m7 ef1:7 af1:maj af1:maj7
  c1:7.5+ c1:7.5+ f1:7 f1:7

  bf1:7 ef1:7 af2:maj7 c2:7 f1:m7
  bf1:7 bf1:7 bf1:m7 ef1:7
  
  bf1:m7 ef1:7 af1:maj af1:maj7
  c1:7.5+ c1:7.5+ f1:7 f1:7

  bf1:m7 df1:m6 af1:maj7 f1:7
  bf1:m7 ef1:7 af1:maj7
  \chordOpenParen{ c2:m7 }
  \chordCloseParen{ f2:7 }
}

refrainKey = af

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 135
  
  \partial 2. ef4 e4 f4 |
  \bar "||"

  \textMark \markup{ \bold \box "A1" }
  
  df'1~ | df4 c8 bf8 df4 c4 | bf2 bf2~ | bf4 af4 b,4 c4 |
  \break
  af'1~ | af4 b,8 c8 af'4 g4 | g1~ | g4 f4 b,4 c4 |

  \bar "||"
  \break

  \textMark \markup{ \bold \box "B" }
  
  g'4 f8 g8 f2~ | f4 ef4 d4( ef4) | bf'4 af8 bf8 af2~ | af4 f4 g4 af4 |
  \break
  c4 bf8 c8 bf2~ | bf4 af4 e4 f4 | bf1~ | bf4 ef,4 e4 f4 |
  
  \bar "||"
  \break

  \textMark \markup{ \bold \box "A2" }
  
  df'1~ | df4 c8 bf8 df4 c4 | bf2 bf2~ | bf4 af4 b,4 c4 |
  \break
  af'1~ | af4 b,8 c8 af'4 g4 | g1~ | g2 f4 c4 |

  \bar "||"
  \break

  \textMark \markup{ \bold \box "C" }
  
  df4 ef8 f8 ef'2~ | ef4 df8 c8 ef4 df4 | df4 b8( c8) g2~ | g4 af4 c,4 g'4 |
  \break
  f1~ | f4 d8( ef8) df'4 c4 | af1~ | af4 r4 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
