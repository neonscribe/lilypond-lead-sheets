%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Secret Love"
  subtitle = \instrument
  poet = "Paul Francis Webster"
  composer = "Sammy Fain"
  copyright = \markup \small { \now " " "© 1953 Remick Music Corporation" }
}

refrainLyrics = \lyricmode {
Once I had a sec -- ret love __ that loved with -- in the heart of me. __
All too soon my sec -- ret love __ be -- came im -- pa -- tient to be free. __
So I told a friend -- ly star, __ the way that dream -- ers oft -- en do, __
just how won -- der -- ful you are __ and why I'm so in love with you. __
Now I shout it from the high -- est hills, e -- ven told the gol -- den daf -- fo -- dils.
At last my heart's an o -- pen door, __ and my sec -- ret love's no sec -- ret an -- y -- more. __
}

refrainChords = \chordmode {
  ef1:6 ef1:6 ef1:6 f2:m7 bf2:7
  ef1:6 ef1:6 f1:m7 bf1:7
  
  f1:m7 bf1:7 f1:m7 bf1:7
  bf1:7 bf1:7 ef1:6 f2:m7 bf2:7

  ef1:6 ef1:6 ef1:6 f2:m7 bf2:7
  ef1:6 ef1:6 f1:m7 bf1:7
  
  f1:m7 bf1:7 f1:m7 bf1:7
  bf1:7 bf1:7 ef1:6 ef1:6
  
  c1:m7 f1:7 bf1:maj7 bf1:maj7
  bf1:m7 ef1:7 af1:maj7 af1:m7
  
  ef1:6 ef1:6 g1:m7.5- c1:9
  f1:m7 bf1:9 ef1:6
  \chordOpenParen{ f2:m7 }
  \chordCloseParen{ bf2:7 }
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
  \tempo "Ballad [Doris Day 1953]" 4 = 45

  \sectStart "A1"
  
  bf2. af4 | g4 ef4 f4 g4 | bf,1~ | bf2. bf4 |
  ef2. f4 | g4 af4 bf4 c4 | f,1~ | f1 |
  
  \sect "B1"
  
  af2. g4 | f4 d4 ef4 f4 | bf,1~ | bf2. bf4 |
  d2. ef4 | f4 g4 ef4 d4 | ef1~ | ef2 r2 |

  \sect "A2"

  bf'2. af4 | g4 ef4 f4 g4 | bf,1~ | bf2. bf4 |
  ef2. f4 | g4 af4 bf4 c4 | f,1~ | f1 |
  
  \sect "B2"

  af2. g4 | f4 d4 ef4 f4 | bf,1~ | bf2. bf4 |
  d2. ef4 | f4 g4 ef4 d4 | ef1~ | ef2. r4 |

  \sect "C"

  ef'2. d4 | c4 a4 bf4 c4 | d2. bf4 | f1 |
  df'2. c4 | bf4 g4 af4 bf4 | c2. ef,4 | cf'2. ef,4 |

  \sect "A3"

  bf'2. af4 | g4 ef4 f4 g4 | bf,1~ | bf2. c4 |
  c4 f8 g8 af4 c4 | bf4 bf,4 f'4 g4 | ef1~ | ef2. r4 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
