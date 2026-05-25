%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "The Flat Foot Floogie (Flat Fleet Floogee)"
  subtitle = \subtitle
  poet = ""
  composer = "Slim Gaillard, Slam Stewart and Bud Green"
  copyright = \markup \small { \now " " "© 1938 Jewel Music Publishing Co., Inc." }
}

leadingEighth = ##t

refrainLyrics = \lyricmode {
The flat foot floo -- gie with the floy floy,
The flat foot floo -- gie with the floy floy,
The flat foot floo -- gie with the floy floy,
floy doy, floy doy, floy doy, floy doy.
The flat foot floo -- gie with the floy floy,
The flat foot floo -- gie with the floy floy,
The flat foot floo -- gie with the floy floy,
floy doy, floy doy, floy doy, floy doy.
If you're feel -- in' low -- down,
Don't know what to do,
And you want a show -- down,
Here's the on -- ly dance for you:
The flat foot floo -- gie with the floy floy,
The flat foot floo -- gie with the floy floy,
The flat foot floo -- gie with the floy floy,
floy doy, floy doy, floy doy, floy doy.
}

refrainChords = \chordmode {
  s8

  f2 d2:m7 g2:m7 c2:7 f2 d2:m7 g2:m7 c2:7
  f2 f2:7/a bf2 b2:dim7 f2/c c2:7 f2 c2:7

  f2 d2:m7 g2:m7 c2:7 f2 d2:m7 g2:m7 c2:7
  f2 f2:7/a bf2 b2:dim7 f2/c c2:7 f1

  f1:7 f1:7 bf1 bf1
  g1:7 g1:7 c1 g2:m7 c2:7

  f2 d2:m7 g2:m7 c2:7 f2 d2:m7 g2:m7 c2:7
  f2 f2:7/a bf2 b2:dim7 f2/c c2:7 f2
  \chordInsideParens{ c2:7 }
}

refrainKey = f

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium-Up Swing [Slim and Slam 1938]" 175

  \partial 8 c8 |
  \bar "||"

  \sectNoBreak "A1"

  c'4 bf4 af8 f8 d8 c8 | f4. d8~ d4 r8 c8 | c'4 bf4 af8 f8 d8 c8 | af'4. g8~ g4 r8 c,8 |
  c'4 bf4 af8 f8 d8 c8 | f4. f8~( f8 c8) f8 f8~( | f8 c8) f8 f8~( f8 c8) f8 f8~( | f8 c8) f8 f8~ f4 r8 c8 |

  \sect "A2"

  c'4 bf4 af8 f8 d8 c8 | f4. d8~ d4 r8 c8 | c'4 bf4 af8 f8 d8 c8 | af'4. g8~ g4 r8 c,8 |
  c'4 bf4 af8 f8 d8 c8 | f4. f8~( f8 c8) f8 f8~( | f8 c8) f8 f8~( f8 c8) f8 f8~( | f8 c8) f8 f8~ f4 r4 |

  \sect "B"

  g4 f4 g4 bf4 | g4 g2. | g4 f4 g4 bf8 g8~ | g1 |
  a4 g4 a4 c4 | b4 b2. | c4 c,4 d4 f4 | af4 f8 g8~ g4. c,8 |

  \sect "A3"

  c'4 bf4 af8 f8 d8 c8 | f4. d8~ d4 r8 c8 | c'4 bf4 af8 f8 d8 c8 | af'4. g8~ g4 r8 c,8 |
  c'4 bf4 af8 f8 d8 c8 | f4. f8~( f8 c8) f8 f8~( | f8 c8) f8 f8~( f8 c8) f8 f8~( | f8 c8) f8 f8~ f4 r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\include "../Include/refrain.ily"
