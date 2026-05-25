%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "St. Louis Blues"
  subtitle = \subtitle
  poet = ""
  composer = "W.C. Handy"
  copyright = \markup \small { \now " " "© 1914 Handy Bros. Music Co. Inc." }
}

leadingEighth = ##t

refrainLyrics = \lyricmode {
_ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _

I hate to see __ the eve -- nin' sun go down. __
Hate to see __ the eve -- nin' sun go down. __
'Cause my ba -- by __ he done left this town. __
}

refrainChords = \chordmode {
  s4.

  g1:m g1:m d1:7 d1:7
  d1:7 d1:7

  g1:m g1:m

  g2:m a2:7 d1:7

  g1:7 c1:7 g1:7 g1:7
  c1:7 c1:7 g1:7 g1:7
  d1:7 c1:7 g1:7 d1:7

  g1:7 g1:7 g1:7 g1:7
  c1:7 c1:7 g1:7 g1:7
  d1:7 d1:7 g1:7
  \chordInsideParens{ d1:7 }
}

refrainKey = g

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempoFour "Medium-Up [Artie Shaw 1939]" 176

  \partial 4. d'8^\markup { Latin } d8 bf8 |

  \xTextMark \markup{ \bold \box "A1, A2" }

  \bar ".|:"
  \repeat volta 2 {
  d8 d4.~ d2 | r8 c8 c8 cs8 d8 bf4. | a1 | r2 r8 c8 c8 a8 |
  %% \break
  c8 c4.~ c2 | r8 c8 c8 cs8 d8 a4.
  } \alternative { {
  | g1 | r2 r8 d'8 d8 bf8 |
  } {
  g2 a2 | d4. c8~ c2 |
  } }

  \sect "B"
  \key \refrainKey \major

  b8^\markup { Swing } d8 b8 g8~ g2 | r8 ds8 e8 g8 bf4 a8 g8~ | g1 | r1 |
  %% \break
  r8 e8 g8 a8~ a2 | r8 e8 g8 a8 bf4 a8 g8~ | g1 | r1 |
  %% \break
  fs8 a8 fs8 d8~ d2 | r8 bf'4 bf8 bf4 a8 g8~ | g1 | r1 |

  \sect "C"

  g4 bf8 b8 g4 a8 b8 | g4 bf8 b8 g8 a8 b8 g8~ | g1 | r2 r4 bf8 b8 |
  %% \break
  a4 g8 e8 g4 a8 bf8 | a4 g8 e8 g8 a8 bf8 g8~ | g1 | r2 r4 bf8 b8 |
  %% \break
  d4 bf8 b8 d,8 bf'8 b8 c,8~ | c8 bf'8 b8 d,8~ d8 bf'8 b8 g8~ | g1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\include "../Include/refrain.ily"

\markup{ "Solo on " \box{ "B" } " 12-bar blues." }