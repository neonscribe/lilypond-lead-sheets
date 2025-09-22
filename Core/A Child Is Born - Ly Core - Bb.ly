%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "A Child Is Born"
  subtitle = \instrument
  poet = "Alec Wilder"
  composer = "Roland Hanna (credited to Thad Jones)"
  copyright = \markup \small "© 1969 D'Accord Music, Inc."
}

refrainLyrics = \lyricmode {
Now
out of the night,
new as the dawn,
in -- to the light,
this child,
in -- no -- cent child,
soft as the fawn,
this child is born.

One __ small heart,
one pair of eyes,
one work of art
here in my arms,
here he lies,
trust -- ing and warm,
bless -- ed this morn
a child is born.
}

refrainChords = \chordmode {
  bf2.:maj7 ef2.:m6/bf bf2.:maj7 ef2.:m6/bf 
  bf2.:maj7 ef2:m6/bf bf4 a2.:m7.5- d2.:7.9-
  
  g2.:m7 d2.:7.9- g2.:m7 d2.:7.9-
  g2.:m7 c2.:7 c2.:m9/f f2.:7

  bf2.:maj7 ef2.:m6/bf bf2.:maj7 ef2.:m6/bf
  bf2.:maj7 d2.:7.5+.9+ ef2.:maj7 af2:9 c4:m7.5-/gf
  bf2.:maj7/f ef2.:m6/gf g2.:m7 c2.:7
  c2.:m9/f f2.:7 bf2.:maj7 ef2.:m6/bf bf2.:maj7
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 3/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad [Thad Jones-Mel Lewis 1970]" 4 = 75

  \xTextMark \markup{ \bold \box "A1" }
  
  d2. | ef4 f4 bf4 | d,2. | ef4 f4 bf4 |
  \break
  d,2. | ef4 f4 bf4 | d2. | c2. |
  
  \sect "A2"
  
  d,2. | ef4 f4 bf4 | d,2. | ef4 f4 bf4 |
  \break
  d,2. | e4 g4 c4 | d2. | f,2~ f8 ef8 |
  
  \sect "B"
  
  d2. | ef4 f4 bf4 | d,2. | ef4 f4 bf4 |
  \break
  d,2. | f4 bf4 d4 | f2. | ef2 gf,4 |

  \sect "A3"

  f2. | ef4 f4 bf4 | d,2. | e4 g4 c4 |
  \break
  d2 f,4 | f2 f4 | f2. | ef4 f4 bf4 | d2. |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
