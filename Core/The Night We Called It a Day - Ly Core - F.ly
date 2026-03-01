%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "The Night We Called It a Day"
  subtitle = \instrument
  poet = "Tom Adair"
  composer = "Matt Dennis"
  copyright = \markup \small { \now " " "© 1941 Music Sales Corp." }
}

refrainLyrics = \lyricmode {
There was a moon out in space
but a cloud drift -- ed o -- ver its face.
You kissed me and went on your way
the night we called it a day.

I heard the song of the spheres
like a mi -- nor la -- ment in my ears.
I had -- n't the heart left to pray
the night we called it a day.

Soft through the dark,
the hoot of an owl in the sky.
Sad though his song,
no blu -- er was he than I.

The moon went down, stars were gone,
but the sun did -- n't rise with the dawn.
There was -- n't a thing left to say
the night we called it a day.
}

refrainChords = \chordmode {
  s2
  
  g2:m7.5- c2:7.9- f1:maj7 e2:m7.5- a2:7 d1:m7
  g1:7 a2:m7 af2:7 g2:m7 gf2:7 f1:maj7

  g2:m7.5- c2:7.9- f1:maj7 e2:m7.5- a2:7 d1:m7
  g1:7 a2:m7 af2:7 g2:m7 gf2:7 f1:maj7

  c2:m7 f2:7 bf1:maj7 a1:7.5+.9+ d1:m7
  e2:m7.5- a2:7.5+ d1:m7 d2:m7.5- g2:7.9- g2:m7 c2:7

  g2:m7.5- c2:7.9- f1:maj7 e2:m7.5- a2:7 d1:m7
  d2:m7 d2:m7/c b2:m7.5- bf2:7 a4:m7 af4:7 g4:m7 gf4:7 f1:maj7
}

refrainKey = f

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
  \tempoFour "Medium Ballad [Frank Sinatra 1942]" 80

  \partial 2 \tuplet 3/2 { c4 c4 c4 } |

  \sectStart "A1"
  
  c'2 df4 bf4 | a2. c,8 c8 | 
  \tuplet 3/2 { a'4 a4 a4 } \tuplet 3/2 { a4 bf4 g4 } | f2. d4 |
  \tuplet 3/2 { f4 f4 f4 } \tuplet 3/2 { g4 f4 d4 } | c2. c4 |
  c4 c4 \tuplet 3/2 { c4 df4 ef4 } | c2 \tuplet 3/2 { c4 c4 c4 } |
  
  \sect "A2"

  c'2 df4 bf4 | a2. c,8 c8 | 
  \tuplet 3/2 { a'4 a4 a4 } \tuplet 3/2 { a4 bf4 g4 } | f2. d4 |
  \tuplet 3/2 { f4 f4 f4 } \tuplet 3/2 { g4 f4 d4 } | c2. c4 |
  c4 c4 \tuplet 3/2 { c4 df4 ef4 } | c1 |
  
  \sect "B"
  
  d'2 c4 c4 | a2. a4 |
  \tuplet 3/2 { c4 c4 c4 } \tuplet 3/2 { c4 bf4 c4 } | a1 |
  bf2 a4 a4 | f2. f4 |
  \tuplet 3/2 { f4 f4 f4 } f4 d4 | c2 \tuplet 3/2 { c4 c4 c4 } |
  
  \sect "A3"

  c'2 df4 bf4 | a2. c,8 c8 | 
  \tuplet 3/2 { a'4 a4 a4 } \tuplet 3/2 { a4 bf4 g4 } | f2. d4 |
  \tuplet 3/2 { f4 f4 f4 } \tuplet 3/2 { a4 a4 a4 } | d2. df4 |
  c4 c4 \tuplet 3/2 { c4 df4 c4 } | c2. r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
