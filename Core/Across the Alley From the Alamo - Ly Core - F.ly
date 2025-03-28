%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Across the Alley From the Alamo"
  subtitle = \instrument
  poet = ""
  composer = "Joe Greene"
  copyright = \markup \small "© 1947 Michael H. Goldsen, Inc."
}

refrainLyrics = \lyricmode {
A -- cross the al -- ley from the Al -- a -- mo, __
Lived a pin -- to po -- ny and a Na -- va -- jo, __
who sang a sort of In -- di -- an hi -- de -- ho __ to the peo -- ple pass -- ing by. __

The pin -- to spent his time a -- swish -- in' flies __
and the Na -- va -- jo watched the la -- zy skies, __
and ver -- y rare -- ly did they ev -- er rest their eyes __
on the peo -- ple pass -- ing by. __

One day they went a walk -- in' __ a -- long the rail -- road track. __
They were swish -- in' not look -- in'. __ Toot! Toot!
They nev -- er came back. __

A -- cross the al -- ley from the Al -- a -- mo, __
when the sum -- mer sun de -- cides to set -- tle low, __
a fly sings an In -- di -- an hi -- de -- ho, to the peo -- ple pass -- ing by. __
}

refrainChords = \chordmode {
  s4
  
  f1 f1 f1 f1
  g1:m7 c1:7 g2:7 c2:sus7 f2:maj7 c2:7

  f1 f1 f1 f1
  g1:m7 c1:7 g2:7 c2:7 f2:6 f2:7
  
  bf1:6 f1:maj7 bf2:6 bf2:m6 f1:maj7
  e2:m7 a2:7 d1:m7 g1:9 g2:m7 c2:7

  f1 f1 f1 f1
  g1:m7 c1:7 g2:7 c2:7 f2:6
  \chordInsideParens{ c2:7 }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Swing [The Mills Brothers 1947]" 4 = 140

  \partial 4 c4 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  c'4 c4 c8 c8 b8 c8 | d4 c8 a8~ a4 c,8 c8 | a'4 a4 a8 a8 gs8 a8 | bf4 a8 f8~ f4 c4 |
  \break
  g'8 g8 fs8 g8 fs8 fs8 g4 | c4 bf8 g8~ g4 g8 g8 | g8 g4. f4 g8 a8~ | a2. c,4 |

  \sect "A2"
  
  c'4 c4 c8 c8 b8 c8 | d4 c8 a8~ a4 c,8 c8 | a'8 a8 a4 gs4 a4 | bf4 a8 f8~ f4 c4 |
  \break
  g'8 g8 fs8 g8 fs8 fs8 g8 g8 | c4 bf8 g8~ g4 g8 g8 | g8 bf4. a4 g8 f8~ | f2. f4 |

  \sect "B"
  
  bf4 bf4 c4 bf4 | a8 c4.~ c4. f,8 | bf4 bf4 bf8 a4 c8~ | c2. a8 a8 |
  \break
  a8 a4. r8 g4. | g8 f4.~ f8 d'4 d8~ | d4 r8 a8 a8 g8 f8 g8~ | g2. r8 c,8 |
  
  \sect "A3"

  c'4 c4 c8 c8 b8 c8 | d4 c8 a8~ a4 c,8 c8 | a'4 a4 a8 a8 gs8 a8 | bf4 a8 f8~ f4 c4 |
  \break
  g'4 g8 g8 fs8 fs8 g4 | c4 bf8 g8~ g4 g8 g8 | g8 bf4. a4 g8 f8~ | f4 r4 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
