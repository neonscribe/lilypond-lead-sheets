%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "I Wished on the Moon"
  subtitle = \instrument
  poet = "Dorothy Parker"
  composer = "Ralph Rainger"
  copyright = \markup \small "© 1934 Famous Music Corp."
}

refrainLyrics = \lyricmode {
I wished on the moon __
for some -- thing I nev -- er knew. __
Wished on the moon __
for more than I ev -- er knew. __
A sweet -- er rose, a soft -- er sky,
an Ap -- ril day __ that would not dance __ a -- way. __

I begged of a star __
To throw me a beam or two. __
Wished on a star __
And asked for a dream or two. __
I looked for ev -- 'ry love -- li -- ness,
it all came true. __
I wished on the moon __ for you.
}

refrainChords = \chordmode {
  s4

  c1:m7.5- f1:7 bf1:maj7 d2:m7 g2:7
  c1:m7.5- f1:7 bf1:maj7 a2:m7.5- d2:7

  g2:7 c2:7 f2:7 bf2:7
  
  ef1:maj7 af1:7 c1:m7 f1:7 bf1:maj7 d2:m7 g2:7

  c1:m7.5- f1:7 bf1:maj7 d2:m7 g2:7
  c1:m7.5- f1:7 bf1:maj7 a2:m7.5- d2:7

  g2:7 c2:7 f2:7 bf2:7
  
  ef1:maj7 af1:7 c1:m7.5- f1:m7 bf1:6
  \chordOpenParen{ d2:m7 }
  \chordCloseParen{ g2:7 }
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Bing Crosby 1935]" 4 = 116

  \partial 4 e4 |

  \sectStart "A1"
  
  \tuplet 3/2 { f4 gf4 c,4 } f2~ | f4 g4 \tuplet 3/2 { a4 bf4 c4 } | bf4. a8 g2~ | g1 |
  \break
  \tuplet 3/2 { f4 gf4 c,4 } f2~ | f4 g4 \tuplet 3/2 { a4 bf4 c4 } | cs4. ef8 d2~ | d2 c2 |

  \sect "B"
  
  b4. d8 c4. bf8 | a4. c8 bf4. af8 | g2 bf4 c,4~ | c2. d4 |
  \break
  f4. f8 f2~ | f2 a2 | f1~ | f2. d4 |
  
  \sect "A2"

  \tuplet 3/2 { f4 gf4 c,4 } f2~ | f4 g4 \tuplet 3/2 { a4 bf4 c4 } | bf4. a8 g2~ | g1 |
  \break
  \tuplet 3/2 { f4 gf4 c,4 } f2~ | f4 g4 \tuplet 3/2 { a4 bf4 c4 } | cs4. ef8 d2~ | d2 c2 |

  \sect "C"

  b4. d8 c4. bf8 | a4. c8 bf4. af8 | g2 e'4 gf,4~ | gf2. c,4 |
  \break
  \tuplet 3/2 { f4 gf4 c,4 } f2~ | f2 df'2 | bf1 | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
