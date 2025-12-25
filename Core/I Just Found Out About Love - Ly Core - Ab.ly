%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

#(set-global-staff-size 18)

\header {
  title = "I Just Found Out About Love"
  subtitle = \instrument
  poet = "Harold Adamson"
  composer = "Jimmy McHugh"
  copyright = \markup \small { \now " " "© 1955 Cotton Club Publishing" }
}

refrainLyrics = \lyricmode {
I just found out a -- bout love __ and I like __ it, __ I like it. __
I like what love has been do -- ing to me. __
I hold you close in my arms __ and I like __ it, __ I like it. __
Oh, what a won -- der -- ful fu -- ture I see. __

It's a one time on -- ly.
It's a life -- time deal. __
And I know it's real. __
I can tell __ by the way that I feel. __

Right now I'm liv -- in' it up __ and I like it, __ I like it. __
Hey, you, give me a clue. __
What's love do -- ing to you? __
Looks like you could be lik -- ing it, too. __
}

refrainChords = \chordmode {
  af1:maj7 g2:m7.5- c2:7 f2:m7 af2:7 df2:maj7 gf2:7 
  af2:maj7 f2:7 bf2:7 ef2:7 af2:maj7 f2:m7 bf2:m7 ef2:7

  af1:maj7 g2:m7.5- c2:7 f2:m7 af2:7 df2:maj7 gf2:7 
  af2:maj7 f2:7 bf2:7 ef2:7 af2:maj7 df2:7 af1:maj7
  
  ef2:m7 af2:7 df1:maj7 ef2:m7 af2:7 df1:maj7
  f2:m7 bf2:7 ef1:maj7 bf1:m7 ef1:7

  af1:maj7 g2:m7.5- c2:7 f2:m7 af2:7 df2:maj7 gf2:7 
  af2:maj7 g1:m7.5- gf1:7 f1:7
  bf1:m7 ef1:7 af1:maj7
  \chordOpenParen{ bf2:m7 }
  \chordCloseParen{ ef2:7 }
}

refrainKey = af

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
  \tempo "Medium [Nat King Cole 1956]" 4 = 124

  \sectStart "A1"
  
  c'4 d,2 ef4 | c'8 ef,8 c'8 bf8~ bf8 c8 bf8 af8~ | af8 f4.~ f4 g8 af8~ | af8 bf,4.~ bf2 |
  \break
  ef4 c'2 ef,4 | d8 c'8 d,8 df8~ df8 bf'8 g8 af8~ | af1~ | af2 r2 |
  
  \sect "A2"

  c4 d,2 ef4 | c'8 ef,8 c'8 bf8~ bf8 c8 bf8 af8~ | af8 f4.~ f4 g8 af8~ | af8 bf,4.~ bf2 |
  \break
  ef4 c'2 ef,4 | d8 c'8 d,8 df8~ df8 bf'8 g8 af8~ | af1~ | af2 r8 af8 bf4 |
  
  \sect "B"
  
  df2 c4. af8~ | af8 af4. r8 af8 bf4 | d2 c4. af8~ | af2 r8 bf8 c4 |
  \break
  ef2 d4. bf8~ | bf2 r8 bf8 c8 ef8~ | ef8 bf8 c8 df8~ df8 af8 bf8 c8~ | c2. r4 |
  
  \sect "A3"

  c4 d,2 ef4 | c'8 ef,8 c'8 bf8~ bf8 c8 bf8 af8~ | af8 f4.~ f4 af4 | ef'8 df4.~ df2 |
  \break
  c2 c2 | c8 df8 ef8 c8~ c2 | c2 c2 | c8 df8 ef8 c8~ c2 |
  \break
  c2 c2 | c8 df8 ef8 c8~ c8 ef,8 bf'8 af8~ | af1~ | af2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
