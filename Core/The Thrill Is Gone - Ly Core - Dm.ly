%% -*- Mode: LilyPond -*-

%{

"Customizer": { "toggles": [ "noIntro" ] }

%}

songID = "2026-06-01T22:16:55.465785Z"

\include "../Include/lead-sheets.ily"

headerTitle = "The Thrill Is Gone (not B.B. King)"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Ray Henderson/Lew Brown"
headerCopyright = "© 1931 DeSylva, Brown & Henderson, Inc."

verseLyrics = \lyricmode {
  I'm in your arms __ and you are kiss -- ing me, __
  but there seems to be __ some -- thing miss -- ing __ in your kiss -- ing. __
  The love we knew __ is just a mem -- o -- ry, __
  It's turned in -- to a com -- e -- dy. __
}

verseChords = \chordmode {
  d4 a2:7.5+

  d1 d1 b1:7 b1:7
  e2:m e:m7.5- a1:7 d1:7 a1:7.9- d1 d2 a2:7.5+
  d1 d1 b1:7 b1:7
  e1:m7.5- a1:7 e1:m7.5- a2.:7
}

verseKey = d

verseMelody = \relative f' {
  \time 4/4
  \key \verseKey \major
  \clef \whatClef
  \tempo "Rubato"

  \sectNoBarNoBreak "Verse"

  \partial 2. a4 b4 a4 |
  \bar "||"

  cs1~ | cs4 a4 b4 a4 | c4 c4 c2~ | c2 b4 a4 |
  \break
  a4 g4 bf2~ | bf2 a4 g4 | g4 fs2.~ | fs2 a4 g4 | g4 fs2.~ | fs4 a4 b4 a4 |
  \break
  cs1~ | cs4 a4 b4 a4 | c4 c4 c2~ | c4 g4 a4 g4 |
  \break
  bf1~ | bf4 e,4 fs4 e4 | g1~ |

  \partial 2. g2. |
  \bar "||"
  
  \xxPageBreak
}

refrainLyrics = \lyricmode {
  The thrill is gone! __
  The thrill is gone! __
  I can see it in your eyes,
  I can hear it in your sighs,
  feel your touch and re -- al -- ize
  the thrill is gone.

  The nights are cold __
  for love is old. __
  Love was grand when love was new,
  birds were sing -- ing, skies were blue,
  now it don't ap -- peal to you.
  The thrill is gone.

  This is the end,
  so why pre -- tend and let it lin -- ger on. __
  The thrill is gone! __
}

refrainChords = \chordmode {
  s4

  d1:m7 d1:m7 g1:7 g1:7
  g2:m7 c2:7 f1:maj7 e2:m7.5- a2:7.5+.9- d1:m7
  e2:m7.5- a2:7.9- d2:m7 bf2:maj7 g1:m7 a1:7.5+

  d1:m7 d1:m7 g1:7 g1:7
  g2:m7 c2:7 f1:maj7 e2:m7.5- a2:7.5+.9- d1:m7
  e2:m7.5- a2:7.9- d2:m7 bf2:maj7 g1:m7 a1:7.5+.9-

  d2:m d2:m7/c b1:m7.5- bf1:9.11+ d1:m7/a
  g2:m7 g2:m7/f ef1:9.11+ e1:m7.5- a1:7.9- d1:m

  \chordOpenParen{ e2:m7.5- }
  \chordCloseParen{ a2:7.9- }
}

refrainKey = d
isMinor = ##t

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempoFour "Ballad [Chet Baker 1954]" 60

  \partial 4 a4 |

  \sectNoBreak "A1"

  a4 d,4 f2~ | f2. a4 | a4 d,4 f2~ | f2. r4 |
  a4 a4 d4 d4 | c4 c4 a2 | g4 g4 bf4 bf4 | a4 a4 f2 |
  e4 e4 g4 g4 | f4 f4 d4 d4 | bf'2. e,4 | a2. a4 |

  \sect "A2"

  a4 d,4 f2~ | f2. a4 | a4 d,4 f2~ | f2. r4 |
  a4 a4 d4 d4 | c4 c4 a2 | g4 g4 bf4 bf4 | a4 a4 f2 |
  e4 e4 g4 g4 | f4 f4 d4 d4 | bf'2. a4 | bf2. a4 |

  \sectPageBreak "B"

  f'2. e4 | f2. e4 | e2. d4 | e2. d4 |
  c2. bf4 | a2. g4 | a1~ | a4 e4 g4 f4 | d1~ | d2 r2 |

  \bar "|."
}

\include "../Include/verserefrain.ily"
