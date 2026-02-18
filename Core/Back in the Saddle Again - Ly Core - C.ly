%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "Back in the Saddle Again"
  subtitle = \instrument
  poet = ""
  composer = "Gene Autry and Ray Whitley"
  copyright = \markup \small { \now " " "© 1939 Gene Autry's Western Music Publishing Co." }
}

refrainLyrics = \lyricmode {
I’m back in the sad -- dle a -- gain.
Out where a friend is a friend.
Where the long -- horn cat -- tle feed
on the low -- ly jim -- son weed.
Back in the sad -- dle a -- gain.

Rid -- in’ the range once more.
Tot -- in’ my old for -- ty -- four.
Where you sleep out ev -- 'ry night __
and the on -- ly law is right.
Back in the sad -- dle a -- gain. __

Whoop -- pi -- ti -- yi -- yo,
rock -- in’ to and fro.
Back in the sad -- dle a -- gain.
Whoop -- pi -- ti -- yi -- yay,
I go my way.
Back in the sad -- dle a -- gain.
}

refrainChords = \chordmode {
  s4
  
  c1 g1:7 c1 c1:7
  f1 f1 c1 c1:7
  f1 f1 c1 c1
  d1:7 d1: g1:7 g1:7

  c1 g1:7 c1 c1:7
  f1 f1 c1 c1:7
  f1 f1 c1 c1
  c1 g1:7 c1 c1:7
  
  f1 f1 c1 c1
  c1 c1 g1:7 g1:7
  f1 f1 c1 c1
  c1 g1:7 c1 c1
  
}

refrainKey = c

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Slow [Gene Autry 1939]" 4 = 100

  \partial 4 e4 |

  \sectNoBreak "Verse 1"
  
  e4 e2 e4 | f4 e2 d4 | c1 | r1 |
  f2 f4 g4 | a2 g4 fs4 | g1 | r2 g4 gs4 |
  a4 a4 gs8 a4. | c2 c4. c8 | a4 g4 g4 a4 | e2 r2 |
  d4 d2 d4 | fs4 g2 a4 | g1 | r1 |
  
  \sect "Verse 2"
  
  e4 e2 e4 | d2 e2 | c1 | r1 |
  f4 f2 g4 | a2 g4 fs4 | g1 | r2 g4 gs4 |
  a4 a4 gs8 a4 c8~ | c2 c4. c8 | a4 g4 g4 a4 | e2 r2 |
  e4 e2 e4 | f4 e2 d4 | c1~ | c2 g'4 gs4 |
  
  \sect "Chorus"
  
  a2 f2 | c'1 | a4 g4 g4 e4 | g1 |
  g4 g2 g4 | a4 g2 e4 | d1~ | d2 g4 gs4 |
  a2 f2 | c'2. b4 | a4 g2 g4~ | g1 |
  e4 e2 e4 | f4 e2 d4 | c1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
