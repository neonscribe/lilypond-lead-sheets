%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:58.342512Z"

\include "../Include/lead-sheets.ily"

headerTitle = "What Is There to Say"
headerSubtitle = \subtitle
headerPoet = "E.Y. Harburg"
headerComposer = "Vernon Duke"
headerCopyright = "© 1933 by Kay Duke Music and Glocca Morra Music"

refrainLyrics = \lyricmode {
What is there to say and what is there to do?
The dream I've been seek -- ing has, prac -- ti -- c'lly speak -- ing, come true.

What is there to say and how will I pull through?
I knew in a mo -- ment, con -- tent -- ment and home meant just you.

You are so lov -- a -- ble, so liv -- a -- ble,
your beau -- ty is just un -- for -- giv -- a -- ble.
You're made to mar -- vel at and words to that ef -- fect.

So, what is there to say and what is there to do?
My heart's in a dead -- lock, I'd e -- ven face wed -- lock with you.
}

refrainChords = \chordmode {
  ef2:maj7 c2:m7 f2:m7 bf2:7 ef2:maj7 c2:m7 f2:m7 bf2:7
  ef2:maj7 c2:m7 f2:m7 bf2:7 ef2:maj7 c2:m7 f2:m7 bf2:7

  ef2:maj7 c2:m7 f2:m7 bf2:7 ef2:maj7 c2:m7 f2:m7 bf2:7
  ef2:maj7 c2:m7 f2:m7 bf2:7 ef1:maj7 bf2:maj7 ef2:7

  af4:maj7 a2.:dim7 ef4/bf c2.:7 f2:m7 fs2:dim7 ef2/g a4:m7.5- d4:7
  g1:m7 c1:7 f1:7 bf1:7.5+

  ef2:maj7 c2:m7 f2:m7 bf2:7 ef2:maj7 c2:m7 f2:m7 bf2:7
  ef2:maj7 c2:m7 f2:m7 bf2:7 ef1:maj7
  \chordOpenParen{ f2:m7 }
  \chordCloseParen{ bf2:7 }
}

refrainKey = ef

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium Slow [Bill Evans 1959]" 104

  \sectNoBarNoBreak "A1"

  bf,4 c4 ef4 g4 | g2. f4 | d4 ef4 g4 c4 | c2. bf4 |
  \tuplet 3/2 { ef4 c4 d4 } \tuplet 3/2 { bf4 c4 g4 } |
  \tuplet 3/2 { bf4 f4 g4 } \tuplet 3/2 { ef4 f4 c4 } |
  ef1 | r1 |

  \sect "A2"

  bf4 c4 ef4 g4 | g2. f4 | d4 ef4 g4 c4 | c2. bf4 |
  \tuplet 3/2 { ef4 c4 d4 } \tuplet 3/2 { bf4 c4 g4 } |
  \tuplet 3/2 { bf4 f4 g4 } \tuplet 3/2 { ef4 f4 c4 } |
  ef1 | r2 r8 ef'8 ef8 ef8 |

  \sect "B"

  ef8 c8 c2 d4 | ef8 c8 c2 d4 |
  \tuplet 3/2 { ef4 c4 d4 } \tuplet 3/2 { ef4 c4 d4 } | ef8 c8 c4 r8 c8 c8 c8 |
  bf8 g8 g2 a4 | bf8 g8 g2 a4 | f1 | fs1 |

  \sect "A3"

  bf,4 c4 ef4 g4 | g2. f4 | d4 ef4 g4 c4 | c2. bf4 |
  \tuplet 3/2 { ef4 c4 d4 } \tuplet 3/2 { bf4 c4 g4 } |
  \tuplet 3/2 { bf4 f4 g4 } \tuplet 3/2 { ef4 f4 c4 } |
  ef1~ | ef4 r4 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\include "../Include/refrain.ily"
