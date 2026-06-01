%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:34.544878Z"

\include "../Include/lead-sheets.ily"

\header {
  title = "Hard to Thrill"
  subtitle = \subtitle
  poet = ""
  composer = "Eric Clapton & John Mayer"
  copyright = \markup \small { \now " " "© 2006 Inc." }
}

notrefrainAltChords = \chordmode {
  a1:m7 a1:m7 a1:m7 a1:m7

  a1:m7 a1:m7 a1:m7 a1:m7
  d1:m7 g1:13 a1:m7 a1:m7
  f1:9 b2:m7.5- e2:7.9- a1:m7 a1:m7
}

refrainChords = \chordmode {
  a1:m7 a1:m7 a1:m7 a1:m7

  a1:m7 a1:m7 a1:m7 a1:m7
  d1:m7 g1:13 a1:m7 a1:m7
  f1:9 e1:9a1:m7 a1:m7
}

refrainKey = a

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempoFour "Slow Blues [JJ Cale & Eric Clapton 2006]" 76

  \xTextMark \markup{ \bold \box "Intro" }

  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |

  \sect "Head"

  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |

  \bar "|."
}

\include "../Include/paper.ily"

\include "../Include/refrain.ily"
