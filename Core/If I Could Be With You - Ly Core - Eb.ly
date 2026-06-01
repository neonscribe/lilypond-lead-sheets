%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:38.460009Z"

\include "../Include/lead-sheets.ily"

\header {
  title = "If I Could Be With You (One Hour Tonight)"
  subtitle = \subtitle
  poet = ""
  composer = "Henry Creamer & Jimmy Johnson"
  copyright = \markup \small { \now " " "© 1926 Jerome H. Remick & Co." }
}

leadingEighth = ##t

refrainLyrics = \lyricmode {
If I could be with you I'd love you strong, if I could be with you I'd love you long.
I want you to know I would -- n't go un -- til I told you hon -- ey why I love you so.
If I could be with you one hour to -- night, if I was free to do the things I might.
I'm tell -- ing you true I'd be an -- y -- thing but blue if I could be with you.
}

refrainChords = \chordmode {
  s4.

  f2:m7 bf2:7 f2:m7 bf2:7.5+ ef1:6 c1:7
  f1:7 bf1:7 ef1:6 f2:7 bf2:7

  f2:m7 bf2:7 f2:m7 bf2:7.5+ ef1:6 c1:7
  af2:6 a2:dim7 ef2:6/bf c2:7 f2:7 bf2:7 ef2:6
  \chordInsideParens{ bf2:7 }
}

refrainKey = ef

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium-Slow [Louis Armstrong 1930]" 90

  \partial 4. d'8 ef8 e8 |

  \sectNoBreak "A1"

  f4. c8 ef4. c8 | d4 bf8 c8~ c8 bf8 c8 d8 |
  \break
  ef4. c8 d4. bf8 | c4 bf8 af8~ af8 g4. |

  \sect "B"

  g8 c8 c8 c8~ c4 r4 | g8 c8 c8 c8~ c4 r8 g8 |
  \break
  ef8 f8 g8 af8 bf8 c8 d8 ef8 | g,4 gf8 f8~ f8 d'8 ef8 e8 |

  \sect "A2"

  f4. c8 ef4. c8 | d4 bf8 c8~ c8 bf8 c8 d8 |
  \break
  ef4. c8 d4. bf8 | c4 bf8 af8~ af8 g4. |

  \sect "C"

  f8 e8 f8 d'8~ d4 c8 d8 | ef8 fs,8 g8 d'8 c4( bf8) b8 |
  \break
  c4 cs8 d8~ d8 g4. | ef2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\include "../Include/refrain.ily"
