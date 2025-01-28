%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Wrap Your Troubles in Dreams"
  subtitle = \instrument
  poet = "Ted Koehler and Billy Moll"
  composer = "Harry Barris"
  copyright = "© 1931 Shapiro, Bernstein & Co., Inc."
}

refrainLyrics = \lyricmode {
When skies are cloud -- y and gray, they're on -- ly gray for a day.
So wrap your trou -- bles in dreams and dream your trou -- bles a -- way.

Un -- til that sun -- shine peeps through there's on -- ly one thing to do.
Just wrap your trou -- bles in dreams and dream your trou -- bles a -- way.

Your cas -- tles may tum -- ble, that's fate, af -- ter all. __
Life's real -- ly fun -- ny that way.
No use to grum -- ble, just smile as they fall. __
Were -- n't you king __ for a day?

Say, just re -- mem -- ber that sun -- shine al -- ways fol -- lows the rain,
So wrap your trou -- bles in dreams and dream your trou -- bles a -- way.
}

refrainChords = \chordmode {
  s4

  c2:maj7 g2:7 c2:6 g2:7 c2:6 e2:7.9- a1:m7
  d1:7 d1:7 d2:m7 g2:7 c2:maj7 g2:7

  c2:maj7 g2:7 c2:6 g2:7 c2:6 e2:7.9- a1:m7
  d1:7 d1:7 d2:m7 g2:7 c2:6 e2:7

  a2:m7 b2:7 e2:7 a2:7 d2:7 g2:7 c2:maj7 e2:7
  a2:m7 b2:7 e2:7 a2:7 d2:7 g2:7 c2:maj7 g:7

  c2:maj7 g2:7 c2:6 g2:7 c2:6 e2:7.9- a1:m7
  d1:7 d1:7 d2:m7 g2:7 c2:6
  \chordInsideParens{ g2:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Swing [Bill Evans 1962]" 4 = 160
  
  \partial 4 g4 |
  \bar "||"

  \sectStart "A1"
  
  e4 e4 g8 e8 g4 | a2. g4 | a4 a4 b8 a8 b4 | c2. a4 |
  \break
  c4 c4 c8 a8 c4 | a2. a4 | c4 c4 b8 g8 b4 | e,2. g4 |
  
  \sect "A2"

  e4 e4 g8 e8 g4 | a2. g4 | a4 a4 b8 a8 b4 | c2. a4 |
  \break
  c4 c4 c8 a8 c4 | a2. a4 | c4 c4 a8 g8 a4 | c2 b2 |
  
  \sect "B"
  
  e8 c8 e8 ds8~ ds8 b4 ds8 | d8 b8 d8 cs8~ cs2 | c8 a8 as8 b8~ b8 g8 a4 | e1 |
  \break
  e'8 c8 e8 ds8~ ds8 b4 ds8 | d8 b8 d8 cs8~ cs2 | c8 a8 as8 b8~ b8 g8 a4 | e'2 g,2 |
  
  \sect "A3"

  e4 e4 g8 e8 g4 | a4 a2. | a4 a4 b8 a8 b4 | c2. a4 |
  \break
  c4 c4 c8 a8 c4 | e2. a,4 | c4 c4 a8 g8 a4 | c2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
