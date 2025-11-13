%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Let's Face the Music and Dance"
  subtitle = \instrument
  poet = ""
  composer = "Irving Berlin"
  copyright = \markup \small { \now " " "© 1936 Irving Berlin Inc." }
}

refrainLyrics = \lyricmode {
There may be trou -- ble a -- head, __
but while there's moon -- light
and mu -- sic and love and ro -- mance, __
let's face the mu -- sic and dance. __
Be -- fore the fid -- dlers have fled, __
be -- fore they ask us to pay the bill __
and while we still have the chance, __
let's face the mu -- sic and dance. __
Soon, __ we'll be with -- out the moon, __
hum -- ming a diff -- 'rent tune and then, __
there may be tear -- drops to shed. __
So, while there's moon -- light
and mu -- sic and love and ro -- mance, __
let's face the mu -- sic and dance, __ dance,
let's face the mu -- sic and dance. __
}

refrainChords = \chordmode {
  c1:m c1:m c2:m c2:m6 c2:m7+ c2:m7
  c1:m c1:m d1:m7.5- g1:7.9-
  
  c1:maj7 g2:m7 c2:7 f1:6 bf1:9
  c2:6 ef2:m6 d2:m7.5- g2:7.5+

  c1:m c1:m c2:m c2:m6 c2:m7+ c2:m7
  g1:7 af1:7 d1:7/a d1:m7

  g1:7 g1:7/f e1:m7 a1:7
  d1:m7 bf1:9 c1:6 bf2:m7 ef2:7
  
  af1:maj7 af2:maj7 ef2:7 af1:maj7 af2:maj7 ef2:7
  af1:maj7 af1:maj7 g1:7 g1:7.5+

  c1:m c1:m c2:m c2:m6 c2:m7+ c2:m7
  c1:m c1:m d1:m7.5- g1:7.9-
  
  c1:maj7 g2:m7 c2:7 f1:6 bf1:9
  a1:m7 af1:7.5- d1:m9/g d2:m7 g2:sus7 c2:6

  \chordOpenParen{ ef2:m6 }
  d2:m7.5-
  \chordCloseParen{ g2:7.5+ }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Fred Astaire 1936]" 4 = 176

  \xTextMark \markup{ \bold \box "A1" }
  
  r4 c4 d4 ef4 | af4 g2 ef4 | g1~ | g2 r2 |
  \break
  r4 c,4 d4 ef4 | af4 g2 ef4 | g4 f2 d4 | f4 e2 c4 |
  \break
  e1~ | e2 r2 | r4 d4 d4 d4 | d4 c4 c4 c4~ | c1~ | c2 r2 |
  
  \sect "A2"
  
  r4 c4 d4 ef4 | af4 g2 ef4 | g1~ | g2 r2 |
  \break
  r4 g4 a4 b4 | ef4 d2 c4 | d2 a4 c4~ | c2. a4 |
  \break
  b2 g4 a4~ | a4 e4 e4 e4~ | e1~ | e2 r2 |
  \break
  r4 d4 d4 d4 | d4 c4 c4 c4~ | c1~ | c2 r2 |
  
  \bar "||"

  \xPageBreak

  \xTextMark \markup{ \bold \box "B" }
  
  c'1~ | c2 \tuplet 3/2 { bf4 c4 bf4 } |
  af2 c,4 ef4~ | ef2 \tuplet 3/2 { bf'4 c4 bf4 } |
  \break
  af2 c,4 ef4~ | ef2 f2 | g1~ | g2 r2 |

  \sect "A3"

  r4 c,4 d4 ef4 | af4 g2 ef4 | g1~ | g2 r2 |
  \break
  r4 c,4 d4 ef4 | af4 g2 ef4 | g4 f2 d4 | f4 e2 c4 |
  \break
  e1~ | e2 r2 | r4 d4 d4 d4 | d4 c4 c4 c'4~ | c1 | d1 |
  \break
  r4 e4 e4 e4 | e4 c4 c4 c4~ | c1~ | c2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
