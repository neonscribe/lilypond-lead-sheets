%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:44.141075Z"

\include "../Include/lead-sheets.ily"

\header {
  title = "Mercy, Mercy, Mercy"
  subtitle = \subtitle
  poet = ""
  composer = "Josef Zawinul"
  copyright = \markup \small { \now " " "© 1966 Zawinul Music" }
}

refrainChords = \chordmode {
  bf2 bf2:7/d ef2 ef2/f bf2 bf2:7/d
  ef2 ef2/f bf2 bf2:7/d ef2 ef2/f

  bf2 bf2:7/d ef2 ef2/f bf2 ef4./bf bf8*5:7
  ef2/bf bf2 ef4./bf bf8*5:7 ef2/bf

  bf2 bf4/d ef4 f4 ef8*5/f bf8*5 bf4/d ef4
  f1 c1:m7 d1:m7 g4.:m f8 g4.:m f8 g1:m
}

refrainKey = bf

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium-Slow Funk [Cannonball Adderley 1966]" 85

  \xTextMark \markup{ \bold \box "A" }

  r4 g8 f8~ f4 d8 bf8 | c8 bf8 bf8 g8 bf4 c4 |
  r4 g'8 f8~ f4 d8 bf8 | c8 bf8 bf8 g8 bf4 c4 |
  \break
  r4 g'8 f8~ f4 d8 bf8 | c8 bf8 bf8 g8 bf4 c4 |
  r4 g'8 f8~ f4 d8 bf8 | c8 bf8 bf8 g8 bf4 c4 |

  \sect "B"

  f4 f4 g8 g4 af8~ | af4 af4 g8 g4 f8~ | f4 f4 g8 g4 af8~ | af4 af4 g8 g4 f8~ |
  \break
  f4 bf,8 bf8 d8 d8 ef8 ef8 | f8-^ r8 bf4 bf8 bf8 bf8 bf8 |
  r4 bf,8 bf8 d8 d8 ef8 ef8 | f8-^ r8 r4 r8 f,8 g8 bf8 |
  \break
  c4. c8 r4 r8 bf8 | d4. d8 r8 c8 d8 f8 | g4. f8 g4. f8 | g4 r4 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\include "../Include/refrain.ily"
