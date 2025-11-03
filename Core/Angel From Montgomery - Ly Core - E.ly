%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Angel From Montgomery"
  subtitle = \instrument
  poet = ""
  composer = "John Prine"
  copyright = \markup \small "© 1971 Walden Music, Inc. and Sour Grapes Music, Inc."
}

straightEighths = ##t

refrainLyrics = \lyricmode {
_ _ _ _ _ _ _ _ _ _ _

I am an old wom -- an named af -- ter my moth -- er.
My old man is an -- oth -- er __ child __ that's grown __ old. __
If dreams __ were thun -- der __ and light -- ning __ was de -- si -- re,
this old house would -- 've burned down a __ long time __ a -- go. __

Make me an an -- gel that flies from Mont -- gom -- 'ry,
make me a post -- er of an old ro -- de -- o. __
Just give me one __ thing that I can hold __ on __ to.
To be -- lieve in this liv -- in' is just a __ hard way __ to go. __

 "" _ _ _ _ _ _ _ _ _ _

bro -- ken -- down __ dam. __
hard __ way to go.
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _

There's flies in the kitch -- en,
I can here 'em there buzz -- in',
and i ain't done noth -- in' since I woke up to -- day. __
How the hell can a per -- son __
go to work in the morn -- in' and come home __ in the eve -- nin' and have __
noth -- ing to say? __
hard __ way to go. __
To be -- lieve __ in this liv -- in' is just a __ hard way __ to go. __
}

refrainChords = \chordmode {
  e4*3 a4*5 e4*3 a4*5
  
  e1 a1 e1 a1 e1 a1 b4*3 e4*5
  e1 a1 e1 a1 e1 a1 b4*3 e4*5
  
  e1 d1 a1 e1
  e1 d1 a1 e1
  e1 d1 a1 e1
  e1 a1 b4*3 e4*5

  e4*3 a4*5 e4*3 a4*5

  b4*3 e4*5
  
  b2:m7 g4 e1 e1
  
  e4*3 a4*5
  
  e1 a1 e1 a1 e1 a1 b4*3:7 e4*5
  e1 a1 e1 a1 e1 a1 b4*3:7 e4*5

  b2.:m7 e1
  e1 a1 b4*3:7 e4*5
}

refrainKey = e

refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Bonnie Raitt 1974]" 4 = 125

  \sectStart "Intro"
  
  \bar ".|:"
  \repeat volta 2 {
  r4_"(Guitar)" b,8 e8 <gs b,>4 <a cs,>4~ | <a cs,>2. e,8 a8 |
  e4 b'8 e8 <gs b,>4 <a cs,>4~ | <a cs,>2. r4 |
  }
  \bar "||-:|."
  
  \sectNoBar "Verse"
  \segnoSign
  
  r4 b,8 gs'8 gs8 gs4 fs8 | e2 r2 | r4 gs8 gs8 fs8 e4 fs8 | e2 r2 |
  \break
  r4 b8 gs'8 gs4 fs8 e8 | fs8 e8~ e2. | g8( fs8) e8 e8~ e8 cs8( e4~ | e2) r2 |
  \break
  r4 b8 g'8~ g4. e8 | fs8 e8~ e2. | r8 b8 g'8 g8~ g8 fs8 e8 fs8 | e2 r2 |
  \break
  r8 g8 g4 g4 fs8 e8 | fs4 e2 cs8( b8) \textToCodaI | gs'4 gs8( fs8) e8 e4.~ | e2 r2 |
  
  \sect "Chorus"
  \segnoSegnoSign
  
  r4 gs4 e4 e8 fs8~ | fs4 d2 r8 cs8 | e2 fs4 e8 gs8~ | gs4 e2 r4 |
  \break
  r4 gs4 e4 e8 fs8~ | fs4 d2 e8 e8 | gs4 b4 gs4 fs8( e8~ | e2) r2 |
  \break
  r4 gs4 gs8( fs8) e8 fs8~ | fs4 d2 r8 cs8 | e4 cs8 gs'8~ gs4 gs8( fs8 | e4) e2 r4 |
  \break
  r8 b8 cs8 gs'8~ gs8 fs8 e4 | fs8 e4 cs8 e4 cs8( b8) \textToCodaIIandIII |
  r4 gs'4 gs8( fs8) e8 e8~ | e2 r2 |
  \bar "||"
  
  \xPageBreak

  \sectNoBarNoBreak "Intro No Repeat"
  
  r4_"(Guitar)" b8 e8 <gs b,>4 <a cs,>4~ | <a cs,>2. e,8 a8 |
  e4 b'8 e8 <gs b,>4 <a cs,>4~ | <a cs,>2. r4 \dalSegnoI |
  \bar "||-||"
  
  \textCodaI
  
  gs4 gs8 gs16( fs16 e4) e4~ | e2 r2 \dalSegnoSegnoII |
  \bar "||-||"

  \textCodaIIBreak
  
  \time 3/4
  r4 g8( fs8) fs8. gs16 |
  \numericTimeSignature
  \time 4/4
  e2 r2 |
  
  e8 fs8 e8 fs8 e4 cs8 a'8 |
  \repeat volta 2 {
  <gs b,>4 b,8 e8 <gs b,>4 <a cs,>4~ | <a cs,>4 cs8 b8 g16 fs8. e8^"Play 3x" fs8 |
  }
  \break

  r4 b,8 gs'8~ gs4 gs8 gs8 | fs8 e4. r2 | r4 cs8 b8 e8 e8 e8 e8 | cs4 r4 r2 |
  r4 b16 b8. gs'8 gs4 fs8 | e4 r4 r8 b8 b4 | g'8 g8( fs8) e8 e2~ | e4 r4 r2 | 
  \break
  r4 r8 g8 g8 g4. | fs8 e8 fs8 e8~ e4 r4 | r4 fs8 e8 g8 g8 e8 fs8 | e2 r2 |
  r8 b8 cs8 gs'8~ gs4 fs8 e8 | fs8( e8) e4 r8 e8 cs8( b8) | gs'4 gs8( fs8) e8 e4.~ | e2 r2 \dalSegnoSegnoIII |

  \textCodaIIIBreak
  
  \time 3/4
  r4 g8( fs8 e8) fs8 |
  \numericTimeSignature
  \time 4/4
  gs8 e4.~ e4 r4 | r8 b8 cs8 gs'8~ gs8 fs8 e4 | fs8 e4 cs8 e4 cs8( b8) |
  r4 gs'4 \tuplet 3/2 { (gs16 fs16 e16~ } e16) e16 cs16( e8.~ | e1)\fermata |

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
   \line { \large { Verse 2 } }
   }
  \column
  {
    \hspace #4
    }
  \column 
  {
    \vspace #2
    \line { \large { When I was a young girl, well, I had me a cowboy. } }
    \line { \large { He weren't much to look at, just a free ramblin' man. } }
    \line { \large { But that was a long time, and no matter how I tried } }
    \line { \large { those years just flow by like a broken down dam. } }
  }
}
