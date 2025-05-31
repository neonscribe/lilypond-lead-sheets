%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Jazz Blues Flat Keys"
  subtitle = \instrument
  poet = ""
  composer = ""
  copyright = \markup \small ""
}

refrainKey = c

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
  \set Score.currentBarNumber = #1
  \sectGap "Blues in C"

  \bar ".|:"
  \repeat volta 2 {
    \refrainChordsInC
  }

  \set Score.currentBarNumber = #1
  \sectGap "Blues in F"

  \bar ":|.|:"
  \repeat volta 2 {
  \transpose c f {
    \refrainChordsInC
  }
  }

  \set Score.currentBarNumber = #1
  \sectGap "Blues in Bb"

  \bar ":|.|:"
  \repeat volta 2 {
  \transpose c bf {
    \refrainChordsInC
  }
  }
  
  \xPageBreak

  \set Score.currentBarNumber = #1
  \sectGap "Blues in Eb"

  \bar ":|.|:"
  \repeat volta 2 {
  \transpose c ef {
    \refrainChordsInC
  }
  }

  \set Score.currentBarNumber = #1
  \sectGap "Blues in Ab"

  \bar ":|.|:"
  \repeat volta 2 {
  \transpose c af {
    \refrainChordsInC
  }
  }

  \set Score.currentBarNumber = #1
  \sectGap "Blues in Db"

  \bar ":|.|:"
  \repeat volta 2 {
  \transpose c df {
    \refrainChordsInC
  }
  }

  \set Score.currentBarNumber = #1
  \sectGap "Blues in Gb"

  \bar ":|.|:"
  \repeat volta 2 {
  \transpose c gf {
    \refrainChordsInC
  }
  }
}

\include "../Include/chord-paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-chords-only.ily"
