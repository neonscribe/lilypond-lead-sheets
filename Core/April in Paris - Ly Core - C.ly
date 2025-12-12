%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "April in Paris"
  subtitle = \instrument
  poet = "E.Y. Harburg"
  composer = "Vernon Duke"
  copyright = \markup \small { \now " " "© 1932 Kay Duke Music and Glocca Morra Music" }
}

refrainLyrics = \lyricmode {
A -- pril in Par -- is, __ chest -- nuts in blos -- som, __
hol -- i -- day ta -- bles __ un -- der the trees. __
A -- pril in Par -- is, __ this is a feel -- ing __
no one can ev -- er __ re -- prise. __
I nev -- er knew the charm of spring,
nev -- er met it face to face.
I nev -- er know my heart could sing,
nev -- er missed a warm em -- brace, till
A -- pril in Par -- is, __ whom can I run to, __
what have you done to __ my heart? __
}

refrainChords = \chordmode {
  f1:m6/g c1:maj7 d1:m7.5- g1:7
  c1:maj7 c1:maj7 g1:m7 c1:7
  
  f1:maj7 f1:maj7 b2:m7.5- e2:7 a2:m a2:m/g
  f1:m7.5- b1:7.5+ b2:m7 e2:7 e2:m7.5- a2:7
  
  fs2:m7.5- f2:dim7 c2/e ef2:dim7 d1:m7.5- c1/e
  b2:m7.5- e2:7 a2:m a2:m/g fs2:m7.5- b2:7.5+ e2:maj7 d4:m7 g4:7

  f1:m6/g c1:maj7 e1:m7.5- a1:7.5+
  d1:7 d2:m7 g2:7 c1:6 c1:6
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Count Basie 1955]" 4 = 125

  \xTextMark \markup{ \bold \box "A1" }
  
  \tuplet 3/2 { f4 f4 f4 } ds4 e4~ | e1 | \tuplet 3/2 { f4 f4 f4 } ds4 e4~ | e1 |
  \break
  \tuplet 3/2 { d4 d4 d4 } b4 c4~ | c4 e4 g4 b4 | d1~ | d2 r2 |
  
  \sect "A2"
  
  \tuplet 3/2 { d4 d4 d4 } b4 c4~ | c1 | \tuplet 3/2 { d4 d4 d4 } b4 c4~ | c1 |
  \break
  \tuplet 3/2 { c4 c4 c4 } a4 b4~ | b2 c2 | e1~ | e1 |
  
  \sect "B"
  
  e2 d8 as8 b8 d8 | c4 c4 c2 | d8 as8 b8 d8 c4 c4 | c1 |
  \break
  e2 d8 as8 b8 d8 | c4 c4 c2 | c8 gs8 a8 c8 b4 b4 | gs2 g2 |
  
  \sect "A3"

  \tuplet 3/2 { f4 f4 f4 } ds4 e4~ | e1 | \tuplet 3/2 { bf'4 bf4 bf4 } gs4 a4~ | a1 |
  \break
  \tuplet 3/2 { d4 d4 d4 } b4 c4~ | c2 d2 | c1~ | c4 r4 r2 |
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
