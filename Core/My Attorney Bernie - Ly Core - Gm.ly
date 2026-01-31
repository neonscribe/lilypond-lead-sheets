%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "My Attorney Bernie"
  subtitle = \instrument
  poet = ""
  composer = "Dave Frishberg"
  copyright = \markup \small { \now " " "© 1982 Swiftwater Music" }
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  \set chordChanges = ##t
  g1:m f2:m9 bf2:13 ef1 d1:7.9+
  
  g1:m f2:m9 bf2:13 ef1 d1:7.9+
  
  d2:m7.5- d2:m7.5-/g d2:m7.5- d2:m7.5-/g d2:m7.5- d2:m7.5-/g d2:m7.5- d2:m7.5-/g
  d2:m7.5- d2:m7.5-/g d2:m7.5- d2:m7.5-/g \chordInsideParens{ cs4:dim7 } r4*7

  f1:m7 bf1:9 ef1:m7 af1:9 
  df1:maj7 gf1:maj9 c1:m7 f1:7.9-
  a2:m7 d2:7 g1:7
  
  d2:m7.5- d2:m7.5-/g d2:m7.5- d2:m7.5-/g d2:m7.5- d2:m7.5-/g d2:m7.5- d2:m7.5-/g
  d2:m7.5- d2:m7.5-/g d2:m7.5- d2:m7.5-/g \chordInsideParens{ cs4:dim7 } r4*7

  f1:m7 bf1:9 ef1:m7 af1:9 
  df1:maj7 gf1:maj9 c1:m7 f1:7.9- af1:9.11+ g4:9 r2.
  
}

refrainKey = g

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
  \tempo "Medium" 4 = 120

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
