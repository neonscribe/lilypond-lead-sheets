%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "I Want to Be Happy"
  subtitle = \instrument
  poet = "Irving Caesar"
  composer = "Vincent Youmans"
  copyright = \markup \small "© 1924 HARMS Inc."
}

refrainLyrics = \lyricmode {
I want to be hap -- py  but I won't be hap -- py till I make you hap -- py too. __
Life's real -- ly worth liv -- ing, when we are mirth giv -- ing.
Why can't I give some to you? __
When skies are gray and you say you are blue,
I'll send the sun smil -- ing through. __
I want to be hap -- py  but I won't be hap -- py till I make you hap -- py too.
}

refrainChords = \chordmode {
  c1:maj7 c2:maj7 cs2:dim7 d1:m7 g1:7
  d1:m7 g1:7 c2:6 a2:m7 d2:m7 g2:7

  c1:maj7 c2:maj7 cs2:dim7 d1:m7 g1:7
  d1:m7 g1:7 c1:6 c1:6
  
  g1:m7 c1:7 f1:maj7 bf1:9
  e1:m7 a1:7 d1:7 g1:7

  c1:maj7 c2:maj7 cs2:dim7 d1:m7 g1:7
  d1:m7 g1:7 c1:6
  \chordOpenParen{ d2:m7 }
  \chordCloseParen{ g2:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium or Up [Stan Getz and Oscar Peterson 1957]" 4 = 260

  \xTextMark \markup{ \bold \box "A1" }
  
  e4 g2 e4 | g2 e4 g4 | f4 g2 f4 | g2 f4 g4 |
  \break
  f4 g2 f4 | g2 f4 d'4 | c1~ | c2 r2 |
  
  \sect "A2"
  
  e,4 g2 e4 | g2 e4 g4 | f4 g2 f4 | g2 f4 g4 |
  \break
  f4 g2 f4 | g2 f4 d'4 | c1~ | c2 r2 |
  
  \sect "B"
  
  bf4 c2 bf4 | c2 bf4 c4 | a4 c2 a4 | f2. r4 |
  \break
  e4 g2 e4 | g2 e4 g4 | d1~ | d2 r2 |
  
  \sect "A3"

  e4 g2 e4 | g2 e4 g4 | f4 g2 f4 | g2 f4 g4 |
  \break
  f4 g2 f4 | g2 f4 d'4 | c1 | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
