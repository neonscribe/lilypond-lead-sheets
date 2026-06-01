%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:45.452493Z"

\include "../Include/lead-sheets.ily"

\header {
  title = "My Buddy (Swing)"
  subtitle = \subtitle
  poet = "Gus Kahn"
  composer = "Walter Donaldson"
  copyright = \markup \small { \now " " "© 1922 Jerome H. Remick & Co." }
}

refrainLyrics = \lyricmode {
Nights are long since you went a -- way.
I think a -- bout you all through the day.
My bud -- dy, __ my bud -- dy, __ no bud -- dy quite so true. __
Miss your voice, the touch of your hand.
Just long to know that you un -- der -- stand.
My bud -- dy, __ my bud -- dy, __ your bud -- dy mis -- ses you. __
}

refrainChords = \chordmode {
  g1:maj7 gs1:dim7 a1:m7 d1:7
  g1:6 bf1:dim7 a1:m7 d1:7
  g1:6 g2:6 g2:7/f e1:7 e1:7
  a1:m7 a1:7 a1:m7 d1:7

  g1:maj7 gs1:dim7 a1:m7 d1:7
  g1:6 bf1:dim7 a1:m7 d1:7
  g1:6 g2:6 g2:7/f e1:7 e1:7
  a1:m7 d1:7 g1:6
  \chordOpenParen{ a2:m7 }
  \chordCloseParen{ d2:7 }
}

refrainKey = g

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium Swing [Chet Baker 1956]" 135

  \xTextMark \markup{ \bold \box "A1" }

  d'2. b4 | d2. b4 | d2 b4 d4 | b2. a4 |
  \break
  g2. e4 | g2. e4 | g2 e4 g4 | e2. d4 |

  \sect "B"

  e4 g2.~ | g2. g4 | gs4 b2.~ | b2. b4 |
  \break
  c4 e2. | e,2 g2 | a1( | d2.) r4 |

  \sect "A2"

  d2. b4 | d2. b4 | d2 b4 d4 | b2. a4 |
  \break
  g2. e4 | g2. e4 | g2 e4 g4 | e2. d4 |

  \sect "C"

  e4 g2.~ | g2. g4 | gs4 b2.~ | b2. b4 |
  \break
  c4 e2. | b2 b2 | g1~ | g2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\include "../Include/refrain.ily"
