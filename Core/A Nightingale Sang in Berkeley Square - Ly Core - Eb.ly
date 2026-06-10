%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:23.80641Z"

\include "../Include/lead-sheets.ily"

headerTitle = "A Nightingale Sang in Berkeley Square"
headerSubtitle = \subtitle
headerPoet = "Eric Maschwitz"
headerComposer = "Manning Sherwin"
headerCopyright = "© 1940 The Peter Maurice Music Co. Ltd."

leadingEighth = ##t

refrainLyrics = \lyricmode {
That cer -- tain night, the night we met, there was mag -- ic a -- broad in the air.
There were an -- gels din -- ing at the Ritz,
and a night -- in -- gale sang in Ber -- k'ley Square.

I may be right, I may be wrong,
but I'm per -- fect -- ly will -- ing to swear
that _ when you turned and smiled at me _
a night -- in -- gale sang in Ber -- k'ley Square.

The moon that lin -- gered o -- ver Lon -- don town, __
poor puz -- zled moon, he wore a frown;
how couldf he know we two were so in love, __
the whole darn world seemed up -- side down.

The streets of town were paved with stars,
it was such a ro -- man -- tic af -- fair,
and as we kissed and said “good night”
a night -- in -- gale sang in Ber -- k'ley Square.
}

refrainLyricsTwo = \lyricmode {
}

refrainChords = \chordmode {
  s8

  ef2:maj7 c2:m7 g2:m7 bf4:m7 ef4:7 af2:maj7 g2:7.9- c2:m7 af2:m6
  ef2:maj7/bf bf2:sus7 ef2:7 af4:m7 df4:7 g2:m7 c2:m7 f2:m7 bf2:7

  ef2:6 c2:m7 f2:m7 bf2:7

  ef2:maj7 c2:m7 g2:m7 bf4:m7 ef4:7 af2:maj7 g2:7.9- c2:m7 af2:m6
  ef2:maj7/bf bf2:sus7 ef2:7 af4:m7 df4:7 g2:m7 c2:m7 f2:m7 bf2:7

  ef1:6 a2:m7 d2:7

  g2:maj7 e2:m7 a2:m7 d2:7 b2:m7 bf2:dim7 a2:m7 d2:7
  g2:maj7 e2:m7 a2:m7 d2:7 b2:m7 e2:dim7 f2:m7 bf2:7

  ef2:maj7 c2:m7 g2:m7 bf4:m7 ef4:7 af2:maj7 g2:7.9- c2:m7 af2:m6
  ef2:maj7/bf bf2:sus7 ef2:7 af4:m7 df4:7 g2:m7 c2:m7 f2:m7 bf2:7
  ef2:6
  \chordOpenParen{ c2:m7 }
  f2:m7
  \chordCloseParen{ bf2:7 }
}

refrainKey = ef

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium Ballad [Bobby Darin 1962]" 116

  \partial 8 bf,8 |

  \sectNoBreak "A1"

  g'4 g4 ef4. ef8 | bf'4 bf4 g4 ef8 ef8 |
  \tuplet 3/2 { c'4 c4 c4 } \tuplet 3/2 { d4 d4 d4 } | ef2. ef8 ef8 |
  d4 bf4 c4. af8 | bf4 ef,4 bf'4 af8 af8 | g8 af8 bf4 ef,4 ef4 | ef2 f2 |
  ef1 | r2 r4 r8 bf8 |

  \sect "A2"

  g'4 g4 ef4. ef8 | bf'4 bf4 g4 ef8 ef8 |
  \tuplet 3/2 { c'4 c4 c4 } \tuplet 3/2 { d4 d4 d4 } | ef2. ef8 ef8 |
  d4 bf4 c4. af8 | bf4 ef,4 bf'4 af8 af8 | g8 af8 bf4 ef,4 ef4 | ef2 f2 |
  ef1 | r1 |

  \sectPageBreak "B"

  r8 d8 e8 fs8 g8 a8 b8 c8 | d8 d4 b8~ b4. b8 | a4 a4 fs4. fs8 | e4 fs4 d2 |
  r8 d8 e8 fs8 g8 a8 b8 c8 | d8 d4 b8~ b4. b8 | a4 a4 g4. g8 | c4 c4 bf4. bf,8 |

  \sect "A3"

  g'4 g4 ef4. ef8 | bf'4 bf4 g4 ef8 ef8 |
  \tuplet 3/2 { c'4 c4 c4 } \tuplet 3/2 { d4 d4 d4 } | ef2. ef4 |
  d4 bf4 c4. af8 | bf4 ef,4 bf'4. af8 | g8 af8 bf4 ef,4 ef4 | ef2 f2 | ef1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\include "../Include/refrain.ily"
