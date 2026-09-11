%% -*- Mode: LilyPond -*-

songID = "2026-09-11T19:31:41.484654Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Test Test"
headerSubtitle = \subtitle
headerPoet = "Lyricist"
headerComposer = "Composer"
headerCopyright = "© 19xx Inc."

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  \chordOpenParen{ d2:m7 }
  \chordCloseParen{ g2:7 }
}

refrainKey = c

whatKey = #(or whatKey refrainKey)


refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium" 120

  \sectNoBar "A1"
  
  \sect "B"
  
  \sect "A2"

  \sect "C"

  \bar "|."
}

\include "../Include/refrainonly.ily"
