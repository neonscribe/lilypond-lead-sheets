%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:40.603207Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Jazz Blues Sharp Keys"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = ""
headerCopyright = ""

refrainKey = c

whatKey = #(or whatKey refrainKey)

refrainChordsInC = \chordmode {
  c1:7 f1:7 c1:7 g2:m7 c2:7
  \break
  \bar "||-||"
  f1:7 fs1:dim7 c1:7 e2:m7 a2:7
  \break
  \bar "||-||"
  d1:m7 g1:7 c2:7
  \chordOpenParen{ a2:7 }
  d2:m7
  \chordCloseParen{ g2:7 }
}

refrainChords = \chordmode {
  \sectGap "Blues in C"

  \bar ".|:"
  \repeat volta 2 {
    \refrainChordsInC
  }

  \set Score.currentBarNumber = #1
  \sectGap "Blues in G"

  \bar ":|.|:"
  \repeat volta 2 {
  \transpose c g {
    \refrainChordsInC
  }
  }

  \set Score.currentBarNumber = #1
  \sectGap "Blues in D"

  \bar ":|.|:"
  \repeat volta 2 {
  \transpose c d {
    \refrainChordsInC
  }
  }

  \xPageBreak

  \set Score.currentBarNumber = #1
  \sectGap "Blues in A"

  \bar ":|.|:"
  \repeat volta 2 {
  \transpose c a {
    \refrainChordsInC
  }
  }

  \set Score.currentBarNumber = #1
  \sectGap "Blues in E"

  \bar ":|.|:"
  \repeat volta 2 {
  \transpose c e {
    \refrainChordsInC
  }
  }

  \set Score.currentBarNumber = #1
  \sectGap "Blues in B"

  \bar ":|.|:"
  \repeat volta 2 {
  \transpose c b {
    \refrainChordsInC
  }
  }

  \set Score.currentBarNumber = #1
  \sectGap "Blues in F#"

  \bar ":|.|:"
  \repeat volta 2 {
  \transpose c fs {
    \refrainChordsInC
  }
  }
}

\include "../Include/chord-paper.ily"

\include "../Include/refrain-chords-only.ily"
