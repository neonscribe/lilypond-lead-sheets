%% -*- Mode: LilyPond -*-

songID = "2026-09-18T14:05:02.115461Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Into the Mystic"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Van Morrison"
headerCopyright = "© 1970 Caledonia Soul Music"

straightEighths = ##t

refrainLyrics = \lyricmode {
_ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _
We were born be -- fore the wind.
Al -- so young -- er than the sun.
Ere the bon -- nie boat was won
as we sailed in -- to the mys -- tic.

Hark now hear the sail -- ors cry.
Smell the sea and feel the sky.
Let your soul and spir -- it fly in -- to the mys -- tic.

And when that fog -- horn blows I will be com -- ing home. _
And when that fog -- horn blows I want to hear it.
I don't have to fear it, n'
I want to rock your gyp -- sy soul just like way back in the days of old
and mag -- ni -- fi -- cent -- ly _ we will flow in -- to the mys -- tic.
_ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _
_ _ _
Too late to stop now.
}

refrainLyricsTwo = \lyricmode {
_ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _
_ _
to -- geth -- er
}

refrainChords = \chordmode {
  ef1 ef1 ef1 ef1 ef1 ef1
  
  ef1 ef1 ef1 ef1
  bf1 bf1 ef1 ef1

  ef1 ef1 ef1 ef1
  bf1 bf1 ef1 ef1

  g1:m af1 ef1 ef1
  g1:m af1 bf1 bf1

  ef1 ef1 ef1 ef1
  bf1 bf1 ef1 ef1

  ef1 ef1 ef1 ef1
  bf1 bf1 ef1 ef1

  ef1 bf1 bf1 ef1
}

refrainKey = ef

whatKey = #(or whatKey refrainKey)


refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Moderately slow [Van Morrison 1970]" 85

  \sectNoBar "Intro"
  
  \acciaccatura f8 <ef g>4 <ef g>8 f16 <ef g>16~ <ef g>16 f16 <ef g>16 f16 <ef g>8 f8 |
  \acciaccatura f8 <ef g>4 <ef g>8 bf16 <ef f>16~ <ef f>16 bf16 <ef f>16 bf16 <ef f>8 bf8 |
  | r1 | r1 | r1 | r1 |
  
  \sect "Verse"
  
  r8 c'4 bf8 g8 ef8 g8 g8 | g2 r2 | r4 c8 bf8 g8 ef8 f8 g8 | g2 r2 |
  r4 bf8 bf8 bf8 bf8 bf8 g8 | c4 g8 bf8 c8 bf8 bf8 g8 | g8 ef8 r4 r2 | r1 |
  
  r4 c'8 bf8 c8 bf8 f8 ef8 | g2 r2 | r4 c8 bf8 c8 bf8 f8 ef8 | g4 r4 r2 |
  r2 r4 bf8 bf8 c8 bf8 bf8 g8 c8 bf8 bf8 af8 | g8 ef8~ ef2 r4 | r1 |
  
  \bar ".|:-||"
  \repeat volta 2 {

  \sectNoBar "Bridge"
  
  r4 r8 g8 g8 bf8 c8 bf8 | g8( ef4.) r8 c8 ef8 ef8 |
  g16 f16 g8~ g2. | r4 r8 g8~( g16 f16 ef8~ ef4) |

  r4 r8 g8 bf8 bf8 c8 bf8 | g8( ef8~ ef4) r8 c8 ef8 ef8 |
  g8 f8 r4 r2 | r8 bf8 \tuplet 3/2 { g'8 g8 g8 } g8 f8~ f16 f16 g8~( |
  
  \sect "Verse"
  
  g4. f8) f16 ef16 ef8 f8( ef8) | ef4 ef8 c8~( c8 bf16 g16 bf4) |
  r2 r8 ef16 ef16 ef16 ef16 c16 bf16 | c8 g16 bf16~ bf4 r2 |
  
  r2 r8 ef8 ef16 ef16 c16 bf16 | ef16 ef16 c16 bf16 c4 r8 ef4 bf16 g16 |
  g8 ef4. r2 | r1 |

  \sect "Interlude"
  
  <g ef>4 <g d>4 \tuplet 3/2 { f16 ef16 c16 } bf8 <c fs,>16 <ef g,>8.~ | <ef g,>1 |
  <g ef>4 <g d>4 \tuplet 3/2 { f16 ef16 c16 } bf8 <c fs,>16 <ef g,>8.~ |
  <ef g,>2. g,16 bf16 c16 ef16 |
  <<
    { \voiceOne
      d2. bf16 af16 bf16 af16~ | af1 |
    }
    { \xVoiceTwo {
      f2. f4~ | f1 |
    }
    }
  >>
  \oneVoice

  <g' ef>4 <g d>4 \tuplet 3/2 { f16 ef16 c16 } bf8 <c fs,>16 <ef g,>8.~ |
  <ef g,>1 \textToCodaLastTime |
  
  }
  \bar "||-:|."

  \textCodaBreak
  
  r4 ef'16 ef16 r16 c16 ef16 r16 r8 bf16( c8.~ |
  c16 bf8.~ bf16 g16 bf16 c16~ c16 bf8.~ bf8. g16~ | g8) r8 r4 r2 | r1\fermata |

  \bar "|."
}

\include "../Include/refrainonly.ily"
