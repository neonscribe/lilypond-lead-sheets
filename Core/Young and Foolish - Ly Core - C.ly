%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "Young and Foolish"
  subtitle = \instrument
  poet = "Arnold B. Horwitt"
  composer = "Albert Hague"
  copyright = \markup \small { \now " " "© 1954 Chappell & Co." }
}

refrainLyrics = \lyricmode {
Young and fool -- ish,
why is it wrong to be
young and fool -- ish?
We have -- n't long to be.
Soon e -- nough the care -- free days,
the sun -- lit days go by.
Soon e -- nough the blue -- bird has to fly. __
We were fool -- ish,
one day we fell in love.
Now we won -- der
what were we dream -- ing of?
Smil -- ing in the sun -- light,
laugh -- ing in the rain,
I wish that we were
young and fool -- ish a -- gain. __
}

refrainChords = \chordmode {
  c2:maj7 a2:m7 d2:m7 g2:7 c1:maj7 g2:m7 c2:7
  f1:maj7 e2:m7 a2:7.9- d1:m7 g2:sus7 g2:7.5+
  
  c1:maj7 ef1:dim7 c2/e e2:7 a1:m7
  a1:m7 d1:7 g1:sus9 g1:9

  c2:maj7 a2:m7 d2:m7 g2:7 c1:maj7 g2:m7 c2:7
  f1:maj7 e2:m7 a2:7.9- d1:m7 g2:sus7 g2:7.5+
  
  c1:maj7 e1:7 a2:m7 a2:m7/g d2:9/fs f2:m7+
  c2:6/e ef2:9 d2:m7 g2:7 c1:6
  \chordOpenParen{ d2:m7 }
  \chordCloseParen{ g2:7 }
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
  \tempoFour "Medium [Bill Evans 1959]" 100

  \sectStart "A1"
  
  g2. c,4 | c4 d2. | r4 e4 e4 f4 | f4 g4 g2 |
  a2. d,4 | d4 e2. | r4 f4 f4 g4 | g4 a4 a2 |
  
  \sect "B"
  
  b4 c4 c4. b8 | b4 c4 c4. b8 | c4 g4 e4 d4 | c1 |
  c'4 d4 d4. c8 | c4 d4 b4 c4 | d1~ | d2 r2 |
  
  \sect "A2"

  g,2. c,4 | c4 d2. | r4 e4 e4 f4 | f4 g4 g2 |
  a2. d,4 | d4 e2. | r4 f4 f4 g4 | g4 a4 a2 |
  
  \sect "C"
  
  b4 c4 c4 b4 | b4 c2. | c4 d4 d4 c4 | e2. e4 |
  e4 c4 a4 f4 | d4. d'8 \tuplet 3/2 { d4 c4 b4 } | c1~ | c2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
