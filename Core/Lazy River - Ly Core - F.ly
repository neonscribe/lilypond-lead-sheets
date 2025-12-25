%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

#(set-global-staff-size 18)

\header {
  title = "(Up a) Lazy River"
  subtitle = \instrument
  poet = ""
  composer = "Hoagy Carmichael and Sidney Arodin"
  copyright = \markup \small { \now " " "© 1931 Peer International Corporation" }
}

refrainLyrics = \lyricmode {
Up a la -- zy riv -- er by the old mill run,
that la -- zy, la -- zy riv -- er in the noon -- day sun.
Lin -- ger in the shade of a kind old tree.
Throw a -- way your trou -- bles, dream a dream with me.
Up a la -- zy riv -- er where the rob -- in's song
a -- wakes a bright new morn -- ing, we can loaf a -- long.
Blue skies up a -- bove, ev -- 'ry -- one's in love.
Up a la -- zy riv -- er, how hap -- py you can be, up a la -- zy riv -- er with me.
}

refrainChords = \chordmode {
  d1:7 d4:7 df4:7 c2:7 g1:7 g4:7 af4:7 g2:7
  c1:7 c4:7 df4:7 c2:7 f2 g4:m7 c4:7 f4:6 \chordSlash 2 a4:7
  d1:7 d4:7 df4:7 c2:7 g1:7 g4:7 af4:7 g2:7
  bf2 b2:dim7 f2 d2:7 g2:7 c2:7 f2 d2:7
  g2:7 c2:7 f2.:6 \chordInsideParens{ a4:7 }
}

refrainKey = f

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Slow [Mills Brothers 1942]" 4 = 84

  \sectStart "A1"
  
  d8 fs8 a8 ef'8 d8 c8 cs,8 d8 | c'4 cf4 bf4. a8 |
  \break
  b,8 d8 f8 a8 g8 f8 bf,8 b8 | e4 ef4 d2 |
  
  \sect "B"
  
  e8 d'8 c8 b8 bf4 cs,8 d8 | a'4 af4 g4 r4 |
  \break
  gs8 a8 c,8 b8 bf8 g'8 d8 e8 | f4 a,8 c8~ c4 r4 |

  \sect "A2"

  d8 fs8 a8 ef'8 d8 c8 cs,8 d8 | c'4 cf4 bf4. a8 |
  \break
  b,8 d8 f8 a8 g8 f8 bf,8 b8 | e4 ef4 d2 |
  
  \sect "C"
  
  d'8 c8 bf8 a8 af2 | f'8 e8 d8 df8 c2 |
  \break
  d8 f8 d8 a8 c8 a4 c,8 | f8 f8 e8 f8 fs2 |
  \break
  d'8 f8 d8 a8 c8 a4 c,8 | f2. r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
