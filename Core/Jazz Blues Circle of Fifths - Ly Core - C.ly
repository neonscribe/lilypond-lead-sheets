%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Jazz Blues Circle of Fifths"
  subtitle = \instrument
  poet = ""
  composer = ""
  copyright = ""
}

refrainLyrics = \lyricmode {
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
  \xTextMark \markup { \hspace #10 \bold \box "Blues in C" }

    \refrainChordsInC

  \break

  \set Score.currentBarNumber = #1
  \xTextMark \markup { \hspace #10 \bold \box "Blues in F" }

  \transpose c f {
    \refrainChordsInC
  }
  \break

  \set Score.currentBarNumber = #1
  \xTextMark \markup { \hspace #10 \bold \box "Blues in Bb" }

  \transpose c bf {
    \refrainChordsInC
  }
  \break

  \set Score.currentBarNumber = #1
  \xTextMark \markup { \hspace #10 \bold \box "Blues in Eb" }

  \transpose c ef {
    \refrainChordsInC
  }
  \break

  \set Score.currentBarNumber = #1

  \transpose c af {
  \xTextMark \markup { \hspace #10 \bold \box "Blues in Ab" }
    \refrainChordsInC
  }
  \break

  \set Score.currentBarNumber = #1
  \xTextMark \markup { \hspace #10 \bold \box "Blues in Db" }

  \transpose c df {
    \refrainChordsInC
  }

  \xPageBreak

  \set Score.currentBarNumber = #1
  \xTextMark \markup { \hspace #10 \bold \box "Blues in Gb" }

  \transpose c gf {
    \refrainChordsInC
  }
  \break

  \set Score.currentBarNumber = #1
  \xTextMark \markup { \hspace #10 \bold \box "Blues in B" }

  \transpose c b {
    \refrainChordsInC
  }
  \break

  \set Score.currentBarNumber = #1
  \xTextMark \markup { \hspace #10 \bold \box "Blues in E" }

  \transpose c e {
    \refrainChordsInC
  }
  \break

  \set Score.currentBarNumber = #1
  \xTextMark \markup { \hspace #10 \bold \box "Blues in A" }

  \transpose c a {
    \refrainChordsInC
  }
  \break

  \set Score.currentBarNumber = #1
  \xTextMark \markup { \hspace #10 \bold \box "Blues in D" }

  \transpose c d {
    \refrainChordsInC
  }
  \break

  \set Score.currentBarNumber = #1
  \xTextMark \markup { \hspace #10 \bold \box "Blues in G" }

  \transpose c g {
    \refrainChordsInC
  }
  \break

  \set Score.currentBarNumber = #1
  \xTextMark \markup { \hspace #10 \bold \box "Blues in C" }

    \refrainChordsInCNoTurn
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-chords-only.ily"
