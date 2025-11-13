%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "I Get the Blues When It Rains"
  subtitle = \instrument
  poet = "Marcy Klauber"
  composer = "Harry Stoddard"
  copyright = \markup \small { \now " " "© 1928 Harry Stoddard" }
}

refrainLyrics = \lyricmode {
I get the blues when it rains. __
The blues I can't lose when it rains. __
Each lit -- tle drop that falls on my win -- dow pane
al -- ways re -- minds me of the tears I've shed in vain.
I sit and wait for the sun __ to shine down on me once a -- gain. __
It rained when I found you, it rained when I lost you,
that's why I'm so blue when it rains.
}

refrainChords = \chordmode {
  g1 c2 g2 d1:7 d1:7
  d1:7 d1:7 g1 g1:7
  c1 cs1:dim7 g1 e1:7
  a1:7 a1:7 d1:7 d1:7
  
  g1 c2 g2 d1:7 d1:7
  d1:7 d2:7 b2:7 e1:m g1:7
  c1 cs1:dim7 g1 e1:7
  a1:7 d1:7 g1 \chordInsideParens{ d1:7 }
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Fast [Annette Hanshaw 1929]" 4 = 172

  \sectStart "A1"
  
  b2 as4 b4 | c2 b4 bf4 | a1~ | a2. d,4 |
  \break
  a'2 gs4 a4 | b2 bf4 a4 | g1~ | g4 r4 r2 |
  
  \sect "B"
  
  e2 ds4 e4 | a2 g4 e4 | d4 d4 g4 a4 | b1 |
  \break
  b2 a4 g4 | fs4 g2 e8 e8 | fs4 fs4 g4 gs4 | a1 |

  \sect "A2"

  b2 as4 b4 | c2 b4 bf4 | a1~ | a2. d,4 |
  \break
  a'2 gs4 a4 | b2 bf4 a4 | g1~ | g2. g4 |
  
  \sect "C"
  
  g2 fs4 g4 | bf4 a2 g4 | d'2 c4 b4 | d4 c2 b4 |
  \break
  e2 a,4 b4 | d2 d,4 e4 | g1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
