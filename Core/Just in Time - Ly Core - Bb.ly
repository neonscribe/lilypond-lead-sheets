%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Just in Time"
  subtitle = \instrument
  poet = "Betty Comden and Adolph Green"
  composer = "Jule Styne"
  copyright = \markup \small { \now " " "© 1956 Chappell & Co., Inc." }
}

refrainLyrics = \lyricmode {
Just in time, __ I found you just in time. __
Be -- fore you came, my time __ was run -- ing low. __
I was lost, __ the los -- ing dice were tossed, __
my bridg -- es all were crossed, __ no -- where to go. __
Now you're here __ and now I know just where I'm go -- ing,
no more doubt or fear, __ I've found my way.
For love came just in time, __ you found me just in time
and changed my lone -- ly life, that love -- ly day. __
}

refrainChords = \chordmode {
  bf1:maj7 bf1:maj7 a1:m7 d1:7
  g1:7 g1:7 c1:7 c1:7
  
  f1:7 f1:7 bf1:7 bf1:7
  ef1:maj7 ef1:maj7 af1:7 a2:m7.5- d2:7
  
  g1:m g1:m7+ g1:m7 c1:7
  bf1:6 bf1:6 af1:7 g1:7
  
  c1:7 f1:7 bf1:6 g1:m7
  c1:7 c2:m7 f2:7 bf1:6

  \chordOpenParen{ c2:m7 }
  \chordCloseParen{ f2:7 }
}

refrainKey = bf

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
  \tempo "Medium [Frank Sinatra 1959]" 4 = 128

  \xTextMark \markup{ \bold \box "A" }
  
  d4 cs8 d8~ d2 | r8 cs4. d4 cs4 | d4 cs8 d8~ d2 | r4 r8 cs8 d4 cs4 |
  \break
  d4 cs8 d8~ d2 | r4 cs8 d8~ d8 g4 d8~ | d1 | r1 |
  
  \sect "B"
  
  d4 cs8 d8~ d2 | r8 cs4. d4 cs4 | d4 cs8 d8~ d2 | r4 r8 cs8 d4 f4 |
  \break
  g4 fs8 g8~ g2 | r4 fs8 g8~ g8 bf4 c8~ | c1 | r1 |
  
  \sect "C"
  
  bf4 a8 bf8~ bf2 | r8 a4. bf4 a4 | bf4 c4 c8 d4 d8~ | d8 c4. c4 bf4 |
  \break
  g4 fs8 g8~ g2 | r8 fs4. g4 bf4 | ef,1 | r8 d4. f4 ef4 |
  
  \sect "D"
  
  d4 cs8 d8~ d2 | r8 cs4. d4 f4 | g4 fs8 g8 r2 | r8 fs4. g4 bf4 |
  \break
  c4 b4 c8 d4. | bf2 c4. bf8~ | bf1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
