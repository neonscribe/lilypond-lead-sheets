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

  \mark \markup{ \box "A1" }
  
  \bar "||"
  \break

  \mark \markup{ \box "B" }
  
  \bar "||"
  \break

  \mark \markup{ \box "A2" }
  
  \bar "||"
  \break

  \mark \markup{ \box "C" }

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
