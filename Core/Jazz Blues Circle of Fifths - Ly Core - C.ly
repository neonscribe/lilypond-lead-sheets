%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "Jazz Blues Circle of Fifths"
  subtitle = \instrument
  poet = ""
  composer = ""
  copyright = \markup \small ""
}

refrainKey = c

refrainChordsInC = \chordmode {
  \bar "||-||"
  c1:7 f1:7 c1:7 g2:m7 c2:7

  \bar "||-||"
  f1:7 fs1:dim7 c1:7 e2:m7 a2:7

  \bar "||-||"
  d1:m7 g1:7 c1:7
  bf2:m7
  ef2:7
}

refrainChordsInCNoTurn = \chordmode {
  c1:7 f1:7 c1:7 g2:m7 c2:7

  \bar "||-||"
  f1:7 fs1:dim7 c1:7 e2:m7 a2:7

  \bar "||-||"
  d1:m7 g1:7 c1:7 c1:7
  \bar "|."
}

refrainChords = \chordmode {
  \set Score.currentBarNumber = #1
  \sectGap "Blues in C"

    \refrainChordsInC

  \set Score.currentBarNumber = #1
  \sectGap "Blues in F"

  \transpose c f {
    \refrainChordsInC
  }

  \set Score.currentBarNumber = #1
  \sectGap "Blues in Bb"

  \transpose c bf {
    \refrainChordsInC
  }

  \set Score.currentBarNumber = #1
  \sectGap "Blues in Eb"

  \transpose c ef {
    \refrainChordsInC
  }

  \set Score.currentBarNumber = #1

  \transpose c af {
    \sectGap "Blues in Ab"
    \refrainChordsInC
  }

  \set Score.currentBarNumber = #1
  \sectGap "Blues in Db"

  \transpose c df {
    \refrainChordsInC
  }

  \set Score.currentBarNumber = #1
  \sectGap "Blues in Gb"
  
  \transpose c gf {
    \refrainChordsInC
  }
  
  \xPageBreak

  \set Score.currentBarNumber = #1
  \sectGap "Blues in B"

  \transpose c b {
    \refrainChordsInC
  }

  \set Score.currentBarNumber = #1
  \sectGap "Blues in E"

  \transpose c e {
    \refrainChordsInC
  }

  \set Score.currentBarNumber = #1
  \sectGap "Blues in A"

  \transpose c a {
    \refrainChordsInC
  }

  \set Score.currentBarNumber = #1
  \sectGap "Blues in D"

  \transpose c d {
    \refrainChordsInC
  }

  \set Score.currentBarNumber = #1
  \sectGap "Blues in G"

  \transpose c g {
    \refrainChordsInC
  }

  \set Score.currentBarNumber = #1
  \sectGap "Blues in C"

    \refrainChordsInCNoTurn
}

\include "../Include/chord-paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-chords-only.ily"
