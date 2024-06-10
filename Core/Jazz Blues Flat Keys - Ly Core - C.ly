%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Jazz Blues Flat Keys"
  subtitle = \instrument
  poet = ""
  composer = ""
  copyright = ""
}

refrainLyrics = \lyricmode {
}

refrainKey = c

refrainChordsInC = \chordmode {
  c1:7 f1:7 c1:7 g2:m7 c2:7
  \break
  \bar "||-||"
  f1:7 fs1:dim7 c1:7 e2:m7.5- a2:7.9-
  \break
  \bar "||-||"
  d1:m7 g1:7 c2:7 a2:7.9- d2:m7 g2:7
}

refrainChords = \chordmode {
  \set Score.currentBarNumber = #1
  \xTextMark \markup { \hspace #10 \bold \box "Blues in C" }

  \bar ".|:"
  \repeat volta 2 {
    \refrainChordsInC
  }
  \break

  \set Score.currentBarNumber = #1
  \xTextMark \markup { \hspace #10 \bold \box "Blues in F" }

  \bar ":|.|:"
  \repeat volta 2 {
  \transpose c f {
    \refrainChordsInC
  }
  }
  \break

  \set Score.currentBarNumber = #1
  \xTextMark \markup { \hspace #10 \bold \box "Blues in Bb" }

  \bar ":|.|:"
  \repeat volta 2 {
  \transpose c bf {
    \refrainChordsInC
  }
  }
  \break

  \set Score.currentBarNumber = #1
  \xTextMark \markup { \hspace #10 \bold \box "Blues in Eb" }

  \bar ":|.|:"
  \repeat volta 2 {
  \transpose c ef {
    \refrainChordsInC
  }
  }
  \pageBreak

  \set Score.currentBarNumber = #1

  \bar ":|.|:"
  \repeat volta 2 {
  \transpose c af {
  \xTextMark \markup { \hspace #10 \bold \box "Blues in Ab" }
    \refrainChordsInC
  }
  }
  \break

  \set Score.currentBarNumber = #1
  \xTextMark \markup { \hspace #10 \bold \box "Blues in Db" }

  \bar ":|.|:"
  \repeat volta 2 {
  \transpose c df {
    \refrainChordsInC
  }
  }
  \break

  \set Score.currentBarNumber = #1
  \xTextMark \markup { \hspace #10 \bold \box "Blues in Gb" }

  \bar ":|.|:"
  \repeat volta 2 {
  \transpose c gf {
    \refrainChordsInC
  }
  }
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-chords-only.ily"
