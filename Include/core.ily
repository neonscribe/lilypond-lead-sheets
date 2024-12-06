%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Song Title"
  subtitle = \instrument
  poet = "Lyricist"
  composer = "Composer"
  copyright = "© 19xx Inc."
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
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "C" }

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
