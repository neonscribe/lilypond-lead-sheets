%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "Hello Walls"
  subtitle = \instrument
  poet = ""
  composer = "Willie Nelson"
  copyright = \markup \small { \now " " "© 1961 Tree Publishing Co. Inc." }
}

refrainLyrics = \lyricmode {
Hel -- lo walls,
how'd things go for you to -- day?
Don't you miss her
since she up and walked a -- way?
And I'll bet you dread to spend
an -- oth -- er lone -- ly night with me.
But lone -- ly walls, I'll keep you com -- pa -- ny.

Hel -- lo win -- dow,
well, I see that you're still here.
Aren't you lone -- ly
since our dar -- lin' dis -- ap -- peared?
Well, look here, is that a tear -- drop
in the cor -- ner of your pane?
Now don't you try to tell me that it's rain.

She went a -- way and left us all a -- lone
the way she planned.
Guess we'll have to learn to get a -- long
with -- out her if we can.

Hel -- lo ceil -- ing,
I'm gonna stare at you a -- while.
You know I can't sleep
so won't you bear with me a -- while?
We must all stick to -- geth -- er or else
I'll lose my mind.
'Cause I've got a feel -- in', she'll be gone a long, long time.
}

refrainChords = \chordmode {
  c1 g1:7 c2 f2 c2 g4:7 r4
  
  c1 c1 f1 c1
  c1 c1 d1:7 g1:7
  f1 f1 c1 c2 c2:7
  f1 g1:7 c2 f2 c2 g4:7 r4

  c1 c1 f1 c1
  c1 c1 d1:7 g1:7
  f1 f1 c1 c2 c2:7
  f1 g1:7 c2 f2 c1
  
  g1 g1 c1 c1
  d1:7 d1:7 d1:m g1:7

  c1 c1 f1 c1
  c1 c1 d1:7 g1:7
  f1 f1 c1 c2 c2:7
  f1 g1:7 c2 f2 c1
}

refrainKey = c

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
  \tempo "Medium-Slow [Faron Young 1961]" 4 = 100

  \sectStart "Intro"
  
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq g16 c,8. |

  \sect "A1"
  
  e4 r4 r2 | r2 a8 a4. | g4. f8 c4. a8 | g4 r4 \tuplet 3/2 { r4 g'4 c,4 } |
  e8 e4. r2 | r2 \tuplet 3/2 { r4 e4 d4 } |
  d4 fs4 \tuplet 3/2 { a4( b4) a4 } | g4 r4 \tuplet 3/2 { r4 a4 b4 } |
  c8 c4.~ c8 a4 c8 | d4. c8 b8 a4. | a4. g8( e8) c4 d8 | e4 r4 r4 c4 |
  f4 g8 a8~ a4 a4 | a8 g4.~ g4 e8 d8 | c4 r4 r2 | r2 r4 g'16 c,8. |
  
  \sect "A2"

  e8 e8 r4 r2 | r2 a8 a4. | g4. f8 c4. a8 | g4 r4 \tuplet 3/2 { r4 g'4 c,4 } |
  e8 e4. r2 | r2 \tuplet 3/2 { r4 e4 d4 } |
  d4 fs4 \tuplet 3/2 { a4( b4) a4 } | g4 r4 \tuplet 3/2 { r4 a4 b4 } |
  c8 c4.~ c8 a4 c8 | d4. c8 b8 a4. | a4. g8( e8) c4 d8 | e4 r4 r4 c4 |
  f4 g8 a8~ a4 a4 | a8 g4.~ g4 e8 d8 | c4 r4 r2 | r2 r8 e8 e8 f8 |
  
  \bar "||"

  \xPageBreak

  \sectNoBar "B"
  
  d8( b4.) r4 r8 e8 | f8 a4 g8~ g4. g,8 | e'8( d8 c4~ c8 ) g8 c8 g'8 | e2 r2 |
  d8 a8 d8 e8 fs4. a8~ | a4 a8 fs8 e4. d8 | a'8 a4.~ a4 e8 g8 | d2 r4 g16 c,8. |
  
  \sect "A3"

  e8 e8 r4 r2 | r2 a8 a4. | g4. f8 c4. a8 | g4 r4 \tuplet 3/2 { g'4 g4 c,4 } |
  e8 e4. r2 | r2 \tuplet 3/2 { e4 e4 d4 } |
  d4 fs4 \tuplet 3/2 { a4( b4) a4 } | g4 r4 \tuplet 3/2 { r4 a4 b4 } |
  c8 c4.~ c8 a4( c8) | d4.( c8) b8 a4. | a4. g8 e8 c4( d8) | e4 r4 e8 e8 g8 g8 |
  a4 c4 f,4 a4 | g4 e4 f4 d4 | c1~ | c4 r4 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
