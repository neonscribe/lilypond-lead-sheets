%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Rose Room"
  subtitle = \instrument
  poet = "Harry Williams"
  composer = "Art Hickman"
  copyright = \markup \small { \now " " "© 1917 Art Hickman" }
}

refrainLyrics = \lyricmode {
In sun -- ny Rose -- land,
where sum -- mer breez -- es are play -- ing,
Where the hon -- ey bees are “a May -- ing,”
There all the ros -- es are sway -- ing,
Danc -- ing while the mead -- ow brook flows.
The moon when shin -- ing
is more than ev -- er de -- sign -- ing,
For 'tis ev -- er then I am pin -- ing,
Pin -- ing to be sweet -- ly re -- clin -- ing
Some -- where in Rose -- land,
Be -- side a beau -- ti -- ful Rose.
}

refrainChords = \chordmode {
  s2.
  
  bf1:7 ef1:7 af1:maj7 af1:6
  ef1:m7 af1:7 df1:maj7 df1:6
  
  df1:m7 gf1:7 af1:maj7 f1:7
  bf1:7 bf1:7 bf1:m7 ef1:7

  bf1:7 ef1:7 af1:maj7 af1:6
  ef1:m7 af1:7 df1:maj7 df1:6
  
  df1:m7 gf1:7 af1:maj7 f1:7
  bf1:7 ef1:7 af2:6
  \chordOpenParen{ g2:7.9- }
  gf2:7
  \chordCloseParen{ f2:7 }
}

refrainKey = af

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Swing [Benny Goodman 1939]" 4 = 146

  \partial 2. ef4 ef4 e4 |
  \bar "||"
  
  \xTextMark \markup{ \bold \box "A1" }
  
  f4. c'8~ c2 | r8 ef,8 f8 fs8 g8 c4 g8 | bf1 | af1 |
  \break
  af1 | r8 af8 bf8 b8 c8 f4 c8 | ef1 | df1 |
  
  \sect "B"
  
  df1~ | df4 af8 bf8 df8 af8 bf4 | c1 | ef1 |
  \break
  f,4. c'8~ c2~ | c4 f,8 g8 af8 bf8 c4 | bf1~ | bf4 ef,4 ef4 e4 |
  
  \sect "A2"
  
  f4. c'8~ c2 | r8 ef,8 f8 fs8 g8 c4 g8 | bf1 | af1 |
  \break
  af1 | r8 af8 bf8 b8 c8 f4 c8 | ef1 | df1 |
  
  \sect "C"
  
  df4. df8~ df2~ | df4 af8 bf8 df8 af8 bf4 | c1 | ef4 ef,4 ef4 e4 |
  \break
  f4. c'8~ c2 | r8 ef,8 f8 fs8 g8 ef'8 c4 | af1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
