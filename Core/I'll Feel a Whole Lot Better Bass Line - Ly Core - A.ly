%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:37.46759Z"

\include "../Include/lead-sheets.ily"

headerTitle = "I'll Feel a Whole Lot Better"
headerSubtitle = "Transcription of Chris Hillman's bass line on The Byrds' 1965 recording"
headerPoet = ""
headerComposer = "Gene Clark"
headerCopyright = "© 1965 Tickson Music Co., Hollywood, California"

refrainChords = \chordmode {
  a1 a1 a1 a1

  a1 a1 a1 a1
  e1 e1 fs1:m b1
  a1 a1 d1 b1:m
  a1 e1 d1

  e1 a1 a1

  g1

  a1 a1

  a1 a1 a1 a1
  e1 e1 fs1:m b1
  a1 a1 d1 b1:m
  a1 e1 d1 g1

  a1 a1

  g1 a1 g1 a1 g1 a1:3.5.9
}

refrainKey = a

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative g {
  \time 4/4
  \key \refrainKey \major
  \clef "bass"
  \tempoFour "Medium [The Byrds 1965]" 134

  \sectNoBar "Intro"

  r1 | r1 | r1 | r1

  \bar ".|:-||"

  \sectNoBar "Verse"

  \repeat volta 2 {

    a4

    \segnoSign

    a4 e8 fs8 gs8 a8~ | a4 a4 e8 e8 fs8 e8 |
    a4 a4 e8 fs8 gs8 a8~ | a4 a4~ a8 a8 gs8 fs8 |
    \break
    e4 e4 b8 b8 cs8 e8~ | e4 \xNote { e8 } e8~ e8 e8 e8 es8 |
    fs4 \xNote { fs8 } fs4 fs8 fs8 a8 | b8 b8 b8 b8 b8 b8 b8 b8 |
    \break
    a4 a4 e8 fs8 gs8 a8~ | a4 \xNote { a8 } a8~ a8 fs8 e8 fs8 |
    d4 \xNote { d8 } d8~ d8 d8 cs4( | fs4) \xNote { fs8 } fs8~ fs4 fs4 |
    \break
    a,4 \xNote { a8 } a8~ a8 cs8 e8 cs8 | e4 \xNote { e8 } e8~ e4 \xNote { e8 } e8 |
    d4 \xNote { d8 } d8~ d4 d4 \textToCoda |

    \alternative { \volta 1 {
      e8 e8 e8 e8 e8 e8 e8 gs8 |
      \break
      a4 a4 e8 fs8 gs8 a8~ | a4 a4 e8 e8 fs8 e8 |
    }
    \volta 2 {
      g8 g8 g8 g8 d4 g4 |
      a4. a8 e4. fs8 | a4. a8 e8 e8 fs8 e8 |
    } } }

  \sectPageBreak "Solo"

  a4. a8 e4. fs8 | a4. a8 e8 e8 fs8 e8 |
  a4. a8 e4. fs8 | a4. a8 e8 e8 fs8 e8 |
  \break
  e4. e8 b4. b8 | e4. e8 b8 d8 e8 es8 |
  fs4 \xNote { fs8 } fs8~ fs8 fs8 fs8 a8 | b8 b8 b8 b8 b8 b8 b8 b8 |
  \break
  a4 \xNote { a8 } a8 e4. fs8 | a4 \xNote { a8 } a8 e8 e8 fs8 e8 |
  d4 \xNote { d8 } d8~ d8 d8 cs4( | fs4) \xNote { fs8 } fs8~ fs4 fs4 |
  \break
  a4 \xNote { a8 } a8~ a8 fs8 e8 fs8 | e4 \xNote { e8 } e8~ e4 e4 |
  d4 \xNote { d8 } d8~ d4 d4 |

  g8 g8 g8 g8 d4 g4 |
  a4 a4 e8 fs8 gs8 a8~ | a4 a4 e8 e8 gs8
  \dalSegno
  e8 |

  \bar "||-|."

  \textCodaBreak

  g8 g8 g8 g8 d4 g4 |
  \repeat volta 2 {
    a4. a8 e4. a8 |
    g8 d8 g8 d8 g8 d8 g8 d8 |
    a'4. a8 e4. a8 |
    g8 d8 g8 d8 g8 d8 g8 d8 |
  }
  a1
  \bar "|."
}

\include "../Include/refrainonly.ily"
