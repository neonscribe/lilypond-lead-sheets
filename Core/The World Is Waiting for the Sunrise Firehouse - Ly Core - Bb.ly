%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:55.736096Z"

\include "../Include/lead-sheets.ily"

headerTitle = "The World Is Waiting for the Sunrise (Firehouse Book)"
headerSubtitle = \subtitle
headerPoet = "Eugene Lockhart"
headerComposer = "Ernest Seitz"
headerCopyright = "© 1919 Chappell & Co."

refrainLyrics = \lyricmode {
Dear one the world is wait -- ing for the sun -- rise;
Ev' -- ry rose is heav -- y with dew.
The thrush on high, his sleep -- y mate is call -- ing
And my heart is call -- ing you!
}

refrainChords = \chordmode {
  s2

  bf1 bf1 f1:7.5+ f1:7.5+
  bf1 bf1 d1:7 d1:7
  ef1 ef1 bf2 f2:m g1:7
  c1:7 c1:7 f1:7 f2:7 f2:7.5+

  bf1 bf1 f1:7.5+ f1:7.5+
  bf1 bf1 d1:7 d1:7
  ef1 ef1 bf2 f2:m g1:7
  ef1:m6 f1:7 bf1 bf2 f2:7.5+
}

refrainKey = bf

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium [Les Paul and Mary Ford 1951]" 130

  \partial 2 cs2 |

  \sectNoBreak "A1"

  d1~ | d2 f2 | g1~ | g2 f2 |
  \break
  d2 f2 | g2 bf2 | d1 | c1 |

  \sect "B"

  bf1~ | bf2 g2 | f1~ | f2 d2 |
  \break
  d2 c2~ | c2 d2 | c1~ | c2 cs2 |

  \sect "A2"

  d1~ | d2 f2 | g1~ | g2 f2 |
  \break
  d2 f2 | g2 bf2 | d1 | c1 |

  \sect "C"

  bf1~ | bf2 g2 | f1~ | f2 d2 |
  \break
  ef1 | d1 | bf1~ | bf2 r2 |

  \bar "|."
}

\include "../Include/refrainonly.ily"
