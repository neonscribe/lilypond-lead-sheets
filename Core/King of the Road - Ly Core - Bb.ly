%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "King of the Road"
  subtitle = \instrument
  poet = ""
  composer = "Roger Miller"
  copyright = \markup \small { \now " " "© 1964 Tree Publishing Co. Inc." }
}

introKey = bf

introChords = \chordmode {
  r2 \chordInsideParens{ bf1 } \chordInsideParens{ ef1 }
  \chordInsideParens{ f1 } \chordInsideParens{ f1 } 
}

bassIntro = \relative f' {
  \time 4/4
  \key \introKey \major
  \clef bass
  \tempo "Medium [Roger Miller 1964]" 4 = 120

  \sectStart "Intro"
  
  \partial 2 \invisEighth f,8 \tuplet 3/2 { g8 f8 ef8 } |
  \bar "||"
  bf4~ \tuplet 3/2 { bf8 a8 bf8 } d4~ \tuplet 3/2 { d8 bf8 d8 } | ef4. g8 bf8 d,8 ef8 e8 |
  f4. e8 f4. e8 | f8 f8 ef8 c8 f,8 f8 g8 a8 |

  \bar "||"
}

refrainLyrics = \lyricmode {
Trai -- lers __ for sale __ or rent, rooms __ to let, fif -- ty cents.
No phone, __ no pool, __ no pets. I ain't got no cig -- a rettes.

Ah, but two hours of push -- in' broom __ buys a eight __ by twelve four -- bit room. __
I'm a man of means __ by __ no means. __ King of the road. __

""

I know ev -- er -- y en -- gi -- neer on ev -- er -- y train, __
all of the chil -- dren and all of their names, __
and ev -- er -- y hand -- out in ev -- er -- y town, __
and ev -- 'ry lock that ain't locked when no one's a -- round.

I sing, __
}

refrainChords = \chordmode {
  bf1 ef1 f1 bf1
  bf1 ef1 f4 r4*7

  bf1 ef1 f1 bf1
  bf1 ef1 f4 r4*9
  
  fs2
  
  b1 e1 fs1 b1
  b1 e1 fs4 r4*7
  
}

refrainKey = bf
upHalfStepKey = cf

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

  \sectStart "Verse"
  
  \bar ".|:"
  \repeat volta 2 {
  r4 bf8 f8~ f8 d4 c8~ | c4 d8 ef8 r2 | r4 a4~ a8 f8 g4 | bf,8 bf4 bf8 r2 |
  r4 bf'8 f8~ f4 d8 c8~ | c4 d8 ef8 r2 | r8 f8 f4 a4 bf4 | c8 bf4 a8 r8 f4 g8 |
  
  r4 bf8 f8~ f4 d4 | c8 d4 ef8~ ef4 ef8 a,8 | r4 a'4~ a8 f8 g4 | bf,8 bf4 bf8~ bf8 d8 f4 |
  r4 d'2 c8 bf8~ | bf4 bf8( g8) bf8 f4.~ | f4 r4 <c' ef>8 <bf d>8 <a c>8 <bf d>8~ |
  \alternative { \volta 1 {
  <bf d>2. r4 |
  } \volta 2 {
  <bf d>2~\repeatTie <bf d>8 as8 b4 |
  } } }
  \sect "Bridge"
  
  \key \upHalfStepKey \major
  
  b8 as8 b4 b8 as8 b8 b8 | gs8 b8 gs8 e8~ e4 r4 | 
  as8 gs8 as8 gs8~ gs8 fs4 fs8 | gs8 b8 gs8 fs8~ fs4 r8 fs8 |
  
  fs'8 fs8 ds4 cs4 b8 gs8 | b8 as8 b8 gs8~ gs4 r8 cs,8 |
  fs8 fs8 fs8 cs8 as'4 as8 cs,8 | cs'8 cs8 cs8 e8~ e8 ds8 cs8( b8) |
  
  \sect "Outro"

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/bass-intro.ily"

\include "../Include/refrain.ily"

\pageBreak

\markup {
  \column 
  \bold
  {
   \vspace #2
   \line { \large { Bass Intro } }
   \vspace #1
   \line { \large { Verse 1 } }
   \vspace #4
   \line { \large { Verse 2 } }
   \vspace #4
   \line { \large { Bridge } }
   \vspace #4
   \line { \large { Verse 1 } }
   \vspace #4
   \line { \large { Verse 1 } }
   }
  \column
  {
    \vspace #4
    \line { \large { Trailers for sale or rent. Rooms to let fifty cents. } }
    \line { \large { No phone, no pool, no pets. I ain't got no cigarettes. } }
    \line { \large { Ah, but two hours of pushing broom buys a eight by twelve four-bit room. } }
    \line { \large { I'm a man of means, by no means, king of the road. } }
    \vspace #1
    \line { \large { Third boxcar, midnight train. Destination: Bangor, Maine. } }
    \line { \large { Old worn out suit and shoes. I don't pay no union dues. } }
    \line { \large { I smoke, old stogies I have found. Short, but not too big around. } }
    \line { \large { I'm a man of means, by no means, king of the road. } }
    \vspace #1
    \line { \large { I know every engineer on every train. } }
    \line { \large { All of the children and all of their names. } }
    \line { \large { And every handout in every town, } }
    \line { \large { every lock that ain't locked when no one's around. } }
    \vspace #1
    \line { \large { I sing, trailers for sale or rent. Rooms to let fifty cents. } }
    \line { \large { No phone, no pool, no pets. I ain't got no cigarettes. } }
    \line { \large { Ah, but two hours of pushing broom buys a eight by twelve four-bit room. } }
    \line { \large { I'm a man of means, by no means, king of the road. } }
    \vspace #1
    \line { \large { \italic { (Repeat and fade) } } }
  }
  \column 
  {
   \vspace #2
 }
}

