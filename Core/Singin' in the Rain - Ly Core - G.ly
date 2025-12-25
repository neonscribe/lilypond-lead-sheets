%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Singin' in the Rain"
  subtitle = \instrument
  poet = "Arthur Freed"
  composer = "Nacio Herb Brown"
  copyright = \markup \small { \now " " "© 1929 Metro-Goldwyn-Mayer Inc." }
}

refrainLyrics = \lyricmode {
I'm sing -- in' in the rain, just sing -- in' in the rain.
What a glo -- ri -- ous feel -- ing I'm hap -- py a -- gain.
I'm laugh -- ing at clouds so dark up a -- bove.
The sun's in my heart and I'm rea -- dy for love.
Let the storm -- y clouds chase ev -- 'ry -- one from the place.
Come on with the rain, I've a smile on my face.
I'll walk down the lane with a hap -- py re -- frain,
and sing -- in', just sing -- in' in the rain.
}

refrainChords = \chordmode {
  s4

  g1 e1:m g1 g1
  g1:6 g2:6 gs2:dim7 d1:7 d1:7

  d1:7 d1:7 d1:7 d1:7
  d1:7 d1:7 g1:6 a2:m7 d2:7
  
  g1 g1 g1 g1
  g1 g2 gs2:dim7 d1:7 d1:7

  d1:7 d1:7 d1:7 d1:7
  d1:7 d1:7 g1:6
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
  \tempo "Medium-Up [Judy Garland 1940]" 4 = 204
  
  \partial 4 d4 |
  \bar "||"

  \sectStart "A"
  
  d'2~ d8 b8 a8 g8 | e2. d4 | g2~ g8 g8 a8 b8 | d2. d,8 e8 |
  \break
  g2~ g8 a8 b4 | d2 b4 d4 | d2~ d8 b8 a4 | e2. d4 |
  
  \sect "B"
  
  d'2~ d8 b8 a4 | e2. d4 | d'2 b4. a8 | e2. d4 |
  \break
  d'2~ d8 b8 e,4 | fs2~ fs8 b8 e,4 | g2~ g8 e8 g4 | e2. d8 e8 |

  \sect "C"
  
  g2~ g8 a8 b4 | d2. d,8 e8 | g2~ g8 a8 b4 | d2. d,4 |
  \break
  g2~ g8 a8 b4 | d2 b4 d4 | d2~ d8 b8 a4 | e2. d4 |

  \sect "D"

  d'2 b4. a8 | e2. d8 d8 | d'2~ d8 b8 a4 | e2. d4 |
  \break
  d'8 d4.~ d4 d,4 | fs8 fs4 b8~ b4 d,4 | g1~ | g2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
