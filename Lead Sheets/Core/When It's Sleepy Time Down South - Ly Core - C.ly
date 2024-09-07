%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
   (set-global-staff-size 18))

\header {
  title = "When It's Sleepy Time Down South"
  subtitle = \instrument
  poet = ""
  composer = "Leon & Otis René & Clarence Muse"
  copyright = "© 1931 Freed & Powers, Ltd."
}

refrainLyrics = \lyricmode {
Pale moon shin -- ing on the fields be -- low,
Folks are croon -- ing songs soft and low,
need -- n't tell me so, be -- cause I know
It's Sleep -- y Time Down South.

Soft winds blow -- in' thru the pine -- wood trees,
Folks down there live a life of ease,
When the twi -- light brings the ev' -- ning breeze,
It's Sleep -- y Time Down South.

Steam -- boats on the riv -- er, a -- com -- ing, a -- go -- ing,
Splash -- ing the night a -- way,
Hear those ban -- jos ring -- ing, the folks all a -- sing -- ing,
They dance 'til break of day.

Dear old South -- land with its dream -- y songs,
Takes me back to where I be -- long,
I'll find heav -- ven in my mam -- my's arms
When It's Sleep -- y Time Down South.
}

refrainChords = \chordmode {
  f1:maj7 bf1:9.11+ c2 a2:m7 d1:7
  g2:9 g2:9/f e2:sus7 e2:7 f2:maj7 bf2:9 c1:6

  f1:maj7 bf1:9.11+ c2 a2:m7 d1:7
  g2:9 g2:9/f e2:sus7 e2:7 f2:maj7 bf2:9 c2:6 b2:7
  
  e2 e2:maj7 e2:6 f2:dim7 fs2:m7 b2:7 e2 b2:sus9
  e2 e2:maj7 e2:6 f2:dim7 fs2:m7 b2:7 e2 g2:7

  f1:maj7 bf1:9.11+ c2 a2:m7 d1:7
  g2:9 g2:9/f e2:sus7 e2:7 f2:maj7 bf2:9 c2:6
  \chordOpenParen{ g4:m7 }
  \chordCloseParen{ c4:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad" 4 = 77

  \xTextMark \markup{ \bold \box "A1" }
  
  e4 e4 e8 d8 c8 d8 | e8 e4 e8~ e2 | b8 c4 e8~ e8 g8 c4 | d8 d4 d8~ d2 |
  \break
  a4 a4 a8 g8 e8 g8 | e8 e4 e8~ e4 d4 | c8 a8 c2 c4 | c1 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  e4 e4 e8 d8 c8 d8 | e8 e4 e8~ e2 | b8 c4 e8~ e8 g8 c4 | d8 d4 d8~ d2 |
  \break
  a4 a4 a8 g8 e8 g8 | e8 e4 e8~ e4 d4 | c8 a8 c2 c4 | c2( b2) |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  b8 cs8 e8 gs8 b8 b4 gs8 | cs8 cs4 gs8 b8 b4. | b8 b4 gs8 b4 gs8 e8~ | e2. r4 |
  \break
  b8 cs8 e8 gs8 b8 b4 gs8 | cs8 cs4 gs8 b8 b4. | b8 b4 gs8 b4 gs4 | e2( g2) |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A3" }

  e4 e4 e8 d8 c8 d8 | e8 e4 e8~ e2 | b8 c4 e8~ e8 g8 c4 | d8 d4 d8~ d2 |
  \break
  a4 a4 a8 g8 e8 g8 | e8 e4 e8~ e4 e8 d8 | c8 a8 c2 c4 | c2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
