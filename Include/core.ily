%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Song Title"
  subtitle = \subtitle
  poet = "Lyricist"
  composer = "Composer"
  copyright = \markup \small "© 19xx Inc."
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  \chordOpenParen{ g2:m7 }
  \chordCloseParen{ c2:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 120

  \xTextMark \markup{ \bold \box "A1" }
  
  \sect "B"
  
  \sect "A2"
  
  \sect "C"

  \bar "|."
}

\include "../Include/paper.ily"

\include "../Include/refrain.ily"
