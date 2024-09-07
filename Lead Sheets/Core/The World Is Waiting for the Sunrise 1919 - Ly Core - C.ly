%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "The World Is Waiting for the Sunrise (1919)"
  subtitle = \instrument
  poet = "Eugene Lockhart"
  composer = "Ernest Seitz"
  copyright = "© 1919 Chappell & Co. Ltd."
}

refrainLyrics = \lyricmode {
Dear one the world is wait -- ing for the sun -- rise;
Ev' -- ry rose is heav -- y with dew.
The thrush on high, his sleep -- y mate is call -- ing
And my heart is call -- ing you!
}

refrainChords = \chordmode {
  s4
  
  c1:6 g1:7.5+ c1:6 e1:7
  f2 fs2:dim7 e2:m7 a2:7 d1:7 d2:m7 g2:7
  c1:6 g1:7.5+ c1:6 e1:7
  f2 fs2:dim7 e2:m7 a2:7 d2:m7 g2:7 c1:6
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 130
  
  \partial 4 ds4 |
  \bar "||"
  
  e2. g4 | a2. g4 | e4 g4 a4 c4 | e2 d2 |
  \break
  c2. a4 | g2. e4 | e4 d2 e4 | d2. ds4 |
  \bar "||"
  \break

  e2. g4 | a2. g4 | e4 g4 a4 c4 | e2 d2 |
  \break
  c2. a4 | g2. e4 | f2. g4 | e'2. r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
