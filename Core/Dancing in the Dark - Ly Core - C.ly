%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "Dancing in the Dark"
  subtitle = \instrument
  poet = "Howard Dietz"
  composer = "Arthur Schwartz"
  copyright = \markup \small { \now " " "© 1931 Schwartz Arthur Music Ltd." }
}

refrainLyrics = \lyricmode {
Danc -- ing in the dark __ till the tune ends.
We're danc -- ing in the dark __ and it soon ends.
We're waltz -- ing in the won -- der of why we're here. __
Time hur -- ries by, we're here __ and gone.

Look -- ing for the light __ of a new love
to bright -- en up the night, __ I have you, love.
And we can face the mu -- sic to -- geth -- er,
danc -- ing in the dark. __
}

refrainChords = \chordmode {
  c1:maj7 c1:maj7 c1:dim7 c1:dim7
  d1:m7 d1:m7 f1:m6 f2:m6 g2:7.9-
  c1:maj7 c1:m g1:m ef1:7
  d1:m7.5- df1:7 df2:7 af2:7 f2:m6 g2:7.9-

  c1:maj7 c1:maj7 c1:dim7 c1:dim7
  d1:m7 d1:m7 f1:m6 f2:m6 g2:7.9-
  c1:maj7 c1:m bf1:m6 b1:dim7
  c1:6 f1:m6 c1:6

  \chordOpenParen{ d2:m7 }
  \chordCloseParen{ g2:7.9- }
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
  \tempoFour "Medium" 120

  \sectStart "A1"
  
  b,4. b8 b4. b8 | b1~ | b2 a4. b8 | c2 b4. a8 |
  \break
  f'4. f8 f4. f 8 | f1~ | f2 d4. e8 | f2 e4. d8 | 

  \sect "B"

  g4. g8 g4. g8 | g4 a2 g4 | bf4. a8 g2~ | g1 |
  \break
  f4 g2 f4 | af4. g8 f2~ | f2 ef2 | d1 |
  
  \sect "A2"

  b4. b8 b4. b8 | b1~ | b2 a4. b8 | c2 b4. a8 |
  \break
  f'4. f8 f4. f 8 | f1~ | f2 d4. e8 | f2 e4. d8 | 

  \sect "C"

  g4. g8 g4. g8 | g4 a2 g4 | bf1 | b1 |
  \break
  c4. c8 c4. c8 | c1~ | c1 | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
