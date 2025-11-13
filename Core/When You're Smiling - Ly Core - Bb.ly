%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "When You're Smiling (the Whole World Smiles with You)"
  subtitle = \instrument
  poet = "Joe Goodwin"
  composer = "Mark Fisher & Larry Shay"
  copyright = \markup \small { \now " " "© 1928 Harold Rossiter Music Co." }
}

refrainLyrics = \lyricmode {
  When you're smi -- ling, __ When you're smi -- ling, __ 
  the whole world smiles with you, __
  When you're laugh -- ing, __ When you're laugh -- ing, __
  The sun comes shin -- ing thru, __

  But when you're cry -- ing __ you bring on the rain, __
  So stop your sigh -- ing __ be hap -- py a -- gain, __
  Keep on smi -- ling __ 'cause when you're smi -- ling, __
  The whole world smiles with you. __
}

refrainJoelChords = \chordmode {
  s2

  bf1:6 bf1:6 d1:m7 d1:m7
  c1:m g1:7 c2:m g2:7 c2:m g2:7
  f1:7 f1:7 c1:m7 f1:7
  c1:m7 f1:7 d2:m bf2:6 d2:m bf2:6
  
  bf1:7 bf1:7 ef1:6 ef1:6
  c1:7 c1:7 c1:m7 f1:7
  bf1:6 bf1:6 g1:7 g1:7
  c1:m7.5- f1:7 bf1:6
  \chordOpenParen{ c2:m7 }
  \chordCloseParen{ f2:7 }
}

refrainChords = \refrainJoelChords

refrainKey = bf

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Louis Armstrong 1929]" 4 = 126

  \partial 2 d4 f4 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A" }
  
  bf2 bf2~ | bf2 d,4 f4 | a2 a2~ | a2 f2 |
  \break
  g2 g2 | g2 f2 | ef1~ | ef2 ef4 g4 |
  
  \sect "B"
  
  c2 c2~ | c2 ef,4 g4 | bf2 bf2~ | bf2 g2 |
  \break
  a2 a2 | a2 g2 | f1~ | f4 e4 f4 g4 |

  \sect "C"
  
  af2 af2~ | af2 c2 | c4 bf4 a4 bf4~ | bf4 fs4 g4 a4 |
  \break
  bf2 bf2~ | bf2 d2 | d4 c4 b4 c4~ | c2 d,4 f4 |
  
  \sect "D"

  bf2 bf2~ | bf4 bf4 a4 bf4 | d2 d2~ | d2 g,2 |
  \break
  e'2 e2 | d2 d2 | bf1~ | bf2. r4 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
