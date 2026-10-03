%% -*- Mode: LilyPond -*-

songID = "2026-10-01T01:52:31.544288Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Singing the Blues"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Melvin Endsley"
headerCopyright = "© 1955 Acuff Rose Music"

refrainLyrics = \lyricmode {
Well, I ne -- ver felt more like sing -- ing the blues __
'cause I ne -- ver thought __ that I'd ev -- er lose __ your love, dear.
Why'd you do me this way? __
Well, I ne -- ver felt more like cry -- in' all night __
'cause ev -- 'ry -- thing's wrong __ and no -- thing ain't right __ with -- out you.
You got me sing -- ing the blues. __
The moon and stars no long -- er shine.
The dream is gone I thought was mine.
There's no -- thing left for me to do
but cry__ o -- ver you. __
Well, I ne -- ver felt more like run -- ning a -- way, __
but why should I go, __ 'cause I could -- n't stay __ with -- out you?
You got me sing -- ing the blues. __

}

refrainChords = \chordmode {
  s4
  
  f1 bf1 f1 c1:7
  bf1 c1:7 f2 bf2 f2 c2:7

  f1 bf1 f1 c1:7
  bf1 c1:7 f1 f1:7
  
  bf1 f1 bf1 f1
  bf1 f1 f1 f2 c2:7 c1:7
  
  f1 bf1 f1 c1:7
  bf1 c1:7 f2 bf2 f2 c2:7
}

refrainKey = f

whatKey = #(or whatKey refrainKey)


refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium [Marty Robbins 1955]" 142

  \partial 4 c'8 c8 |

  \sectNoBreak "A1"
  
  c8 c8 c4 c4 c4 | d8 d8 d8 d8~ d4. d8 | c8 c8 c8 c8~ c4. a8 | bf8 bf8 b8 c8~ c4 a4 |
  f2 d2 | r8 c'4 c8 bf8 e,8 g4 | f1~ | f2. c'8 c8 |
  
  \sect "A2"

  c8 c8 c4 c4 c4 | d8 d8 d8 d8~ d4. d8 | c8 c8 c8 c8~ c4. a8 | bf8 bf8 b8 c8~ c4 a4 |
  f2 d2 | r8 c'8 b8 c8 bf8 e,8 g4 | f1~ | f2. c'4 |
  
  \sect "B"
  
  d4 d4 e4 d4 | c4 c4 a4. c8 | d4 d4 e4 d4 | c4 c4 a4. c8 |
  d4 d4 e4 d4 | c4 c4 a4. gs8 | a8( f'4 c8~ c8 f8 c4) | a4 f8 g8~ g2~ | g2. c8 c8 |
  
  \sect "A3"

  c8 c8 c4 c4 c4 | d8 d8 d8 d8~ d4. d8 | c8 c8 c8 c8~ c4. a8 | bf8 bf8 b8 c8~ c4 a4 |
  f2 d2 | r8 c'8 b8 c8 bf8 e,8 g4 | f1~ | f2. r4 |

  \bar "|."
}

\include "../Include/refrainonly.ily"
