%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "Lazy Afternoon"
  subtitle = \instrument
  poet = "John La Touche"
  composer = "Jerome Moross"
  copyright = \markup \small { \now " " "© 1954 Chappell & Co." }
}

refrainLyrics = \lyricmode {
It's a la -- zy af -- ter -- noon
and the bee -- tle bugs are zoom -- in'
and the tu -- lip trees are bloom -- in'
and there's not an -- oth -- er hu -- man in view
but us two.

It's a la -- zy af -- ter -- noon
and the far -- mer leaves his reap -- in'
in the mead -- ow, cows are sleep -- in',
and the speck -- led trouts stop leap -- in' up -- stream
as we dream.

A fat pink cloud hangs ov -- er the hill
un -- fold -- ing like a rose.
If you hold my hand and sit real still
you can hear the grass as it grows.

It's a ha -- zy af -- ter -- noon
and I know a place that's qui -- et
'cept for dai -- sies runn -- ing ri -- ot
and there's no one pass -- ing by it to see.
Come spend this la -- zy af -- ter -- noon with me.
}

refrainChords = \chordmode {
  s4
  
  a1:m7 a1:7 a1:m7 d1:7
  a1:m7 d1:7 a1:m7 d1:7

  d1:m7 d1:7 d1:m7 g1:7
  d1:m7 g1:7 d1:m7 g1:7
  
  d1:m7 g1:7 c2:maj7 f2:7 e2:m7 a2:7
  d1:m7 g1:7 c1:maj7 b1:m7.5- e1:7

  a1:m7 a1:7 a1:m7 d1:7
  a1:m7 d1:7 a1:m7 d1:7 a1:6
  \chordOpenParen{ b2:m7.5- }
  \chordCloseParen{ e2:7.9- }
}

refrainKey = a

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium" 4 = 120

  \partial 4 e8 a8 |
  \bar "||"

  \sectStart "A1"
  
  g2~ g8 g8 fs8 g8 | fs2 r4 e8 a8 | g8 g8 fs8 g8 fs8 fs8 e8 fs8 | e8 e8 d8 e8 d8 d8 c8 d8 |
  \break
  c8 c8 b8 c8 \tuplet 3/2 { b4 b4 a4 } | b2~ \tuplet 3/2 { b4 e4 a4 } | fs1~ fs2 r4 a8 d8 |
  
  \sect "A2"
  
  c2~ c8 c8 b8 c8 | b2 r4 a8 d8 | c8 c8 b8 c8 b8 b8 a8 b8 | a8 a8 g8 a8 g8g8 f8 g8 |
  \break
  f8 f8 e8 f8 \tuplet 3/2 { e4 e4 d4 } | e2~ \tuplet 3/2 { e4 a4 d4 } | b1~ | b2 r4 c4 |

  \sect "B"
  
  d4 c4 d4 c4 | \tuplet 3/2 { b4 b4 c4 } b4 a4 | b4 a4 b4 a4 | g2 r4 a8 a8 |
  \break
  b4 a4 b4 a4 | g4 a4 g4 f8 f8 | g4 f4 \tuplet 3/2 { g4 f4 e4 } | d1~ | d2 r4 e8 a8 |
  
  \sect "A3"
  
  g2~ g8 g8 fs8 g8 | fs2 r4 e8 a8 | g8 g8 fs8 g8 fs8 fs8 e8 fs8 | e8 e8 d8 e8 d8 d8 c8 d8 |
  \break
  c8 c8 b8 c8 \tuplet 3/2 { b4 b4 a4 } | b2 r4 b4 | e4 a4 fs4 fs4 | a4 d4 b4 b4 | b4( a2.~ | a2) r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
