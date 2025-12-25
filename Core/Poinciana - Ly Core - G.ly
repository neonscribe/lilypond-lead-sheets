%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

#(set-global-staff-size 18)

\header {
  title = "Poinciana"
  subtitle = \instrument
  poet = "Buddy Bernier"
  composer = "Nat Simon"
  copyright = \markup \small { \now " " "© 1936 Chappell & Co." }
}

refrainLyrics = \lyricmode {
_ _ _ _ _ _ _ _ _ _ _

Poin -- ci -- an -- a __
Your bran -- ches speak to me of love __
Pale moon __ is cast -- ing sha -- dows from a -- bove __

Poin -- ci -- an -- a
Some -- how I feel the jun -- gle beat
With -- in me, there grows a rhyth -- mic, sav -- age beat

Love is ev -- 'ry -- where, its ma -- gic per -- fume fills the air
To and fro you sway, my heart's in time
I've learned to care

Poin -- ci -- an -- a
Though skies may turn from blue to gray
My love will live for -- ev -- er and a day
}

refrainChords = \chordmode {
  d1:13 d2:13 a2:m7 d1:13 d2:13 a2:m7 
  d1:13 d2:13 d2:7 g1:6
  
  g1:6
  
  g2:6 d2:13
  
  g1:maj9 g1:maj9 d1:m7 g1:7
  c1:m7 c1:m7 g2:maj7 g2:6
  
  a2:m7 d2:13
  
  g1:maj9 g1:maj9 d1:m7 g1:7
  c1:m7 c1:m7 g2:maj7 g2:6
  
  g2:maj7 g2:6
  
  c1:m7 c1:m7 d1:maj7 d1:6
  c1:m7 c1:m7 a1:m7 d1:13

  g1:maj9 g1:maj9 d1:m7 g1:7
  c1:m7 c1:m7 g1:maj7
  \chordOpenParen{ a2:m7 }
  \chordCloseParen{ d2:7 }
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
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Slow [Ahmad Jamal 1958]" 4 = 95

  \sectStart "Intro"
  
  \repeat volta 2 {
  d'1~ | d2 c4 e4 | d1~ | d2 c4 e4 | d1~ | d2 c4 a4 | g1~ |
  \alternative { \volta 1 {
  g2. r4 |
  } \volta 2 {
  g4\repeatTie r4 d'4. b8 |
  } } }

  \sect "A1"

  a2 a2~ | a8 g8 a8 b8 d8 b8 a8 g8 | f1~ | f1 |
  \break
  ef2 ef2~ | ef8 ef8 f8 g8 bf8 g8 f8 ef8 | d1~ |

  d4 r4 d'4. b8 |

  \sect "A2"

  a2 a2~ | a8 g8 a8 b8 d8 b8 a8 g8 | f1~ | f2. r8 f8 |
  \break
  ef2 ef2~ | ef8 ef8 f8 g8 bf8 g8 f8 ef8 | d1~ |

  d2 r2 |

  
  \sect "B"

  ef8 f8 g8 a8 bf4. a8 | c4. bf8 a8 g8 fs8 g8 | a1~ | a2. r4 |
  \break
  ef8 f8 g8 a8 bf4. a8 | c4. bf8 a8 g8 fs8 g8 | d'1~ | d2 d4. b8 |

  \sect "A3"

  a2 a2~ | a8 g8 a8 b8 d8 b8 a8 g8 | f1~ | f1 |
  \break
  ef2 ef2~ | ef8 ef8 f8 g8 bf8 g8 f8 ef8 | d1~ | d1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
