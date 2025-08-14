%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Stay a Little Longer"
  subtitle = \instrument
  poet = ""
  composer = "Tommy Duncan"
  copyright = \markup \small "© 1947 Red River Songs, Inc."
}

refrainLyrics = \lyricmode {
You ought to see my blue- eyed Sal -- ly,
she lives a -- way down on Shin -- Bone Al -- ley.
The num -- ber on the gate, the num -- ber on the door
and the next house o -- ver is a gro -- cery store.

Stay all night, stay a lit -- tle long -- er,
dance all night, and dance a lit -- tle long -- er.
Pull off your coat and throw it in the cor -- ner,
don't see why you don't stay a lit -- tle long -- er.
}

refrainChords = \chordmode {
  s4

  f2 f2/a bf2 b2:dim7 f2/c f2/a c1:7
  f2 f2/a bf2 b2:dim7 f2/c f2/a c2:7 f2
  
  f1 f1 c1:7 c1:7
  f1 bf1 f1 c2:7 f1

  f2 f2/a bf2 b2:dim7 f2/c f2/a c1:7
  f2 f2/a bf2 b2:dim7 f2/c f2/a c2:7 f2
  
  f2 f2/a bf2 b2:dim7 f2/c f2/a c1:7
  f2 f2/a bf2 b2:dim7 f2/c f2/a c2:7 f2
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Uptempo Two-Feel [Bob Wills 1945]" 4 = 240

  \partial 4 \invisEighth c8 |
  \bar "||"


  \xTextMark \markup{ \bold \box "Verse" }
  
  f4 f4 f4 d4 | f4 f4 f8 d4 c8 | f8 f8 f4 g4 a4 | c,4 d4 f8 f4 d8 |
  \break
  f8 d8 f8 g8 f4. d8 | f8 d8 f8 g8 f4 d8 c8 | f4 f4 g8 g8 a8 a8 | c,4 d4 f2 |
  
  \sect "Chorus"
  
  a8 a4. c2 | g8 a8 g8 f8 d4 f4 | a4 a4 g4. f8 | g8 a8 g8 f8 d4 f4 |
  \break
  a8 a4 a8 c4. a8 | g8 a8 g8 f8 d4 f4 | c4 c4 d8 d8 f4 |
  \time 2/4
  g8 a8 g8 f8 |
  \time 4/4
  d4 f2. |
  \sect "Solo"
  
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\pageBreak

\markup {
  \column 
  {
   \line { \large { Sitting in the window, singing to my love, } }
   \line { \large { Slop bucket fell from the window up above. } }
   \line { \large { Mule and the grasshopper eatin' ice cream. } }
   \line { \large { The mule got sick so they laid him on a beam. } }
   \vspace #1
   \line { \large { Can't go home if you're going by the mill } }
   \line { \large { 'Cause the bridge is washed out at the bottom of the hill. } }
   \line { \large { Big Creek's up, Little Creek's level, } }
   \line { \large { Plow my corn with a double shovel. } }
   \vspace #1
   \line { \large { Grab your gal and pat her on the head. } }
   \line { \large { If she don't like biscuits feed her cornbread. } }
   \line { \large { Girls around Big Creek about half grown, } }
   \line { \large { Jump on a man like a dog on a bone. } }
   }
}
