%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "Tumbling Tumbleweeds"
  subtitle = \instrument
  poet = ""
  composer = "Bob Nolan"
  copyright = \markup \small { \now " " "© 1934 Williamson Music, Inc." }
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  f1 f1 e1 e1
  f1 c2 a2:7 g1:7 c2 g4:7 gf4:7
  
  f1 f1 e1 e1
  f1 c2 a2:7 g1:7 c1
  
  g1:7 c1 d1:7 e2:m g4:7 gf4:7

  f1 f1 e1 e1
  f1 c2 a2:7 g1:7 c2 g4:7 gf4:7
}

refrainKey = c

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
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium" 120

  \sectStart "A1"
  
  \sect "B"
  
  \sect "A2"

  \sect "C"

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
