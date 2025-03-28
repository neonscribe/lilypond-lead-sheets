%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "A Foggy Day (In London Town)"
  subtitle = \instrument
  poet = "Ira Gershwin"
  composer = "George Gershwin"
  copyright = \markup \small "© 1937 George Gershwin Music and Ira Gershwin Music"
}

refrainLyrics = \lyricmode {
A fog -- gy day __ in Lon -- don town __
Had me low __ and had me down. __
I viewed the morn -- ing with a -- larm, __
The Brit -- ish Mu -- se -- um had lost its charm. __
How long, I won -- dered, could this thing last? __
But the age of mir -- a -- cles had -- n't passed, __
For, sud -- den -- ly, __ I saw you there __
and through fog -- gy Lon -- don town the sun was shin -- ing ev' -- ry -- where.
}

refrainChords = \chordmode {
  s4
  
  f1:maj7 af1:7 g1:m7 c1:7.9-
  f1:6 af1:7 g1:7 c1:7
  
  f1:maj7 c1:m7 bf1:maj7 ef1:7
  f1:maj7 d1:7.9- g1:7 c1:7

  f1:maj7 af1:7 g1:m7 c1:7.9-
  f1:6 af1:7 g1:7 c1:7
  
  c1:m7 f1:7 bf1:maj7 ef1:7.11+
  f2:maj7/c g2:m7/c f2:maj7/c g2:m7/c f2:maj7/c d2:m7 g2:m7 c2:7 f1:6
  \chordOpenParen{ g2:m7 }
  \chordCloseParen{ c2:7 }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 140

  \partial 4 c4 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  c4 c2 ef4~ | ef2. ef4 | d4 d2 a'4~ | a1 | 
  \break
  f2 f4 af4~ | af2. af4 | g2 g4 d'4~ | d1 |
  
  \sect "B"
  
  r4 e4 e4 e4 | c4 c2. | a2 a4 f4~ | f2. f4 |
  \break
  a4 a4 a4 c4~ | c4 c2 c4 | a2 a4 d,4~ | d2. c4 |

  \sect "A2"
  
  c2 c4 ef4~ | ef4 ef2 ef4 | d2 d4 a'4~ | a2 a4 a4 |
  \break
  f2 f4 af4~ | af4 bf4 af2 | g2 g4 d'4~ | d2. d4 |
  
  \sect "C"
  
  f2 f4 d4~ | d2. d4 | c2 c4 a4~ | a2 a4 bf4 | c4 f,4 g4 bf4 |
  \break
  a4 f4 g4 bf4 | a2 f'2 | f,2 g2 | f1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
