%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Like Someone in Love"
  subtitle = \instrument
  poet = "Johnny Burke"
  composer = "Jimmy Van Heusen"
  copyright = "© 1949 Burke & Van Heusen"
}

refrainLyrics = \lyricmode {
Late -- ly I find my -- self out gaz -- ing at stars,
hear -- ing gui -- tars, like some -- one in love;
some -- times the things I do a -- stound me, __
most -- ly when -- ev -- er you're a -- round me.
Late -- ly I seem to walk as though I had wings,
bump in -- to things, like some -- one in love;
each time I look at you
I'm limp as a glove,
and feel -- ing like some -- one in love.

love __ feel -- ing like some -- one in love.
}

refrainChords = \chordmode {
  c2:maj7 e2:7/b a2:m7 a2:m7/g d2:7/fs f2:9.11+ e2:m7 a2:7
  d1:m7 g1:7 c1:maj7 g2:m7 c2:7
  
  f1:maj7 b2:m7 e2:7 a1:maj7 a1:maj7
  a1:m7 d1:7 d1:m7 g1:7.5+

  c2:maj7 e2:7/b a2:m7 a2:m7/g d2:7/fs f2:9.11+ e2:m7 a2:7
  d1:m7 g1:7 c1:maj7 g2:m7 c2:7

  f1:maj7 b2:m7 e2:7 a1:maj7 d2:7 ds2:dim7
  e2:m7 a2:7 d2:m7 g2:7 c1:6
  \chordOpenParen{ d2:m7 }
  \chordCloseParen{ g2:7 }

  e1:7 a2:m7 a2:7 d1:m7 g1:7 c1:6 c1:6
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 140

  \mark \markup{ \box "A1" }

  \bar ".|:"
  \repeat volta 2 {
  e4 e2 e4 | e4 a4 g4 e4 | d4 d2 b'4 | g1 |
  f4 f2 c'4 | b2. a4 | g4 g2 e'4 | d1 |

  \bar "||"
  \break

  \mark \markup{ \box "B" }
  
  d4 d2 cs4 | e4 d4 cs4 b4 | e,2 e2~ | e1 |
  \break
  c'4 c2 b4 | d4 c4 b4 a4 | d,1 | ds1 |

  \bar "||"
  \break

  \mark \markup{ \box "A2" }
  
  e4 e2 e4 | e4 a4 g4 e4 | d4 d2 b'4 | g1 |
  f4 f2 c'4 | b2. a4 | g4 g2 e'4 | d1 |

  \bar "||"
  \break

  \mark \markup{ \box "C" }

  d4 d2 cs4 | e4 d4 cs4 b4 | e,4 e2 e4 | fs2. fs4 |
  g4 g2 g4 | f4 d'2
  b4 |
  \textToCodaLastTime
  c1 | r1 |
  }

  \break

  \textCoda
  e1~ | e2 r2 | g,4 g2 g4 | f4 d'2 b4 | c1 | r1 |
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
