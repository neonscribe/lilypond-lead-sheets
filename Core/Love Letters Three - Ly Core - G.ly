%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "Love Letters (6/8)"
  subtitle = \instrument
  poet = "Edward Heyman"
  composer = "Victor Young"
  copyright = \markup \small { \now " " "© 1945 Famous Music Corporation" }
}

refrainLyrics = \lyricmode {
Love let -- ters straight from your heart __ keep us so near __ while a -- part. __
I'm not a -- lone __ in the night __ when I can have __ all the love you write.
I mem -- o -- rize ev -- 'ry line. __ I kiss the name __ that you sign. __
And dar -- ling, then I read a -- gain right from the start
love let -- ters straight from your heart. __
}

refrainChords = \chordmode {
  g2.:maj7 g2.:maj7 e2.:m7 e2.:m7
  a2.:m7 a4.:m7.5- d4.:7 g2.:maj7 g2.:maj7
  
  cs2.:m7.5- fs2.:7 b2.:m7 e2.:7.9-
  a2.:m7 e2.:7.9- a2.:m7 d2.:7

  g2.:maj7 g2.:maj7 e2.:m7 e2.:m7
  a2.:m7 a4.:m7.5- d4.:7 g2.:maj7 g2.:7
  
  c2.:maj7 f2.:7 g2.:maj7 bf2.:dim7
  a2.:7 d4.:7 d4.:7.9- g2.:6
  \chordOpenParen{ a4.:m7 }
  \chordCloseParen{ d4.:7 }
}

refrainKey = g

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \time 6/8
  \key \refrainKey \major
  \clef \whatClef
  \tempoFourDot "Medium [Ketty Lester 1962]" 44

  \sectStart "A1"
  
  r4. d8 d8 d8 | d4.~ d8 d8 d8 | e2.~ | e2. |
  \break
  r4. e8 fs8 g8 | a4.~ a8 g8 fs8 | b2.~ | b2. |
  
  \sect "B"
  
  r4. b8 b8 b8 | as4.~ as8 b8 cs8 | d2.~ | d2. |
  \break
  r4. a8 a8 a8 | gs4.~ gs8 a8 b8 | c4.~ c4 e,8 | a2. |
  
  \sect "A2"

  r4. d,8 d8 d8 | d4.~ d8 d8 d8 | e2.~ | e2. |
  \break
  r4. e8 fs8 g8 | a4.~ a8 g8 fs8 | b2.~ | b2. |
  
  \sect "C"
  
  r4. b8 a8 b8 | d4.~ d8 c8 b16 a16 | c4. b8 a8 g8 | fs2. |
  \break
  r4. e8 e8 e8 | c'4.~ c8 a8 b8 | g2.~ | g4. r4. |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
