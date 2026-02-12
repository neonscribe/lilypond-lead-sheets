%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "Bubbles in My Beer"
  subtitle = \instrument
  poet = ""
  composer = "Cindy Walker, Tommy Duncan and Bob Wills"
  copyright = \markup \small { \now " " "© 1947 Chappell & Co." }
}

refrainLyrics = \lyricmode {
_ _ _ _ _ _ _

To -- night in a bar a -- lone I'm sit -- tin’, __ a -- part from the laugh -- ter and the cheer. __
While scenes from the past rise be -- fore me, __ just watch -- ing the bub -- bles in my beer. __

I'm see -- ing the road that I've trav -- eled, __ a road paved with heart -- aches and tears, __
and I'm see -- ing the past that I've wast -- ed __ while watch -- ing the bub -- bles in my beer. __
 
A vi -- sion of some -- one who loved me __ brings a lone si -- lent tear to my eye __
as I think of the heart that I've bro -- ken, __ and of the gol -- den chan -- ces that have passed me by. __

Oh I know that my life's been a fail -- ure, __ I’ve lost ev -- ’ry -- thing that made life dear, __
and the dreams I once made now are emp -- ty, __ as emp -- ty as the bub -- bles in my beer. __
}

refrainChords = \chordmode {
  g1:7 g1:7 c2 f2 c1
  
  c1 c1 g1:7 g1:7 g1:7 g1:7 c1 c1
  c1 c1 g1:7 g1:7 g1:7 g1:7 c2 f2 c1

  c1 c1 g1:7 g1:7 g1:7 g1:7 c1 c1
  c1 c1 g1:7 g1:7 g1:7 g1:7 c2 f2 c2 c2:7
  
  f1 f1 c1 c1 g1:7 g1:7 c1 c1:7
  f1 f1 c1 c1 f2 c2 c2 a2:7 d1:7 g1:7

  c1 c1 g1:7 g1:7 g1:7 g1:7 c1 c1
  c1 c1 g1:7 g1:7 g1:7 g1:7 c2 f2 c1
}

refrainKey = c

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Fast [Bob Wills 1947]" 4 = 180

  \sectStart "Intro"
  
  \ambitusOff
  g2 d4 e4 | f2 e4 d4 | c1~ | c2 r4 g' |
  \ambitusOn

  \sect "A1"
  
  a2 g4 e4 | c4 c4 b4 c4 | e4 d2.~ | d2. g4 |
  g2 d4 e4 | f4 f4 g4. g8 | e1~ | e2 r4 g4 |
  a2 g4 e4 | c2 b4 c4 | e4 d2.~ | d2. g4 |
  g2 d4 e4 | f4 f4 e4 d4 | c1~ | c2 r4 g'4 |

  \sect "A2"

  a2 g4 e4 | c2 b4 c4 | e4 d2.~ | d2. g4 |
  g2 d4 e4 | f2 g4. g8 | e1~ | e2 g4 g4 |
  a2 g4 e4 | c2 b4 c4 | e4 d2.~ | d2. g4 |
  g2 d4 e4 | f4 f4 e4 d4 | c1~ | c2 r4 c4 |

  \sect "B"
  
  f2 f4 a4 | c2 b4 a4 | e4 g2.~ | g2 g4 g4 |
  b2 a4 g4 | d2 g4 f4 | e1~ | e2 c4 c4 |
  f2 f4 a4 | c2 b4 a4 | e4 g2.~ | g4 g,4 c4 e4 |
  a4 a4 g4 e4 | c4 g4 f'4. e8 | d1~ | d4 r4 g4 g4 |
  
  \sect "A3"

  a2 g4 e4 | c2 b4 c4 | e4 d2.~ | d2. g4 |
  g2 d4 e4 | f4 f4 g4 g4 | e1~ | e2 g4 g4 |
  a2 g4 e4 | c2 b4 c4 | e4 d2.~ | d2. d4 |
  g8 g4. d4 e4 | f8 f4. e4 d4 | c1~ | c2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
