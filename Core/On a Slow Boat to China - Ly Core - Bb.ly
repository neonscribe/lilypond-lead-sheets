%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:47.060984Z"

\include "../Include/lead-sheets.ily"

headerTitle = "On a Slow Boat to China"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Frank Loesser"
headerCopyright = "© 1948 Frank Music Corp."

refrainLyrics = \lyricmode {
I'd love to get you __ on a slow boat to Chi -- na, __
all to my -- self, __ a -- lone. __

Get you and keep you __ in my arms ev -- er -- more, __
leave all your lov -- ers __ weep -- ing on the far -- a -- way shore. __

Out on the brin -- y __ with a moon big and shin -- y, __
melt -- ing your heart __ of stone,

I'd love to get you __ on a slow boat to Chin -- a, __
all to my -- self, a -- lone. __
}

refrainChords = \chordmode {
  bf1:maj7 b1:dim7 c1:m7 cs1:dim7
  bf1:maj7 d1:7 ef1:maj7 d2:m7.5- g2:7

  c1:m7 e2:m7 a2:7 bf2:maj7 af2:7.5- g1:7
  c1:7 c1:7 c2.:m7 gf4:7 f1:7

  bf1:maj7 b1:dim7 c1:m7 cs1:dim7
  bf1:maj7 d1:7 ef1:maj7 d2:m7.5- g2:7

  c2:m7 c2:m7/bf af1:7.5- bf2:maj7 af2:7 g1:7
  c1:7 c2:m7 f2:7 bf1:6
  \chordOpenParen{ c2:m7 }
  \chordCloseParen{ f2:7 }
}

refrainKey = bf

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium-Up [Sonny Rollins 1951]" 200

  \sectNoBar "A1"

  d2 f4 a4 | g8 d4.~ d8 g4 d8 | ef2 g4 bf4 | a8 e4.~ e2 |
  \break
  f2 bf4 d4 | a2~ a8 c4. | g1~ | g2 r2 |

  \sect "B"

  ef2 g4 bf4 | a8 e4.~ e8 a4 ef8 | f2 d'8 d4 d8~ | d1 |
  \break
  c2 c4 c4 | a8 a4.~ a2 | g8 f8 g8 f8 g8 f8 af8 g8~ | g1 |

  \sect "A2"

  d2 f4 a4 | g8 d4.~ d8 g4 d8 | ef2 g4 bf4 | a8 e4.~ e2 |
  \break
  f2 bf4 d4 | a2~ a8 c4. | g1~ | g2 r2 |

  \sect "C"

  c2 d4 c4 | d8 c4.~ c4 bf8 c8 | d2 ef4 f4 | ef8 d4.~ d2 |
  \break
  c2 fs,4 g4 | d'2 d2 | bf1~ | bf2 r2 |

  \bar "|."
}

\include "../Include/refrainonly.ily"
