%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "I Found a Million Dollar Baby (In a Five and Ten Cent Store)"
  subtitle = \instrument
  poet = "Billy Rose and Mort Dixon"
  composer = "Harry Warren"
  copyright = \markup \small { \now " " "© 1931 Remick Music Corp." }
}

refrainLyrics = \lyricmode {
It was a luck -- y A -- pril show -- er. It was the most con -- ve -- nient door.
I found a mil -- lion dol -- lar ba -- by in a five and ten cent store.

The rain con -- tin -- ued for an hour. I hung a -- round for three or four.
A -- round a mil -- lion dol -- lar ba -- by in a five and ten cent store.

She was sell -- ing chi -- na, and when she made those eyes,
I kept buy -- ing chi -- na un -- til the crowd got wise. In -- ci -- dent' -- ly,

If you should run in -- to a show -- er, just step in -- side my cot -- tage door,
and meet the mil -- lion dol -- lar ba -- by from the five and ten cent store.
}

refrainChords = \chordmode {
  f1:maj7 f2:maj7 c2:7 f2:maj7 d2:m7 g1:7
  g1:m7 c1:7 g2:m7 c2:7 f2:maj7 c2:7

  f1:maj7 f2:maj7 c2:7 f2:maj7 d2:m7 g1:7
  g1:m7 c1:7 g2:m7 c2:7 f1:6
  
  a1:7 a1:7 d2:m7 a2:7 d1:m7
  g1:7 g1:7 c1:sus7 c1:7

  f1:maj7 f2:maj7 c2:7 f2:maj7 d2:m7 g1:7
  g1:m7 c1:7 g2:m7 c2:7 f1:6
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
  \tempo "Medium [Bing Crosby 1931]" 4 = 110

  \sectStart "A1"
  
  r8 c8 d8 c8 f8 e8 g8 f8 | a4 a2. | r8 c,8 d8 c8 f8 e8 g8 f8 | a1 |
  \break
  r8 g8 a8 g8 a8 g8 a8 g8 | c4 c2 g8 a8 | c4 c4 c,4 d4 | a'1 |
  
  \sect "A2"
  
  r8 c,8 d8 c8 f8 e8 g8 f8 | a4( a2.) | r8 c,8 d8 c8 f8 e8 g8 f8 | a1 |
  \break
  r8 g8 a8 g8 a8 g8 a8 g8 | c4 c2 g8 a8 | c4 c4 bf4 e,4 | f2 e8 f8 g8 gs8 |

  \sect "B"
  
  a2 bf2~ | bf8 a8 gs8 a8 e'4 cs4 | a1~ | a2 d,8 e8 f8 fs8 | 
  \break
  g2 a2~ | a8 g8 fs8 g8 d'4 a4 | g1~ | g4 c8 c8 a4 g4 |

  \sect "A3"

  r8 c,8 d8 c8 f8 e8 g8 f8 | a4 a2. | r8 c,8 d8 c8 f8 e8 g8 f8 | a1 |
  \break
  r8 g8 a8 g8 a8 g8 a8 g8 | c4 c2 g8 a8 | c4 c4 bf4 e,4 | f2. r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
