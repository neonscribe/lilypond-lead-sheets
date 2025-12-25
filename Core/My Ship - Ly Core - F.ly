%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "My Ship"
  subtitle = \instrument
  poet = "Ira Gershwin"
  composer = "Kurt Weill"
  copyright = \markup \small { \now " " "© 1941 Chappell Music Company" }
}

refrainLyrics = \lyricmode {
My ship has sails that are made of silk,
the decks are trimmed with gold,
and of jam and spice
There's a par -- a -- dise
In the hold. __

My ship's a -- glow with a mil -- lion pearls,
and ru -- bies fill each bin.
The sun sits high
in a sa -- pphire sky
when my ship comes in.

I can wait the years
till it ap -- pears,
One fine day, one spring.
But the pearls and such,
they won't mean much
If there's miss -- ing just one thing.

I do not care if that day ar -- rives,
that dream need nev -- er be.
If the ship I sing
does -- n't al -- so bring
my own true love to me.
If the ship I sing
does -- n't al -- so bring
My own true love to me. __
}

refrainChords = \chordmode {
  s4

  f2:6 d2:7 g2:7 c2:7 f2:6 fs2:dim7 g2:7 c2:7
  f2:6 d2:7 g2:m7 a2:7 d2:m7 g2:7 g2:m7 c2:7

  f2:6 d2:7 g2:7 c2:7 f2:6 fs2:dim7 g2:7 c2:7
  f2:6 d2:7 g2:m7 a2:7 d2:m7 g2:7 c2:sus7 f2:6
  
  g2:m7 c2:7 g2:m7 c2:7 g2:m7 bf2:m6 f4:maj7 \chordSlash 2 e4:7
  a2:m7 d2:m7 a2:m7 d2:m7 a2:m9 d2:7 g2:7 c2:7

  f2:6 d2:7 g2:7 c2:7 f2:6 fs2:dim7 g2:7 c2:7
  f2:6 d2:7 g2:m7 a2:7 d2:m7 c2:7 f4:maj7 \chordSlash 2 c4:7
  
  f2 d2:m bf2:maj7 bf4:m7 ef4:7 a2:m7 d2:m7 g2:m7 c2:7
  f2:6 df2:9 f2:6
  \chordOpenParen{ g4:m7 }
  \chordCloseParen{ c4:7 }
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
  \tempo "Ballad [Anita O'Day 1962]" 4 = 63
  
  \partial 4 c4 |

  \sectNoBreak "A1"
  
  d4 f4 c'4 a8 c8 | a4 d,4 d4. c8 | d4 f4 c'4 c4 | d,2. c8 cs8 |
  \break
  d4 f4 d'4 c8 d8 | c4 bf4 a4 e8 f8 | g1~ | g2. c,4 |

  \sect "A2"

  d4 f4 c'4 a8 c8 | a4 d,4 d4. c8 | d4 f4 c'4 c4 | d,2. c8( cs8) |
  \break
  d4 f4 d'4 c8 d8 | c4 bf4 a4 e8 f8 | g2 g2 f2 r4 a8 c8 |
  
  \bar "||"

  \xPageBreak

  \sectNoBarNoBreak "B"
  
  bf4 a4 g4. c8 | bf4 a4 g2 | d'4 bf4 g4 f4 | a2. b8 d8 |
  \break
  c4 b4 a4. d8 | c4 b4 a4 b8 c8 | d4 b4 g4 e4 | d2. c4 |
  
  \sect "A3"

  d4 f4 c'4 a8 c8 | a4 d,4 d4. c8 | d4 f4 c'4 c4 | d,2. c8 cs8 |
  \break
  d4 f4 d'4 c8 d8 | c4 bf4 a4. g8 | f4. f8 g4. g8 | a2. c8 c8 |
  \break
  b4 c4 f4 e8 f8 | e4 d4 c4 bf4 | c2 f2 f,2 g2 | f1~ | f2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
