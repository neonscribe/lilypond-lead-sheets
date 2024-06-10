%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Mack the Knife"
  subtitle = \instrument
  poet = "Bertolt Brecht/Marc Blitzstein"
  composer = "Kurt Weill"
  copyright = "© 1928 Universal Edition AG Wien"
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  s2
  
  c1:6 c2:6 cs2:dim7 d1:m7 d1:m7
  g1:9 g1:9 c1:6 c1:6
  a1:m7 a1:m7 d1:m7 d1:m7
  d1:m7/g d1:m7/g
  
  c1:6 c2:6 g2:9

  c1:6 c2:6 g2:9

  c1:6 c2:6 cs2:dim7 d1:m7 d1:m7
  g1:9 g1:9 c1:6 c1:6
  a1:m7 a1:m7 d1:m7 d1:m7
  d1:m7/g d1:m7/g
  
  c1:6 c2:6 cs2:dim7 d1:m7 d1:m7
  g1:9 g1:9 c1:6 c1:6
  a1:m7 a1:m7 d1:m7 d1:m7
  d1:m7/g d1:m7/g

  c1:6 c2:6 g2:9

  c1:6 c1:6
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 120

  \partial 2 e4. g8 |
  
  a2 a2~ | a2 e4. g8 | a2 a2~ | a2 d,4. f8 |
  a2 a2~ | a2 d,4. f8 | a1~ | a2 g4. b8 |
  
  d2 c2~ | c2 b4. a8 | c2  d,2~ | d2 e4. f8 |
  c'2 d,2~ | d2 c'4 b4 |
  
  a1~ | a2 e4. g8 |
  
  a1~ | a2 e4. g8 |
  
  
  
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  \bar "||"
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
