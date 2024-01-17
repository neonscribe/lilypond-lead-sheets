%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Beaumont Rag"
  subtitle = \instrument
  poet = ""
  composer = "Traditional"
  copyright = ""
}

straightEighths = ##t

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  c1:7 c1:7 f1 f1
  c1:7 c1:7 f1 f1
  
  c1:7 c1:7 f1 f1
  bf2 b2:dim7 f2/c d2:7 g2:7 c2:7 f1
}

refrainKey = f

refrainMelody =  \relative f'' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo 2 = 80

  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \break
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

