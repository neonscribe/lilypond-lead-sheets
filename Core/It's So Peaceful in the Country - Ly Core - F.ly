%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "It's So Peaceful in the Country"
  subtitle = \instrument
  poet = ""
  composer = "Alec Wilder"
  copyright = \markup \small { \now " " "© 1941 Ludlow Music, Inc." }
}

refrainLyrics = \lyricmode {
It's so peace -- ful in the coun -- try.
It's so sim -- ple and qui -- et
you real -- ly ought to try it.
You walk a -- bout and talk a -- bout
The plea -- sant things in life.

It's so rest -- ful in the coun -- try.
It's the right kind of di -- et.
You real -- ly ought to try it.
You lie and dream be -- side a stream
where dai -- sies nod hel -- lo.

Cit -- y liv -- ing is a pret -- ty liv -- ing.
It's so full of un -- ex -- pect -- ed thrills.
But there's too much stone,
too much tel -- e -- phone.
There's too much of ev -- 'ry -- thing but trees and hills.

It's so peace -- ful in the coun -- try
It's so sim -- ple and qui -- et
some -- day you're bound to try it.
The on -- ly place to be.
The place for you and me
where it's peace -- ful in the coun -- try.
}

refrainChords = \chordmode {
  s4

  g1:m7 c1:7.9- f2:maj7 af2:dim7 g2:m7 g2:m7/f
  e2:m7.5- a2:7.9- d2:m7 d2:m7/c b2:m7 e2:7.9- a2:m7 d2:7

  g1:m7 c1:7.9- f2:maj7 af2:dim7 g2:m7 g2:m7/f
  e2:m7.5- a2:7.9- d2:m7 g2:7 g2:m7 c2:7 f1:6

  a2:7 g2:7 a2:7 g2:7 a2:7 g2:7 a1:7
  d2:m7 d2:m7/c bf2:maj7 a2:7 d1:m7 g2:m7 c2:7

  g1:m7 c1:7.9- f2:maj7 af2:dim7 g2:m7 g2:m7/f
  e2:m7.5- bf2:7 a2:m7 af2:7.9- g2:m7 c2:7 f2:6
  \chordInsideParens{ d2:7.9- }
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
  \tempoFour "Medium Ballad [Mildred Bailey 1941]" 80

  \partial 4 a8 bf8 |
  \bar "||"

  \sectStart "A1"
  
  c8 d,4.~ d4 g8 a8 | bf8 df,4.~ df4 a'8 g8 | e8 e8 e8 e8~ e8 f4 e8 | d8 e8 f8 g8 a8 bf4 c8 |
  g8 g8 g2 a4 | f8 f8 f2 g4 | e8 e8 e2 f4 | d2. a'8 bf8 |
  
  \sect "A2"
  
  c8 d,4.~ d4 g8 a8 | bf8 df,4.~ df4 a'8 g8 | e8 e8 e8 e8~ e8 f4 e8 | d8 e8 f8 g8 a8 bf4 c8 |
  g8 g8 g2 a4 |
  \break
  f8 f8 f2 e4 |
  d8 d8 d2 e4 | f1 |
  \bar "||"
  
  \xPageBreak

  \sectNoBar "B"
  
  e8 e4. f8 a8 g8 f8 | e8 e4. f8 a8 g8 f8 | e4. e8 f8 a8 g8 f8 | e2. e8 e8 |
  f8 f4 a8~ a4 a8 a8 | c8 d4 a8~ a4. c8 | e8 e4 d8 e8 d8 c8 a8 | d8 bf4 e,8~ e4 a8 bf8 |

  \sect "A3"

  c8 d,4.~ d4 g8 a8 | bf8 df,4.~ df4 a'8 g8 | e8 e8 e8 e8~ e8 f4 e8 | d8 e8 f8 g8 a8 bf4 c8 |
  d8 d8 d8 d8 d4. e8 |
  \break
  c8 c8 c8 c8 c4 d8 df8 |
  c8 d,4.~ d4 e8 f8 | g8 f4.~ f2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
