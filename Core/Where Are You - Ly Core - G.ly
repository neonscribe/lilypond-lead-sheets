%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:58.841683Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Where Are You"
headerSubtitle = \subtitle
headerPoet = "Harold Adamson"
headerComposer = "Jimmy McHugh"
headerCopyright = "© 1936 Cotton Club Publishing"

refrainLyrics = \lyricmode {
Where are you? Where have you gone with -- out me?
I thought you cared a -- bout me. Where are you?

Where's my heart? Where is the dream we start -- ed?
I can't be -- lieve we part -- ed. Where are you?

When we said good -- bye, love, what had we to gain?
WHen I gave you my love was it all in vain?

All life through must I go on pre -- tend -- ing?
Where is my hap -- py end -- ing? Where are you?
}

refrainChords = \chordmode {
  \set chordChanges = ##t
  g2:maj9 c2:9 b2:m7 bf2:dim7 a2:m7 d2:sus7 g4:dim7 g4:maj9 e2:7.9-
  a1:7 g4:dim7 g4:maj9 e2:7.9- a2:m7 d2:7 b4:m7 e4:7.9- a4:m7 d4:7.9-

  g2:maj9 c2:9 b2:m7 bf2:dim7 a2:m7 d2:sus7 g4:dim7 g4:maj9 e2:7.9-
  a1:7 g4:dim7 g4:maj9 e2:7.9- a2:m7 d2:7 g2:6 d4:m7 df4:9.11+

  c2 a4:m7 a4:m7/g fs2:m7 b2:7 e2:m7 a4:m7 d4:9 g1:maj9
  c2 a4:m7 a4:m7/g fs2:m7 b2:7 e2:m7 a2:9 d2:sus7 d2:7

  g2:maj9 c2:9 b2:m7 bf2:dim7 a2:m7 d2:sus7 g4:dim7 g4:maj9 e2:7.9-
  a1:7 g4:dim7 g4:maj9 e2:7.9- a2:m7 d2:7 g2:6
  \chordOpenParen{ a4:m7 }
  \chordCloseParen{ d4:7 }
  \set chordChanges = ##f
}

refrainKey = g

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Ballad [Frank Sinatra 1957]" 72

  \sectNoBarNoBreak "A1"

  d'2. g,4 | fs1 | \tuplet 3/2 { e4 e4 e4 } g4. fs8 | cs4 d2. |
  \tuplet 3/2 { fs4 fs4 fs4 } a4. g8 | cs,4 d2. | c'2. d4 | b1 |

  \sect "A2"

  d2. g,4 | fs1 | \tuplet 3/2 { e4 e4 e4 } g4. fs8 | cs4 d2. |
  \tuplet 3/2 { fs4 fs4 fs4 } a4. g8 | cs,4 d2. | d'2. b4 | g1 |

  \sectPageBreak "B"

  e4 fs4 g4 a4 | b4 b2. | g4 a4 b4 c4 | d1 |
  e,4 fs4 g4 a4 | b4 b2. | g4 a4 b4 cs4 | d1 |

  \sect "A3"

  d2. g,4 | fs1 | \tuplet 3/2 { e4 e4 e4 } g4. fs8 | cs4 d2. |
  \tuplet 3/2 { fs4 fs4 fs4 } a4. g8 | cs,4 d2. | d'2. b4 | g2 r2 |

  \bar "|."
}

\include "../Include/refrainonly.ily"
