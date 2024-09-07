%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Giant Steps"
  subtitle = \instrument
  poet = ""
  composer = "John Coltrane"
  copyright = "© 1959 Jowcol Music"
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  b2:maj7 d2:7 g2:maj7 bf2:7 ef1:maj7 a2:m7 d2:7
  g2:maj7 bf2:7 ef2:maj7 fs2:7 b1:maj7 f2:m7 bf2:7
  ef1:maj7 a2:m7 d2:7 g1:maj7 cs2:m7 fs2:7
  b1:maj7 f2:m7 bf2:7 ef1:maj7 cs2:m7 fs2:7
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Up" 4 = 320

  fs'2 d2 | b2 g4. bf8~ | bf1 | b4. a8~ a2 |
  \break
  d2 bf2 | g2 ds4. fs8~ | fs1 | g2 f4. bf8~ |
  \break
  bf1 | b2 a4. d8~ | d1 | ds2 ds4. fs8~ |
  \break
  fs1 | g2 g4. bf8~ | bf1_"FINE" | fs4. fs8 r2 |
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
