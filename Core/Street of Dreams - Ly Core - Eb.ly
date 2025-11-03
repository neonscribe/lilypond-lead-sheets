%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Street of Dreams"
  subtitle = \instrument
  poet = "Sam M. Lewis"
  composer = "Victor Young"
  copyright = \markup \small "© 1932 Leo Feist Inc."
}

refrainLyrics = \lyricmode {
Love laughs at a king, kings don't mean a thing, on the street of dreams.
Dreams bro -- ken in two can be made like new, on the street of dreams.
Gold, sil -- ver and gold, all you can hold is in the moon -- beams.
Poor, no one is poor, long as love is sure on the street of dreams.
}

refrainChords = \chordmode {
  f1:9 f2:m9/bf bf2:7 ef2:maj7 af2:maj7 g2:m7 c2:7
  f1:9 f2:m9/bf bf2:7 ef1:maj7 bf2:m7 ef2:7
  
  af1:6 df1:7 ef1:maj7 df2:7 c2:7
  f1:9 b1:7.5+ f2:m7 bf2:7 ef2:6
  \chordInsideParens{ c2:7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad or Medium [Stacey Kent 2004]" 4 = 120

  \sectStart "A"
  
  g2 \tuplet 3/2 { f4 fs4 g4 } | g2 f8 fs8 fs8 g8 | d2 c8 ef8 g8 c8 | c1 |
  \break
  g2 \tuplet 3/2 { f4 fs4 g4 } | g2 f8 fs8 fs8 g8 | g2 bf8 b8 c8 ef8 | ef1 |

  \sect "B"
  
  f2 \tuplet 3/2 { ef4 c4 af4 } | f2 \tuplet 3/2 { af4 cf4 d4 } |
  f2 \tuplet 3/2 { ef4 bf4 a4 } | af2 g2 |
  \break
  g2 \tuplet 3/2 { f4 fs4 g4 } | g2 f8 fs8 g8 bf8 | bf2 bf8 b8 c8 ef8 | ef2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
