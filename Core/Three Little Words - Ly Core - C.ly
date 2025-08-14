%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Three Little Words"
  subtitle = \instrument
  poet = "Bert Kalmar"
  composer = "Harry Ruby"
  copyright = \markup \small "© 1930 Warner Bros. Inc."
}

refrainLyrics = \lyricmode {
Three lit -- tle words, __ oh, what I'd give for that won -- der -- ful phrase, __
to hear those three lit -- tle words, __ that's all I'd live for the rest of my days. __
And what I feel in my heart __ they tell sin -- cere -- ly.
No oth -- er words __ can tell it half so clear -- ly.
Three lit -- tle words, eight lit -- tle let -- ters which sim -- ply mean “I __ love you.” __
}

refrainChords = \chordmode {
  c1:maj7 c1:maj7 c1:maj7 ef2:m7 af2:7
  d1:m7 g1:7 d1:m7 g1:7
  
  c1:maj7 c1:maj7 c1:maj7 ef2:m7 af2:7
  d1:m7 g1:7 d1:m7 g1:7
  
  g1:m7 c1:7 g1:m7 c1:7
  f1:maj7 f1:maj7 bf2:7 a2:7 af2:7 g2:7
  
  c1:maj7 c1:maj7 c1:maj7 ef2:m7 af2:7
  d1:m7 g1:7 c1:6
  \chordOpenParen{ d2:m7 }
  \chordCloseParen{ g2:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Duke Ellington 1930]" 4 = 170

  \xTextMark \markup{ \bold \box "A1" }
  
  c'4 g4 a4 e4~ | e1~ | e4 g4 a4 g4 | bf4 bf2 a4 |
  \break
  g4 e4 f4 d4~ | d1~ | d2 g2 | a2 b2 |
  
  \sect "A2"
  
  c4 g4 a4 e4~ | e1~ | e4 g4 a4 g4 | bf4 bf2 a4 |
  \break
  g4 e4 f4 d4~ | d1~ | d2 g2 | a2 b2 |
  
  \sect "B"
  
  c4 a4 bf4 g4~ | g4 a4 bf4 c4 | d1 | e,1 |
  \break
  a4 e4 f4 d4~ | d4 e4 f4 g4 | af2 a2 | c2 b2 |
  
  \sect "A3"

  c4 g4 a4 e4~ | e1~ | e4 g4 a4 g4 | bf4 bf2 a4 |
  \break
  g4 e4 f4 d'4~ | d2 e2 | c1~ | c2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
