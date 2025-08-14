%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Mr. P.C."
  subtitle = \instrument
  poet = ""
  composer = "John Coltrane"
  copyright = \markup \small "© 1959 Jowcol Music"
}

refrainChords = \chordmode {
  c1:m c1:m c1:m c1:m
  f1:m f1:m c1:m c1:m
  af1:7 g1:7 c1:m c1:m
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Fast [John Coltrane 1959]" 4 = 262

  c8 c8 d8 d8 ef8 ef8 f8 f8 | g4. f8 ef8 c4 bf8 | c2 bf4. c8~ | c4 r4 r2 |
  \break
  f8 f8 g8 g8 af8 af8 bf8 bf8 | c4. bf8 g8 f4 ef8 | c2 bf4. c8~ | c4 r4 ef8 c8 ef8 gf8~ |
  \break
  gf8 f4.~ f4. gf8~ | gf8 f4 ef8 f4 ef4 | c2 bf4. c8~ | c4 r4 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
