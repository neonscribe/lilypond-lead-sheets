%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "I Surrender, Dear"
  subtitle = \instrument
  poet = "Gordon Clifford"
  composer = "Harry Barris"
  copyright = \markup \small { \now " " "© 1931 Freed & Powers Ltd." }
}

refrainLyrics = \lyricmode {
We've played the game of stay a -- way, but it costs more than I can pay.
With -- out you I can't make my way, I sur -- ren -- der, dear.
I may seem proud, I may act gay, it's just a pose, I'm not that way.
'Cause deep down in my heart I say I sur -- ren -- der, dear.
Lit -- tle mean things we were do -- ing __
must have been part of the game.
Lend -- ing a spice to the woo -- ing __ but I don't care who's to blame.
When stars ap -- pear and shad -- ows fall, 
why then you'll hear my poor heart call to you my love, my life, my all
I sur -- ren -- der, dear.
}

refrainChords = \chordmode {
  d1:m e2:m7.5- a2:7.9- d2:m e2:7 a2:m d2:9
  c2 a2:m d1:9 d2:m g4:7 g4:aug c4 c4:7 a4:7.5+ a4:7

  d1:m e2:m7.5- a2:7.9- d2:m e2:7 a2:m d2:9
  c2 a2:m d1:9 d2:m g4:7 g4:aug c1

  e1:7 f4 \chordSlash 2 a4:m e1:7 f4 \chordSlash 2 a4:m
  e1:7 f4 \chordSlash 2 a4:m d1:9 g4:9 d4:m7.5- g2:7

  d1:m e2:m7.5- a2:7.9- d2:m e2:7 a2:m d2:9
  c2 a2:m d1:9 d2:m g4:7 g4:aug c1
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Bing Crosby 1931]" 4 = 108

  \xTextMark \markup{ \bold \box "A1" }
  
  r8 f8 f8 f8 a2 | r8 g8 g8 g8 bf2 | r8 a8 a8 a8 b2 | r8 c8 c8 c8 e2 |
  \break
  r8 e8 e8 c8 c8 a8 a8 e8 | e1 | r4 d8 e8 g4 g4 | g1 |
  
  \sect "A2"
  
  r8 f8 f8 f8 a2 | r8 g8 g8 g8 bf2 | r8 a8 a8 a8 b2 | r8 c8 c8 c8 e2 |
  \break
  r8 e8 e8 c8 c8 a8 a8 e8 | e1 | r4 d8 e8 g4 g4 | g1 |
  
  \sect "B"
  
  b8 b4 b8 b8 c4 d8 | c8 c4.~ c2 | b8 b4 b8 b8 c4 d8 | c1 |
  \break
  b8 b4 b8 b8 c4 d8 | c8 c4.~ c4 c8 c8 | e4 e4 e4 a,4 | d1 |
  
  \sect "A3"

  r8 f,8 f8 f8 a2 | r8 g8 g8 g8 bf2 | r8 a8 a8 a8 b2 | r8 c8 c8 c8 e2 |
  \break
  r8 e8 e8 c8 c8 a8 a8 e8 | e1 | r4 d8 e8 g4 g4 | g2. r4 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
