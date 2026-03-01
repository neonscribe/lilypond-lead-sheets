%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "I Think I'll Just Stay Here and Drink"
  subtitle = \instrument
  poet = ""
  composer = "Merle Haggard"
  copyright = \markup \small { \now " " "© 1979 Shade Tree Music, Inc." }
}

straightEighths = ##t

refrainLyrics = \lyricmode {
I could be hold -- ing you to -- night. __
I could quit do -- ing wrong __ and start do -- ing right. __
You don't care a -- bout what I think. __
Think I'll just __ stay here and drink.

Hey, put -- ting you down won't square the deal. __
Least you'll know the way I feel. __
Hey, take all the mon -- ey __ in the bank.
Think I'll just __ stay here and drink.

Hey, lis -- ten close __ and you can hear
that loud juke -- box play -- ing in my ear. __
Ain't no wom -- an gon -- na change __ the way I think. __
I think I'll just __ stay here and drink.
}

refrainChords = \chordmode {
  a1:7
  
  d1:7 d1:7 a1:7 a1:7
  e1:7 e1:7 a1:7 a1:7

  d1:7 d1:7 a1:7 a1:7
  e1:7 e1:7 a1:7 a1:7

  d1:7 d1:7 a1:7 a1:7
  e1:7 e1:7 a1:7 a1:7

  d1:7 d1:7 a1:7 a1:7
  e1:7 e1:7 a1:7 a1:7
}

refrainKey = a

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
  \tempoFour "Medium-Slow [Merle Haggard 1980]" 85

  r8. a,16 cs8 e8 fs8 a8 b8 cs16 a16~ |

  \bar ".|:"

  \sectNoBarNoBreak "Verse 1"
  
  a4 r4 r2 | 

  r8. d,16 fs8 a8 b16 cs16 b8~ b16 fs16 fs8 | fs16 a16 fs16( e16~ e4) r2 |
  r4 cs8 e8 e16 cs16 cs8 d16 cs8 b16~ | b2 r2 |
  r4 gs'16 a8 a16~ a8 g8 e8 cs8 | a2 r2 |
  \break
  r8 cs8 cs16 cs16 e8 fs8 a8 b8 cs16 a16~ |
  
  \sectNoBreak "Verse 2"
  
  a2 r2 | r4 fs8 a8 c8. b16 a8 g8 | d8( c4.) r2 |
  r8 cs8 d16 e8 cs16 e16 cs8.~ cs8 cs16 b16 | b4 r4 r2 |
  r4 fs'16 a8 a16~ a8 g8 e8 c8 | a1 |
  \break
  r8 cs8 cs16 e8 fs16~ fs8 a8 b8 cs8 |
  
  \sectNoBreak "Verse 3"
  \tempo "Double-Time Feel"
  
  a1 |
  r4 fs8 a8 c8 b8 a8 fs8 | a16 a8. fs16( e8.) r2 |
  r4 e8 e8 e16 cs16 e16 cs16 e16( cs8) b16 | b16 b8 b16~ b4 r2 |
  r8 a'8 a16 a8 a16~ a8 g8 e8 c8 | a1 | r1 |
  \bar "||"
  
  \xPageBreak
  
  \sectNoBarNoBreak "Solos"
  
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 

  \bar ":|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup {
  \column 
  \bold
  {
   \vspace #2
   \line { \large { Verse 1 } }
   \vspace #4
   \line { \large { Verse 2 } }
   \vspace #4
   \line { \large { Verse 3 } }
   \vspace #4
   \line { \large { Solos } }
   \vspace #1
   \line { \large { Verse 4 } }
   \vspace #4
   \line { \large { Outro } }
   }
  \column
  {
    \hspace #4
    }
  \column 
  {
   \vspace #2
   \line { \large { I could be holding you tonight. } }
   \line { \large { I could quit doing wrong, and start doing right. } }
   \line { \large { You don't care about what I think. } }
   \line { \large { I think I'll just stay here and drink. } }
   \vspace #1
   \line { \large { Hey, putting you down won't square the deal. } }
   \line { \large { Least you know the way I feel. } }
   \line { \large { Hey, take all the money in the bank. } }
   \line { \large { I think I'll just stay here and drink. } }
   \vspace #1
   \line { \large { Listen close and you can hear } }
   \line { \large { that loud jukebox playing in my ear. } }
   \line { \large { Ain't no woman gonna change the way I think. } }
   \line { \large { I think I'll just stay here and drink. } }
   \vspace #1
   \line { \large { \italic { (verse form, three times) } } }
   \vspace #1
   \line { \large { Hey, hurtin' me now don't mean a thing. } }
   \line { \large { Since love ain't here I don't feel the pain. } }
   \line { \large { My mind ain't nothin' but a total blank. } }
   \line { \large { I think I'll just stay here and drink. } }
   \vspace #1
   \line { \large { \italic { (verse form, three times) } } }
 }
}
