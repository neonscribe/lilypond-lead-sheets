%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:29.389366Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Chinatown, My Chinatown"
headerSubtitle = \subtitle
headerPoet = "William Jerome"
headerComposer = "Jean Schwartz"
headerCopyright = "© 1910 Jerome H. Remick & Co."

refrainLyrics = \lyricmode {
Chi -- na -- town, my Chi -- na -- town, where the lights are low.
Hearts that know no oth -- er land, drift -- ing to and fro.
Dream -- y, dream -- y Chi -- na -- town, al -- mond eyes of brown.
Hearts seem light and life seems bright in dream -- y Chi -- na -- town.
}

refrainChords = \chordmode {
  c1 c1 c1 c1
  c1 c1 g1:7 g1:7

  g1:7 g1:7 a1:m a1:m
  d1:7 d1:7 g1:7 g1:7

  c1 c1 c1 c1
  c1:7 c1:7 f1 f1

  f1 f1:m6 c1 a1:7
  d1:7 d2:m7 g2:7 c1
  \chordOpenParen{ d2:m7 }
  \chordCloseParen{ g2:7 }
}

refrainKey = c

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Fast [Louis Armstrong 1931]" 300

  \sectNoBarNoBreak "A1"

  c'2 d2 | b2 g2 | a4 b4 g2~ | g1 |
  \break
  a2 b2 | g2 a2 | f1~ | f1 |

  \sect "B"

  e2 d2 | g2 e2 | d4 e4 c2~ | c1 |
  \break
  b'2 a2 | d2 b2 | a1~ | a1 |

  \sect "A2"

  c2 d2 | b2 g2 | a4 b4 g2~ | g1 |
  \break
  a2 g2 | c2 e2 | d1~ | d1 |

  \sect "C"

  d2 e2 | d2 c2 | a4 b4 g2~ | g2. a4 |
  \break
  c2 a2 | c2 d2 | c1~ | c4 r4 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\include "../Include/refrain.ily"
