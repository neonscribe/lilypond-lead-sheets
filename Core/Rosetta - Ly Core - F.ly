%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Rosetta"
  subtitle = \instrument
  poet = ""
  composer = "Earl Hines and Henri Woode"
  copyright = "© 1935 Morley Music Co., Inc."
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  \chordOpenParen{ g2:m7 }
  \chordCloseParen{ c2:7 }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Fast Swing"

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
