%% -*- Mode: LilyPond -*-

songID = "2026-08-11T16:26:30.917548Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Feeling Good"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Leslie Bricusse, Anthony Newley"
headerCopyright = "© 1964 Musical Comedy Productions"

refrainLyrics = \lyricmode {
Birds fly -- ing high, you know how I feel.
Sun in the sky, you know how I feel.
Breeze drift -- ing by, you know how I feel
It's a new dawn,
it's a new day,
it's a new life __ for __ me, __
feel -- ing good. __

Dra -- gon -- fly out in the sun, you know what I mean.
But -- ter -- flies all hav -- ing fun, you know what I mean.
Sleep in peace when day is done, that's what I mean. __
And this old world is a new world
and a bold world __ for __ me. __

Stars when you shine, you know how I feel.
Scent of the pine, you know how I feel.
Free -- dom is mine, I know how I feel.
It's a new dawn,
it's a new day,
it's a new life __ for __ me, __
feel -- ing good. __
}

refrainLyricsTwo = \lyricmode {
Fish in the sea, you know how I feel.
River run -- ning free, you know how I feel.
Blossom on the tree, you know how I feel.
}

refrainChords = \chordmode {
  d2:m7 g2:7 d2:m7 g2:7 d2:m7 g2:7 f2 a2 
  d2:m7 bf2:maj7 f2 g2 d2:m bf2 f2:maj7 bf2:maj7
  g2:7 g2:m7 d2:m g2:9 d2:m g2:9

  d2:m f2:maj7 bf2:maj7 f2:maj7 d2:m a2:m f2:maj7 bf2:maj7
  f2:6 d2:m bf2:maj7 g2:9 f2 d2:m bf2 g2:m7
  d2:m g2:9 d2:m g2:9

  d2:m7 g2:7 d2:m7 g2:7 d2:m7 g2:7 f2 a2 
  d2:m7 bf2:maj7 f2 g2 d2:m bf2 f2:maj7 bf2:maj7
  g2:7 g2:m7 d1:m
}

refrainKey = d
isMinor = ##t

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempoFour "Slow [Nina Simone 1965]" 78

  \sectNoBar "A1,A2"
  
  \bar ".|:"
  \repeat volta 2 {
  d4 f8 g8 a2 | a8 d,8 f8 g8 a2 | d,4 f8 g8 a2 | c8 a8 a8 g8 a2 |
  a4 d8 c8 d2 | a8 d,8 f8 g8 a4. d,16 d16 |
  f4 g8 f16 f16 g4 a8 g16 g16 | a4 c4~ c8 r8 \tuplet 3/2 { a8( g8 d8) } |
  f4( g4~ g8) r8 d8 c8 | d1~ | d2 r2 |
  }
  \bar "||-:|."

  \sectNoBar "B"
  
  d8 e8 f8 g8 a8 c8 c4 | d8 a8 a8 g8 a2 | d,8 e8 f8 g8 a8 c8 c4 | c8 a8 a8 c8 d2 |
  d8 c8 c8 a8 a8 f8 f4 | a8 f8 f8 f8~ f4 r8 a,16 a16 | c4 d8 c16 c16 d4 f8 d16 d16 | f4 g4~ g8 r8 d8( c8) |
  d1~ | d2 r2 |
  
  \sectPageBreak "A3"

  d4 f8 g8 a2 | a8 d,8 f8 g8 a2 | d,4 f8 g8 a2 | c8 a8 a8 g8 a2 |
  a4 d8 e8 d2 | a8 d,8 f8 g8 a4. d,16 d16 |
  f4 g8 f16 f16 g4 a8 g16 g16 | a4 c4~ c8 r8 \tuplet 3/2 { a8( g8 d8) } |
  f4( g4~ g8) r8 d'8 c8 | d1~ | d2 r2 |

  \bar "|."
}

\include "../Include/refrainonly.ily"
