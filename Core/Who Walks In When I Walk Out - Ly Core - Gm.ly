%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Who Walks In When I Walk Out?"
  subtitle = \instrument
  poet = ""
  composer = "Ralph Freed, Al Hoffman and Al Goodhart"
  copyright = "© 1933 Southern Music Pub. Co. Inc."
}

refrainLyrics = \lyricmode {
Who walks in when I walk out? And who gives you that “Hi _ _ _ ba -- by.”
Who's it who got me jeal -- ous of you? __

Who walks in when I walk out? Now don't you know that you're _ _ my ba -- by.
Who's it who got me wor -- ry -- ing too? __

When we kiss, I kind -- a miss some -- thing that used to be. __
Ev -- ry day while I'm a -- way I got a feel -- ing that you're fool -- ing me. __

Who walks in when I walk out? And who gives you that “Hi _ _ _ ba -- by.”
Who's it who got me jeal -- ous of you? __
}

refrainChords = \chordmode {
  g2:m g2:m/f g2:m/e g2:m/ef g2:m g2:m/f ef2:7 d2:7
  ef1:7 d1:7 g1:m a2:m7.5- d2:7.9-
  
  g2:m g2:m/f g2:m/e g2:m/ef g2:m g2:m/f ef2:7 d2:7
  ef1:7 d1:7 g1:m g1:m
  
  g1:7 g1:7 c1:7 c1:7
  f1:7 f1:7 bf1:7 a2:m7.5- d2:7.9-

  g2:m g2:m/f g2:m/e g2:m/ef g2:m g2:m/f ef2:7 d2:7
  ef1:7 d1:7 g1:m
  \chordOpenParen{ a2:m7.5- }
  \chordCloseParen{ d2:7.9- }
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium" 4 = 140

  \xTextMark \markup{ \bold \box "A1" }

  d4 g4 bf4. g8 | d4 g4 bf4. g8 | d4 g4 bf4 g4 | cs8 d8 cs8 d8 bf8 g4. |
  \break
  a4 a4 d,2 | a'4 a8 d,8~ d8 bf'8 a4 | g1~ | g2. r4 |
  
  \sect "A2"
  
  d4 g4 bf4. g8 | d4 g4 bf4. g8 | d4 g4 bf4 g4 | cs8 d8 cs8 d8 bf8 g4. |
  \break
  a4 a4 d,2 | a'4 a8 d,8~ d8 bf'8 a4 | g1~ | g2. r4 |

  \sect "B"
  
  d'4 d4 g,2 | d'8 e4 d8 g,2 | g8 a4 g8 bf4 a8 g8~ | g1 |
  \break
  c4 c4 f,2 | c'8 d4 c8 f,2 | r8 d8 g8 bf8 d8 bf8 g8 d8 | a'8 a4 d8~ d2 |
  
  \sect "A3"

  d,4 g4 bf4. g8 | d4 g4 bf4. g8 | d4 g4 bf4 g4 | cs8 d8 cs8 d8 bf8 g4. |
  \break
  a4 a4 d,2 | a'4 a8 d,8~ d8 bf'8 a4 | g1~ | g2. r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
