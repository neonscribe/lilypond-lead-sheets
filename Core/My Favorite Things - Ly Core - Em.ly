%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "My Favorite Things"
  subtitle = \instrument
  poet = "Oscar Hammerstein II"
  composer = "Richard Rodgers"
  copyright = \markup \small "© 1959 Richard Rodgers and Oscar Hammerstein II"
}

refrainLyricsOne = \lyricmode {
Rain -- drops on ros -- es and whisk -- ers on kit -- tens,
bright cop -- per ket -- tles and warm wool -- en mit -- tens;

Brown pa -- per pack -- ag -- es tied up with string,
these are a few of my fa -- vor -- ite things.

Girls in white dress -- es with blue sat -- in sash -- es,
snow -- flakes that stay on my nose and eye -- lash -- es,
sil -- ver white win -- ters that melt in -- to spring,
these are a few of my fa -- vor -- ite things.

When the dog bites, when the bee stings, when I'm feel -- ing sad, __
I sim -- ply re -- mem -- ber my fa -- vor -- ite things
and then I don't feel __ so bad. __
}

refrainLyricsTwo = \lyricmode {
Cream col -- ored po -- nies and crisp ap -- ple strud -- els,
door -- bells and sleigh bells and schnit -- zel with noo -- dles;

Wild geese that fly with the moon on their wings,
these are a few of my fa -- vor -- ite things.
}

refrainChords = \chordmode {
  e2.:m7 fs2.:m7 e2.:m7 fs2.:m7 c2.:maj7 c2.:maj7 c2.:maj7 c2.:maj7
  a2.:m7 d2.:7 g2.:maj7 c2.:maj7 g2.:maj7 c2.:maj7 fs2.:m7.5- b2.:7
  
  e2.:maj7 fs2.:m7 e2.:maj7 fs2.:m7 a2.:maj7 a2.:maj7 a2.:maj7 a2.:maj7 
  a2.:m7 d2.:7 g2.:maj7 c2.:maj7 g2.:maj7 c2.:maj7 fs2.:m7.5- b2.:7

  e2.:m7 e2.:m7 f2.:m7.5- b2.:7 e2.:m7 e2.:m7 c2.:maj7 c2.:maj7 

  c2.:maj7 c2.:maj7 a2.:7 a2.:7 g2.:maj7 c2.:maj7 c2.:maj7 d2.:7
  g2.:6 c2.:maj7 g2.:6 c2.:maj7 g2.:6 c2.:maj7 f2.:m7.5- b2.:7
  
  e2.:m7
}

refrainKey = e

refrainMelody = \relative f' {
  \time 3/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Jazz Waltz" 4 = 180

  \xTextMark \markup{ \bold \box "Minor A1, A2" }
  \bar ".|:"
  \repeat volta 2 {
  e4 b'4 b4 | fs4 e4 e4 | b4 e4 e4 | fs4 e2 |
  e4 b'4 b4 | fs4 e4 e4 | b4 e4 e4 | fs4 e2 |
  \break
  e4 b'4 a4 | e4 fs4 d4 | d4 a'4 g4 | c,2. |
  b4 c4 d4 | e4  fs4 g4 | a4 b4 a4 | ds,2. |
  }
  \break

  \xTextMark \markup{ \bold \box "Major A" }
  
  e4 b'4 b4 | fs4 e4 e4 | b4 e4 e4 | fs4 e2 |
  e4 b'4 b4 | fs4 e4 e4 | b4 e4 e4 | fs4 e2 |
  \break
  e4 b'4 a4 | e4 fs4 d4 | d4 a'4 g4 | c,2. |
  b4 c4 d4 | e4 fs4 g4 | a4 as4 b4 | c2. |
  
  \sect "Minor B"
  
  r4 b4 b4 | b2 e,4 | r4 a4 a4 | a2 ds,4 | 
  r4 g4 g4 | g2 b,4 | e2.~ | e2 e4 |
  
  \sect "Major C"
  
  e4 fs4 e4 | e4 d4 e4 | g4 a4 g4 | a2 g4 |
  b4 c4 b4 | c2.~ | c2. | b2. |
  \break
  g2.~ | g2.~ | g2.~ | g2. |
  R2.*1 | R2.*1 | R2.*1 | R2.*1_"D.C. for solos" |

  \bar "|."

  \xTextMark \markup{ \bold \box "End" }

  R2.*1\fermata |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"
