%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "Detour"
  subtitle = \instrument
  poet = ""
  composer = "Paul Westmoreland"
  copyright = \markup \small { \now " " "© 1945 Hill and Range Songs, Inc." }
}

refrainLyrics = \lyricmode {
Head -- ed down life'd crook -- ed road, lot of things I nev -- er knowed,
and 'cause of me not know -- in' I now pine. __

Trou -- ble got in the trail, spent the next five years in jail,
should have read __ that de -- tour sign. __

De -- tour, __ there's a mud -- dy road a -- head,
De -- tour, __ paid no mind to what it said.
De -- tour, __ oh these bit -- ter things I find,
should have read __ that de -- tour sign.

When I
}

refrainChords = \chordmode {
  s2
  
  ef1 ef1 ef1 ef1
  ef1 ef1:7 bf1:7 bf1:7
  
  ef1 ef1:7 af1 af1
  bf1:7 bf1:7 ef1 ef1:7
  
  af1 af1 af1 af1
  ef1 ef1 ef1 ef1
  
  af1 af1 af1 af1
  bf1:7 bf1:7 ef1 ef1
}

refrainKey = ef

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
  \tempoFour "Fast [Spade Cooley 1946]" 210
  
  \partial 2 bf,4 c4 |

  \bar ".|:"
  \sectStart "Verse"
  
  ef4 ef4 f4 ef4 | g2 bf,4 c4 | ef4 ef4 f4 ef4 | g2. bf,4 |
  \break
  ef4 ef4 ef4 ef4 | bf'4 bf4 c4 c4 | bf1~ | bf4 r4 bf4 c4 |
  \break
  ef2 c4 bf4 | c2 g4 ef4 | g4 gf4 f4 ef4 | c4( bf4) c'4 c4 | 
  \break
  bf1~ | bf4 g4 g4 f4 | ef1~ | ef4 r4 c'2 |
  
  \sect "Chorus"
  
  ef1~ | ef2 c4. c8 | ef4 ef4 ef4 c4 | ef2 g,2 |
  \break
  bf1~ | bf2 g4. af8 | bf4 bf4 bf4 g4 | bf2 c2 |
  \break
  ef1~ | ef2 c4. c8 | ef4 ef4 ef4 c4 | ef2 c4 c4 |
  \break
  bf1~ | bf4 g4 g4 f4 | ef1~ | ef4 r4 bf4 c4 |
  
  \bar ":|."
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
  \bold
  {
   \vspace #2
   \line { \large { Verse 1 } }
   \vspace #4
   \line { \large { Chorus } }
   \vspace #2
   \line { \large { Verse 2 } }
   \vspace #4
   \line { \large { Chorus } }
   \vspace #2
   \line { \large { Solo } }
   \vspace #1
   \line { \large { Verse 3 } }
   \vspace #4
   \line { \large { Chorus } }
   \vspace #2
   \line { \large { Repeat } }
   }
  \column
  {
    \hspace #4
    }
  \column 
  {
   \vspace #2
   \line { \large { Headed down life's crooked road, lots of things I never knowed } }
   \line { \large { Because of me not knowin', I now pine } }
   \line { \large { Trouble got in the trail, spent the next five years in jail } }
   \line { \large { Should have read that detour sign } }
   \vspace #1
   \line { \large { Detour, there's a muddy road ahead, detour, paid no mind to what it said } }
   \line { \large { Detour, oh, these bitter things I find, should have read that detour sign } }
   \vspace #1
   \line { \large { When I got right to the place where it said “About Face” } }
   \line { \large { I thought that all my worries were behind } }
   \line { \large { But the farther I go the more sorrow I know } }
   \line { \large { Should have read that detour sign } }
   \vspace #1
   \line { \large { Detour, there's a muddy road ahead, detour, paid no mind to what it said } }
   \line { \large { Detour, oh, these bitter things I find, should have read that detour sign } }
    \vspace #1
    \line { \large { \italic { (32 bars, verse and chorus form) } } }
   \vspace #1
   \line { \large { When I got stuck in the mud, all my hopes dropped with a thud } }
   \line { \large { I guess that my heart strings are made of twine } }
   \line { \large { Have no willpower to get from the hole that I'm in yet } }
   \line { \large { Should have read that detour sign } }
   \vspace #1
   \line { \large { Detour, there's a muddy road ahead, detour, paid no mind to what it said } }
   \line { \large { Detour, oh, these bitter things I find, should have read that detour sign } }
   \vspace #1
   \line { \large { Detour, there's a muddy road ahead, detour, paid no mind to what it said } }
   \line { \large { Detour, oh, these bitter things I find, should have read that detour sign } }
 }
}