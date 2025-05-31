%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Some Other Time"
  subtitle = \instrument
  poet = "Betty Comden & Adolph Green"
  composer = "Leonard Bernstein"
  copyright = \markup \small "© 1945 Warner Bros. Inc."
}

refrainLyrics = \lyricmode {
Where has the time all gone to?
Have -- n't done half the things we want to.
Oh, well, we'll catch up some oth -- er time. __
oth -- er time. __
Just when the fun is start -- ing,
comes the time for part -- ing.
But, let's be glad for what we've had and what's to come.
There's so much more em -- brac -- ing
still to be done, but time is rac -- ing.
Oh, well, we'll catch up some oth -- er time. __
}

refrainLyricsTwo = \lyricmode {
This day was just a to -- ken,
Too man -- y words are still un -- spo -- ken.
}

refrainChords = \chordmode {
  c2:maj7 g2:sus9 c2:maj7 g2:sus9 c2:maj7 g2:sus9 g2:m7 d4/fs f4:m6
  e2:m7 a2:7.9- d4:m7 e4:m7 f4:maj7 g4:sus9
  
  c2:maj7 g2:sus9 c2:maj7 g2:sus9
  
  c2:maj7 g2:sus9 c2:maj7 bf4:m7 ef4:7
  
  af2:maj7 ef2:sus9 af2:maj7 ef2:sus9 af2:maj7 ef2:sus9 af2:maj7 ef2:sus9
  af2:maj7 g2:7.5+.9- c4:maj7 e4:m7 a4:m7 ef4:9 d2:sus9 d2:7 d2:m7 g2:7
  
  c2:maj7 g2:sus9 c2:maj7 g2:sus9 c2:maj7 g2:sus9 g2:m7 d4/fs f4:m6
  e2:m7 a2:7.9- d2:m7 g2:sus9 c2:maj7 g2:sus9 c2:maj7
  \chordInsideParens{ g2:sus9 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad" 4 = 60

  \xTextMark \markup{ \bold \box "A1,A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  \tuplet 3/2 { e4 f4 g4 } g4 g4 | a4 g2. | \tuplet 3/2 { c4 bf4 a4 } g4 g4 |
  \break
  f4 e4 d4 c4 | r4 e'4 e,2 | f8 g8 a2 c4 |
  \alternative { \volta 1 {
  c,8 d8 e2.~ | e1 |
  } \volta 2 {
  c8 d8 c2.~ | c2 r2 |
  } } }
  \sect "B"
  
  c8 df8 ef4 ef4 ef4 | af4 ef2. | c'4. bf8 c4. bf8 | af4 ef2. |
  \break
  c8 df8 ef4 ef4 ef4 | e4 g4 a4 c4 | d2. d,4 | f1 |
  
  \sect "A3"

  \tuplet 3/2 { e4 f4 g4 } g4 g4 | a4 g2. | \tuplet 3/2 { c4 bf4 a4 } g4 g4 |
  f4 e4 d4 c4 |
  \break
  r4 e'4 e,2 | f8 g8 a2 c4 |
  c,8 d8 c2.~ | c1 |
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
