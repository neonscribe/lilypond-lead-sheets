%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "While My Guitar Gently Weeps"
  subtitle = \instrument
  poet = ""
  composer = "George Harrison"
  copyright = "© 1968 Harrisongs Limited"
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  a1:m a1:m/g d1:9/fs f1:maj7
  a1:m g1 d1 e1

  a1:m a1:m/g d1:9/fs f1:maj7
  a1:m g1 d1 e1
  a1:m a1:m/g d1:9/fs f1:maj7
  a1:m g1 c1 e1

  a1 cs1:m fs1:m cs1:m
  b1:m b1:m e1 e1
  a1 cs1:m fs1:m cs1:m
  b1:m b1:m e1 e1
  
}

refrainKey = a

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium" 4 = 120

  \mark \markup{ \box "Intro" }
  
  \bar "||"
  \break

  \mark \markup{ \box "Verse 1, 2" }
  %% repeat start
  
  \bar "||"
  \break

  %% to coda
  %% start first ending
  %% two bars
  \bar "||"
  \break

  \mark \markup{ \box "Bridge" }
  %% segno, with repeat

  %% end first ending
  \mark \markup{ \box "Solo" }
  %% start second ending
  
  %% DS al coda
  \textCoda
  

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
