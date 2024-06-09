%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Hard to Thrill"
  subtitle = \instrument
  poet = ""
  composer = "Eric Clapton & John Mayer"
  copyright = "© 2006 Inc."
}

refrainLyrics = \lyricmode {
}

refrainAltChords = \chordmode {
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

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Slow Blues" 4 = 80

  \textMark \markup{ \bold \box "Intro" }
  
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |

  \bar "||"
  \break

  \textMark \markup{ \bold \box "Head" }
  
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
