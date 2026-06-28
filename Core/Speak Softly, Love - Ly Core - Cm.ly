%% -*- Mode: LilyPond -*-

songID = "2026-06-27T04:47:52.346225Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Speak Softly, Love (Love Theme from The Godfather)"
headerSubtitle = \subtitle
headerPoet = "Larry Kusik"
headerComposer = "Nino Rota"
headerCopyright = "© 1972 Famous Music Corporation"

leadingEighth= ##t

refrainLyrics = \lyricmode {
Speak soft -- ly, love and hold me warm a -- gainst your heart.
I feel your words, the ten -- der, trem -- bling mo -- ments start.
We're in a world __ our ver -- y own,
shar -- ing a love that on -- ly few have ev -- er known.

Wine col -- ored days warmed by the sun,
deep vel -- vet nights __ when we are one.

Speak soft -- ly, love, so no one hears us but the sky.
The vows of love we make will live un -- til we die.
My life is yours __ and all be -- cause
you came in -- to my world with love so soft -- ly, love.
}

refrainChords = \chordmode {
  \chordInsideParens{ f4.:m6/c }

  c2:m f2:m/c c1:m c2:m c2:m/ef f1:m
  f1 c1:m c2:m/g g4:sus7 g4:7 c1:m

  bf2:7/d bf2:7 ef1 df2/f f2:m6/af g2 r2

  c2:m f2:m/c c1:m c2:m f4:m/c c4:m f4:m6/c c4:m f2:m/c
  f1:m c1:m c2:m/g g4:sus7 g4:7 c1:m
}

refrainKey = c

whatKey = #(or whatKey refrainKey)
isMinor = ##t

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempoFour "Medium [Andy Williams 1972]" 146

  \partial 4. g8 c8 ef8 |

  \sectNoBreak "A1"
  
  d8 c8 ef8 c8 d8 c8 af8 bf8 | g2 r8 g8 c8 ef8 |
  d8 c8 ef8 c8 d8 c8 g8 gf8 | f2 r8 f8 af8 b8 |

  d2~ d8 f,8 af8 b8 | c2 r8 c,8 ef8 bf'8 |
  af8 g8 bf8 af8 af8 g8 g8 b,8 | c2 r8 c'8 c8 cf8 |

  \sect "B"

  bf2 d4 c8 af8 | g2 r8 g8 bf8 g8 | f2~ f8 f8 af8 fs8 | g2 r8 g8 c8 ef8 |

  \sect "A2"

  d8 c8 ef8 c8 d8 c8 af8 bf8 | g2 r8 g8 c8 ef8 |
  d8 c8 ef8 c8 d8 c8 g8 gf8 | f2 r8 f8 af8 b8 |

  d2~ d8 f,8 af8 b8 | c2 r8 c,8 ef8 bf'8 |
  af8 g8 bf8 af8 af8 g8 g8 b8 | c1 |

  \bar "|."
}

\include "../Include/refrainonly.ily"
