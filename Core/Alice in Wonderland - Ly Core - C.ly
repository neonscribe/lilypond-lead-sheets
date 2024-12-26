%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Alice in Wonderland"
  subtitle = \instrument
  poet = "Bob Hilliard"
  composer = "Sammy Fain"
  copyright = "© 1951 Walt Disney Music Company"
}

refrainLyricsOne = \lyricmode {
Al -- ice in Won -- der -- land, how do you get to Won -- der -- land?
O -- ver the hill or un -- der -- land or just be -- hind the tree. __ ""

Where do stars go? Where is the cres -- cent moon? __ 
They must be some -- where in the sun -- ny af -- ter -- noon.

Al -- ice in Won -- der -- land, where is the path to Won -- der -- land?
O -- ver the hill or here or there? I won -- der where. __
}

refrainLyricsTwo = \lyricmode {
When clouds go roll -- ing by, they roll a -- way and leave the sky.
Where is the land be -- yond the eye that peo -- ple can -- not _ see? __ ""
}

refrainChords = \chordmode {
  d2.:m7 g2.:7 c2.:maj7 f2.:maj7 b2.:m7.5- e2.:7
  a2.:m7 ef2.:7 d2.:7 g2.:7 e2.:m7 a2.:m7
  d2.:m7 g2.:7
  
  e2.:m7 a2.:7
  
  c2.:maj7 a2:maj7 a4:7
  
  d2.:7 g2.:7 a2.:m7 a2.:m7 d2.:m7 g2.:7 c2.:maj7 f2.:maj7
  fs2.:m7.5- b2.:7.9- e2.:m7 a2.:7 d2:m7 a4:7 d2:m7 a4:7 d2:m7 af4:7 g2.:7

  d2.:m7 g2.:7 c2.:maj7 f2.:maj7 b2.:m7.5- e2.:7
  a2.:m7 ef2.:7 d2.:7 g2.:7 e2.:m7 a2.:m7
  d2.:m7 g2.:7 c2.:maj7 c2.:maj7
}

refrainKey = c

refrainMelody = \relative f' {
  \time 3/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Jazz Waltz" 4 = 170

  \xTextMark \markup{ \bold \box "A1, A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  g,2. | g'2 f4 | e2 c4 | g2. | d'4 e4 f4 | e2 d4 | e2 c4 | g2. |
  \break
  d'4 e4 f4 | e2 d4 | e2 g4 | c2 a4 |
  \break
  g2 f4 | e2 d4 |
  \alternative { \volta 1 {
  g2.~ | g2. |
  } \volta 2 {
  c,2.~ | c2. |
  } } }
  \sect "B"
  
  d2. | a'2. | g2. | c,2. | d4 e4 f4 | g2 a4 | b2( g4 | e2) r4 |
  \break
  fs2. | c'2. | b2 g4 | e2. | a2 g4 | f2 e4 | d2 c4 | b2. |

  \sect "A3"
  
  g2. | g'2 f4 | e2 c4 | g2. | d'4 e4 f4 | e2 d4 | e2 c4 | g2. | 
  \break
  d'4 e4 f4 | e2 d4 | e2 g4 | c2 a4 |
  \break
  g2( f4) | e2( d4) | c2.~ | c2. |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"
