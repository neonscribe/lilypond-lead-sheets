%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:28.061119Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Bubbles in My Beer"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Cindy Walker, Tommy Duncan and Bob Wills"
headerCopyright = "© 1947 Chappell & Co."

refrainLyrics = \lyricmode {
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
  s4

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

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium-Fast [Bob Wills 1947]" 180

  \partial 4 g4 |

  \sectNoBar "A1"

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

  \sectPageBreak "A3"

  a2 g4 e4 | c2 b4 c4 | e4 d2.~ | d2. g4 |
  g2 d4 e4 | f4 f4 g4 g4 | e1~ | e2 g4 g4 |
  a2 g4 e4 | c2 b4 c4 | e4 d2.~ | d2. d4 |
  g8 g4. d4 e4 | f8 f4. e4 d4 | c1~ | c2 r2 |

  \bar "|."
}

\include "../Include/refrainonly.ily"
