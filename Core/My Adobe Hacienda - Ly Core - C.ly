%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "My Adobe Hacienda"
  subtitle = \instrument
  poet = ""
  composer = "Louise Massey and Lee Penny"
  copyright = \markup \small "© 1941 Peer International Corp."
}

refrainLyrics = \lyricmode {
In my a -- do -- be ha -- ci -- en -- da __
There's a touch __ of Mex -- i -- co, __
Cac -- tus love -- li -- er than orch -- ids __
Bloom -- ing in the pa -- ti -- o. __
Soft des -- ert stars __ and the strum of gui -- tars, __
Make ev' -- ry eve -- ning seem so sweet; __
In my a -- do -- be ha -- ci -- en -- da __
Life and love __ are more com -- plete. __ (In)
}

refrainLyricsTwo = \lyricmode {
\skip 8 my a -- do -- be ha -- ci -- en -- da __
Nes -- tled in the West -- ern hills, __
Eve -- ning breez -- es soft -- ly mur -- mur __
Har -- mo -- my __ with whip -- poor -- wills. __
When set -- ting sun __ says the long day is done, __
Sweet mu -- sic starts to fill the air; __
In my a -- do -- be ha -- ci -- en -- da __
Har -- mo -- ny __ is ev' -- ry -- where. __
}

refrainChords = \chordmode {
  s4
  
  c1:6 c1:6 g1:7 g1:7 g1:7 g1:7 c1:6 c2:6 g2:7

  c1:6 c1:6 g1:7 g1:7 g1:7 g1:7 c1:6 c1:6

  c1:7 c1:7 f1:6 f1:6 d1:7 d1:7 g1:7 g1:7

  c1:6 c1:6 g1:7 g1:7 g1:7 g1:7

  c1:6 c2:6 \chordInsideParens{ g2:7 }
}

refrainKey = c

refrainMelody = \relative c' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Swing [Eddy Howard 1947]" 4 = 156

  \partial 4 e4 |

  \sectStart "A1"

  \repeat volta 2 {
  g2. fs8 f8~ | f8 e4. ds4 e4 | f4. g8~ g2~ | g1 |
  \break
  d2. e8 f8~ | f4 g4 a4 b8 a8~ | a1~ | a2~ a8 r8 r4 |
  
  \sect "A2"

  g2. fs8 f8~ | f8 e4. ds4 e4 | f4. g8~ g2~ | g1 |
  \break
  d2. e8 f8~ | f4 g4 a4 b8 c8~ | c1~ | c1 |
  
  \sect "B"
  
  c2 d,8 e4 d8~ | d2 e4 c4 | c'2 d,8 e4 d8~ | d1 |
  \break
  d2 e8 d4. | fs4 d4 a'4 d,4 | b'1~ | b2. e,4 |

  \sect "A3"
  
  g2. fs8 f8~ | f8 e4. ds4 e4 | f4. g8~ g2~ | g1 |
  \break
  d2. e8 f8~ | f4 g4 a4 b8 c8~ |
  c1~ | c2 r4
  \override Parentheses.font-size = #5
  \parenthesize
  e,4 |
  }
}

\include "../Include/paper.ily"

\markup {
  \vspace #1
}

\include "../Include/refrain.ily"
