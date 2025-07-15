%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "It's a Sin to Tell a Lie"
  subtitle = \instrument
  poet = ""
  composer = "Billy Mayhew"
  copyright = \markup \small "© 1933 Warner Bros, Inc."
}

refrainLyrics = \lyricmode {
Be sure it's true when you say, “I love you.”
It's a sin to tell a lie. __
Mil -- lions of hearts have been bro -- ken
just be -- cause these words were spo -- ken.
I love you, yes, I do, I love you.
If you break my heart I'll die. __
So be sure that it's true when you say, “I love you.”
It's sin to tell a lie. __
}

refrainChords = \chordmode {
  s2.
  
  c1 g1:7.5+ c1:6 c1:7
  c1 e1:7 f2 a2:7/e d1:m7
  
  g1:7 g1:7 c1:dim7 c1
  d1:7 d1:7 f1:m6 g1:7

  c1 g1:7.5+ c1:6 c1:7
  c1 e1:7 f2 a2:7/e d1:m

  f1:6 f1:m6 c2 bf2:7 a1:7
  d1:7 g1:7 c1 c2
  \chordInsideParens{ g2:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Two-Beat [Billie Holiday 1942]" 2 = 74

  \partial 2. g4 g4 a4 |

  \sectNoBreak "A1"
  
  e2 g4 a4 | ds,2 b'2 | a1 | e2 b'4 c4 |
  \break
  g2. c4 | gs2. b4 | a1~ | a1 |
  
  \sect "B"
  
  b2 a4 d,4 | f2 a4 b4 | a1 | g1 |
  \break
  d4 e4 fs4 g4 | a2 d2 | c1 | b4 r4 g4 a4 |
  
  \sect "A2"

  e2 g4 a4 | ds,2 b'2 | a1 | e2 b'4 c4 |
  \break
  g2. c4 | gs2. b4 | a1~ | a4 r4 b4 c4 |
  
  \sect "C"
  
  d2. c4 | af2 d4 df4 | c2 c4 g4 | e'2 g,4 gs4 |
  \break
  a2 as2 | b2 e2 | c1~ | c4 r4 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
