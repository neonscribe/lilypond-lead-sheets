%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "I'm Left, You're Right, She's Gone"
  subtitle = \instrument
  poet = ""
  composer = "Stan Kesler and Bill Taylor"
  copyright = \markup \small { \now " " "© 1955 Hi-Lo Music Inc." }
}

refrainLyrics = \lyricmode {
You're right, I'm left, she's gone. __
You're right, I'm left, all a -- lone. __
You tried to tell me so but how was I to know that she __ was not the one for me? __

You told me all a -- long. __
You're right, our love was so wrong. __
But now I've changed my mind, 'cause she broke the ties that bind,
and I know that she nev -- er cared for me. __

Well, I thought I knew just what she'd do, I guess I'm not so smart.
You tried to tell me all a -- long she'd on -- ly break my heart.

I'm left, you're right, she's gone. __
You're right, I'm left, all a -- lone. __
She's gone I know not where, but now I just don't care,
for now I am fall -- ing for you. __
}

refrainChords = \chordmode {
  s4

  f1 c1:7 f1 f1
  f1 c1:7 f1 f1:7
  bf1 bf1 f1 f1
  c1:7 c1:7 f1 f1

  f1 c1:7 f1 f1
  f1 c1:7 f1 f1:7
  bf1 bf1 f1 f1
  c1:7 c1:7 f1 f1:7
  
  bf1 bf1 f1 f1:7
  bf1 bf1 f1 c1:7

  f1 c1:7 f1 f1
  f1 c1:7 f1 f1:7
  bf1 bf1 f1 f1
  c1:7 c1:7 f1 f1

  f1 c1:7 f1 f1
  f1 c1:7 f1 f1:7
  bf1 bf1 f1 f1
  c1:7 c1:7 f1 f1
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
  \tempo "Medium-Fast [Elvis Presley 1955]" 4 = 180

  \partial 4 f4 |
  \bar "||"

  \sectStart "Verse 1"
  
  f2. a4 | g2. bf4 | a4( c2.~ | c2.) f,4 |
  f2. a4 | g2 a4 bf4 | a4( f2.~ | f2) r4 c'4 |
  d4 d4 d4 c4 | bf2. bf4 | c4 c4 c4 bf4 | a2. a4 |
  g2( a4) bf4 | a4 c,4 e4 g4 | f1~ | f2 r4 f4 |
  
  \sect "Verse 2"

  f2. a4 | g2. bf4 | a4( c2.~ | c2.) f,4 |
  f2. a4 | g2 a4 bf4 | a4( f2.~ | f2.) c'4 |
  d4 d4 d4 c4 | bf2. bf8 bf8 | c4 c4 c4 bf4 | a2. a8 a8 |
  g2 a4 bf4 | a4 c,4 e4 g4 | f1~ | f2 r4 c'8 c8 |
  
  \sect "Bridge"
  
  d4 d4 c4 bf4 | d4 d4 c4 bf4 | c4 c4 f,4 bf4 | a2. c4 |
  d4 d4 c4 bf4 | d4 d4 c4 bf4 | c4 c4 bf4 a4 | g2. f4 |

  \sect "Verse 3"

  f2. a4 | g2. bf4 | a4( c2.~ | c2.) f,4 |
  f2. a4 | g2 a4 bf4 | a4( f2.~ | f2.) c'4 |
  d4 d4 d4 c4 | bf2. bf4 | c4 c4 c4 bf4 | a2. a4 |
  g2 a4 bf4 | a4( c,4) e4 g4 | f1~ | f2 r2 |
  
  \bar "||"
  
  \xPageBreak
  
  \sectNoBar "Solo"
  
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
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

\markup {
  \column 
  \bold
  {
   \vspace #2
   \line { \large { Intro } }
   \vspace #1
   \line { \large { Verse 1 } }
   \vspace #2
   \line { \large { Verse 2 } }
   \vspace #3
   \line { \large { Bridge } }
   \vspace #2
   \line { \large { Verse 3 } }
   \vspace #2
   \line { \large { Solo } }
   \vspace #1
   \line { \large { Verse 4 } }
   \vspace #2
   \line { \large { Bridge } }
   \vspace #2
   \line { \large { Verse 5 } }
   }
  \column
  {
    \hspace #4
    }
  \column 
  {
   \vspace #4
   \line { \large { You're right, I'm left, she's gone. You're right, I'm left, all alone. } }
   \line { \large { You tried to tell me so but how was I to know that she was not the one for me? } }
   \vspace #1
   \line { \large { You told me all along. You're right, our love was so wrong. } }
   \line { \large { But now I've changed my mind, 'cause she broke the ties that bind, } }
   \line { \large { and I know that she never cared for me. } }
   \vspace #1
   \line { \large { Well, I thought I knew just what she'd do, I guess I'm not so smart. } }
   \line { \large { You tried to tell me all along she'd only break my heart. } }
   \vspace #1
   \line { \large { I'm left, you're right, she's gone. You're right, I'm left, all alone. } }
   \line { \large { She's gone I know not where, but now I just don't care, for now I am falling for you. } }
   \vspace #1
   \line { \large { \italic { (Verse form) } } }
   \vspace #1
   \line { \large { If you'll forgive me now, I'll make it up somehow. } }
   \line { \large { So happy we will be, in a home just for three, and I'll soon forget her, now I know. } }
   \vspace #1
   \line { \large { Well, I thought I knew just what she'd do, I guess I'm not so smart. } }
   \line { \large { You tried to tell me all along she'd only break my heart. } }
   \vspace #1
   \line { \large { You're right, I'm left, she's gone. You're right, I'm left, all alone. } }
   \line { \large { She's gone I know not where, but now I just don't care, for now I have fallen for you. } }
 }
}
