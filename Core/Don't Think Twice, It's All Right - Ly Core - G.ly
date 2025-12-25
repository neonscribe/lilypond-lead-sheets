%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Don't Think Twice, It's All Right"
  subtitle = \instrument
  poet = ""
  composer = "Bob Dylan"
  copyright = \markup \small { \now " " "© 1963 Special Rider Music" }
}

refrainLyrics = \lyricmode {
It ain't no use to sit and won -- der why, babe. __
It don't mat -- ter an -- y -- how.
An' it ain't no use to sit and won -- der why, babe. __
If you don't know by now.

When the roos -- ter crows at the break of dawn,
look out your win -- dow and __ I'll be gone.
You're the rea -- son I'm trav' -- lin' on.
Don't think twice, it's all right.
}

refrainChords = \chordmode {
  s4
  
  g1 d1 e1:m e1:m
  c1 c1 g1 d1:7
  g1 d1 e1:m e1:m 
  a1:7 a1:7 d1 d1:7
  
  g1 g1 g1:7 g1:7
  c1 c2 a2:7 a1:7 a1:7
  g1 g1 e1:m c1
  g1 d1:7 g1
  \chordInsideParens{ d1:7 }
}

refrainKey = g

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
  \tempo "Medium" 4 = 120

  \partial 4 b4 |
  \bar "||"

  \sectStart "A1"
  
  b8 b4 b8~ b4. b8 | d8 d4. d4 d4 | b4. g8~ g2 | r1 |
  \break
  r4 c,2 c4 | c4 c4 b4 c4 | d1 | r2 r4 b'8 b8 |

  \sect "A2"

  b8 b4 b8~ b4. b8 | d8 d4. d4 d4 | b4. g8~ g2 | r1 |
  \break
  r4 g2 g4 | g2 fs4 g4 | d1 | r2 g4 g4 |
  
  \sect "B"
  
  g4 g2. | g2 g4 a4 | b2. b4 | b1 |
  \break
  r4 g4 g4 g4 | g4 g4 a2~ | a4 b2 b4 | b1 |
  \break
  r4 g2 g4 | g4 g4 g2 | g4 g2. | e1 |
  \break
  r4 g2 g4 | d2 d4 d4 | g,1 | r1 |
  
  \sect "C"

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
   \line { \large { Verse 2 } }
   \vspace #9
   \line { \large { Verse 3 } }
   \vspace #9
   \line { \large { Verse 4 } }
   }
  \column
  {
    \hspace #4
    }
  \column 
  {
    \vspace #2
    \line { \large { It ain't no use in turnin' on your light, babe } }
    \line { \large { That light I never knowed } }
    \line { \large { An' it ain't no use in turnin' on your light, babe } }
    \line { \large { I'm on the dark side of the road } }
    \line { \large { Still I wish there was somethin' you would do or say } }
    \line { \large { To try and make me change my mind and stay } }
    \line { \large { We never did too much talking anyway } }
    \line { \large { So don't think twice, it's all right } }
    \vspace #1
    \line { \large { So it ain't no use in callin' out my name, gal } }
    \line { \large { Like you never did before } }
    \line { \large { And it ain't no use in callin' out my name, gal } }
    \line { \large { I can't hear you anymore } }
    \line { \large { I'm a-thinkin' and a-wond'rin' all the way down the road } }
    \line { \large { I once loved a woman, a child I'm told } }
    \line { \large { I give her my heart but she wanted my soul } }
    \line { \large { But don't think twice, it's all right } }
    \vspace #1
    \line { \large { I’m walkin’ down that long, lonesome road, babe } }
    \line { \large { Where I'm bound, I can't tell } }
    \line { \large { But goodbye's too good a word, gal } }
    \line { \large { So I'll just say, “Fare thee well” } }
    \line { \large { I ain't sayin' you treated me unkind } }
    \line { \large { You could have done better but I don't mind } }
    \line { \large { You just kinda wasted my precious time } }
    \line { \large { But don't think twice, it's all right } }
  }
}
