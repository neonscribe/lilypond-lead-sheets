%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Hard to Thrill"
  subtitle = \instrument
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

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Slow Blues [JJ Cale & Eric Clapton 2006]" 4 = 76

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

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
