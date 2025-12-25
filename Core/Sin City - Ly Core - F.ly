%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Sin City"
  subtitle = \instrument
  poet = ""
  composer = "Chris Hillman and Gram Parsons"
  copyright = \markup \small { \now " " "© 1969 Irving Music Incorporated" }
}

refrainLyrics = \lyricmode {
This old town's filled with sin,
it -- 'll swal -- low you __ in, __
if you've got some mon -- ey __ to burn.
Take it home right a -- way,
you've got three years __ to pay, __
but Sa -- tan is wait -- ing __ his turn.

This old earth -- quake's gon -- na leave me in the poor house.
It seems like __ this whole town's __ in -- sane.
On the thir -- ty -- first floor, a gold plat -- ed __ door __
won't keep out __ the Lord's burn -- ing rain.
}

refrainChords = \chordmode {
  f2. bf4/c a4:m/c g4:m/c | bf2. | f2. |
  
  f2. c2.:7 f2.:7 bf2.
  f2. f2. c2.:7 c2.:7
  
  f2. c2.:7 f2.:7 bf2.
  f2. c2.:7 f2. f2.:7
  
  bf2. c2.:7 f2. f2.:7
  bf2. f2. c2.:7 c2.:7
  
  bf2. c2.:7 f2. bf2.
  f2. c2.:7 f2. f2.
  
  f2. c2.:7 f2. bf2.
  f2. c2.:7 bf2. f2.
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
  \time 3/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Flying Burrito Brothers 1969]" 4 = 125
  
  \sectStart "Intro"
  
  \rsq \rsq \rsq | \rsq \rsq \rsq | \rsq \rsq \rsq | \rsq \rsq c8 d8 |

  \sect "Verse"
  
  c2 c8 f8 | e2 g8 g8 | a4 bf4 a8( g8) | g8( f4.~ f8) f8 |
  f8 c4.~ c8 f8 | f8( g8) g4~ g8 f8 | e2. | r4 r4 c8 d8 |
  \break
  c2 c8 f8 | e2 g8 g8 | a4 bf4~ bf8 a8 | g8( f4.~ f8) f8 |
  f8 c4.~ c8 c8 | d4 d4~ d8 bf8 | a2. | 
  \partial 2 r4 r4 |

  \sect "Chorus"
  
  \partial 4 g'8 a8 |
  \bar "||"
  
  bf8 bf4. bf8 g8 | g4. g8 g8 f8 | f4 f2 | r4 r4 r8 f8 |
  f4 bf4~ bf8 bf8 | a4 f4~ f8 f8 | e2. | r4 r4 g8 a8 |
  \break
  bf4. bf8 bf4 | g2 r8 f8 | f4 a4 \tuplet 3/2 { a8( g8 f8) } | f8( d4.~ d8) f8 |
  f8 c4.~ c8 f8 | e4 e4( d8) c8 | f2. | R2.*1 |

  \sect "Solo"

  \rsq \rsq \rsq | \rsq \rsq \rsq | \rsq \rsq \rsq | \rsq \rsq \rsq | 
  \rsq \rsq \rsq | \rsq \rsq \rsq | \rsq \rsq \rsq | \rsq \rsq \rsq | 

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
  \bold
  {
   \vspace #2
   \line { \large { Intro } }
   \vspace #1
   \line { \large { Verse 1 } }
   \vspace #4
   \line { \large { Chorus } }
   \vspace #4
   \line { \large { Verse 2 } }
   \vspace #4
   \line { \large { Chorus } }
   \vspace #4
   \line { \large { Solo } }
   \vspace #1
   \line { \large { Verse 3 } }
   \vspace #4
   \line { \large { Chorus } }
   \vspace #4
   \line { \large { Tag } }
   }
  \column
  {
    \hspace #4
    }
  \column 
  {
   \vspace #4
   \line { \large { This old town is filled with sin, it'll swallow you in } }
   \line { \large { if you've got some money to burn. } }
   \line { \large { Take it home right away, you've got three years to pay, } }
   \line { \large { but Satan is waiting his turn. } }
   \vspace #1
   \line { \large { This old earthquake's gonna leave me in the poor house. } }
   \line { \large { It seems like this whole town's insane. } }
   \line { \large { On the thirty-first floor, a gold plated door, } }
   \line { \large { won't keep out the Lord's burning rain. } }
   \vspace #1
   \line { \large { The scientists say it'll all wash away } }
   \line { \large { But we don't believe any more } }
   \line { \large { 'Cause we've got our recruits and our green mohair suits } }
   \line { \large { So please show your ID at the door } }
   \vspace #1
   \line { \large { This old earthquake's gonna leave me in the poor house. } }
   \line { \large { It seems like this whole town's insane. } }
   \line { \large { On the thirty-first floor, a gold plated door, } }
   \line { \large { won't keep out the Lord's burning rain. } }
   \vspace #3
   \line { \large { A friend came around, tried to clean up this town. } }
   \line { \large { His ideas made some people mad. } }
   \line { \large { He trusted his crowd, so he spoke right out loud } }
   \line { \large { And they lost the best friend they had. } }
   \vspace #1
   \line { \large { This old earthquake's gonna leave me in the poor house. } }
   \line { \large { It seems like this whole town's insane. } }
   \line { \large { On the thirty-first floor, a gold plated door, } }
   \line { \large { won't keep out the Lord's burning rain. } }
   \vspace #1
   \line { \large { On the thirty-first floor, a gold plated door, } }
   \line { \large { won't keep out the Lord's burning rain. } }
 }
}
