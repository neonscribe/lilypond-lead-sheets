%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:45.408699Z"

\include "../Include/lead-sheets.ily"

headerTitle = "My Buddy (Waltz)"
headerSubtitle = \subtitle
headerPoet = "Gus Kahn"
headerComposer = "Walter Donaldson"
headerCopyright = "© 1922 Jerome H. Remick & Co."

refrainLyrics = \lyricmode {
Nights are long since you went a -- way.
I think a -- bout you all through the day.
My bud -- dy, __ my bud -- dy, __ no bud -- dy quite so true. __
Miss your voice, the touch of your hand.
Just long to know that you un -- der -- stand.
My bud -- dy, __ my bud -- dy, __ your bud -- dy mis -- ses you. __
}

refrainChords = \chordmode {
  g2.:maj7 gs2.:dim7 a2.:m7 d2.:7
  g2.:6 bf2.:dim7 a2.:m7 d2.:7
  g2.:6 g2:6 g4:7/f e2.:7 e2.:7
  a2.:m7 a2.:7 a2.:m7 d2.:7

  g2.:maj7 gs2.:dim7 a2.:m7 d2.:7
  g2.:6 bf2.:dim7 a2.:m7 d2.:7
  g2.:6 g2:6 g4:7/f e2.:7 e2.:7
  a2.:m7 d2.:7 g2.:6 g2.:6
}

refrainKey = g

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 3/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Ballad [Dinah Shore 1960]" 75

  \xTextMark \markup{ \bold \box "A1" }

  d'2 b4 | d2 b4 | d4 b4 d4 | b2 a4 |
  \break
  g2 e4 | g2 e4 | g4 e4 g4 | e2 d4 |

  \sect "B"

  e4 g2~ | g2 g4 | gs4 b2~ | b2 b4 |
  \break
  c4 e2 | e,2 g4 | a2.( | d2.) |

  \sect "A2"

  d2 b4 | d2 b4 | d4 b4 d4 | b2 a4 |
  \break
  g2 e4 | g2 e4 | g4 e4 g4 | e2 d4 |

  \sect "C"

  e4 g2~ | g2 g4 | gs4 b2~ | b2 b4 |
  \break
  c4 e2 | b4 b2 | g2.~ | g2 r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\include "../Include/refrain.ily"
