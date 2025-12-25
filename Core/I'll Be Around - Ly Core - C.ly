%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "I'll Be Around"
  subtitle = \instrument
  poet = "Lyricist"
  composer = "Composer"
  copyright = \markup \small { \now " " "© 19xx Inc." }
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  \chordOpenParen{ d2:m7 }
  \chordCloseParen{ g2:7 }
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
  \tempo "Ballad [Mills Brothers 1942]" 4 = 86

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
