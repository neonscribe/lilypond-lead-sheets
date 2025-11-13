%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Let's Get Away From It All"
  subtitle = \instrument
  poet = "Tom Adair"
  composer = "Matt Dennis"
  copyright = \markup \small { \now " " "© 1941 Dorsey Bros. Music" }
}

refrainLyrics = \lyricmode {
Let's take a boat __ to Ber -- mu -- da. __
Let's take a plane __ to Saint Paul. __
Let's take a kay -- ak to Quin -- cy or Ny -- ack.
Let's get a -- way from it all. __

Let's take a trip __ in a trail -- er. __
No need to come __ back at all. __
Let's take a pow -- der to Bos -- ton for chow -- der.
Let's get a -- way from it all. __

We'll trav -- el 'round from town to town. __
We'll vis -- it ev -- 'ry state.
I'll re -- peat that “I love you sweet!” __
in all the for -- ty eight. __

Let's go a -- gain to Ni -- a -- g'ra. __
This time we'll look __ at the fall. __
Let's leave our hut, __ dear.
Get out of our rut, __ dear.
Let's get a -- way from it all. __
}

refrainChords = \chordmode {
  ef2:maj7 bf2:7.9- ef2:maj7 ef2:7 af2:maj7 fs2:dim7 g2:m7 c2:7.9-
  f2:m7 bf2:7 df2:7 c2:7 f1:7 f2:m7 bf2:7

  ef2:maj7 bf2:7.9- ef2:maj7 ef2:7 af2:maj7 fs2:dim7 g2:m7 c2:7.9-
  f2:m7 bf2:7 df2:7 c2:7 f2:m7 bf2:7 ef2:6 ef2:7
  
  af2:maj7 a4:m7.5- d4:7.9- g2:m7 c2:7 f2:m7 bf2:7 ef1:maj7
  bf2:maj7 b2:dim7 c2:m7 f2:7 bf1:7 f2:m7 bf2:7

  ef2:maj7 bf2:7.9- ef2:maj7 ef2:7 af2:maj7 fs2:dim7 g2:m7 c2:7.9-
  f2:m7 bf2:7 df2:7 c2:7 f2:m7 e2:7 ef2:6
  \chordInsideParens{ bf2:7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Swing [Frrank Sinatra 1958]" 4 = 118

  \sectStart "A1"
  
  g8 g8 g8 af8~ af8 bf8 af8 g8~ | g8 ef4.~ ef2 | c'8 c8 c8 c8~ c8 d8 c8 bf8~ | bf1 |
  \break
  af8 af8 g8 af8~ af8 bf4 af8 | g8 g8 fs8 g8~ g8 af4. | g8 g8 g8 g8~ g8 c8 g8 f8~ | f1 |
  
  \sect "A2"

  g8 g8 g8 af8~ af8 bf8 af8 g8~ | g8 ef4.~ ef2 | c'8 c8 c8 c8~ c8 d8 c8 bf8~ | bf1 |
  \break
  af8 af8 g8 af8~ af8 bf4 af8 | g8 g8 fs8 g8~ g8 af4. | g8 g8 g8 f8 ~ f8 ef8 d8 ef8~ ef2. ef4 |
  
  \sect "B"
  
  c'4 c4 c4 c4 | c8 d4 bf8~ bf4 c4 | af8 bf4 g8~ g4 fs4 | g2. r8 g8 |
  \break
  f4 d'4 d4 d4 | d8 ef4 c8~ c2 | r8 df8 c8 bf8 c8 bf4 bf8~ | bf1 |
  
  \sect "A3"

  g8 g8 g8 af8~ af8 bf8 af8 g8~ | g8 ef4.~ ef2 | c'8 c8 c8 c8~ c8 d8 c8 bf8~ | bf1 |
  \break
  af8 af8 g8 af8~ af8 bf4 af8 | g8 af8 bf8 c8~ c8 c4. | c8 c8 c8 d8~ d8 d8 d8 ef8~ | ef2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
