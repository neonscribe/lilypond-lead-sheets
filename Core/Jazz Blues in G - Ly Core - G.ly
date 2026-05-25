%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Jazz Blues in G"
  subtitle = \subtitle
  poet = ""
  composer = ""
  copyright = \markup \small { \now " " "" }
}

refrainChordsInC = \chordmode {
  c1:7 f1:7 c1:7 g2:m7 c2:7
  \break
  \bar "||-||"
  f1:7 fs1:dim7 c1:7 e2:m7 a2:7
  \break
  \bar "||-||"
  d1:m7 g1:7 c2:7
  \chordOpenParen{ a2:7 }
  d2:m7
  \chordCloseParen{ g2:7 }
}

refrainChords = \chordmode {
  \bar ":|.|:"
  \repeat volta 2 {
  \transpose c g {
    \refrainChordsInC
  }
  }
}

refrainKey = g

whatKey = #(or whatKey refrainKey)

\include "../Include/chord-paper.ily"

\include "../Include/refrain-chords-only.ily"
