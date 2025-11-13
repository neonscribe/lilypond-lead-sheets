%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "The End of a Love Affair"
  subtitle = \instrument
  poet = ""
  composer = "Edward C. Redding"
  copyright = \markup \small { \now " " "© 1950 Universal Music Corp." }
}

refrainLyrics = \lyricmode {
So I walk a lit -- tle too fast,
and I drive a lit -- tle too fast,
and I'm reck -- less it's true,
but what else can you do
at the end of a love af -- fair?

So I talk a lit -- tle too much,
and I laugh a lit -- tle too much,
and my voice is too loud,
when I'm out in a crowd,
so that peo -- ple are apt to stare.

Do they know? Do they care that it's on -- ly
that I'm lone -- ly and low as can be?
And the smile on my face
is -- n't real -- ly a smile at all? __

So I smoke a lit -- tle too much,
and I joke a lit -- tle too much,
and the tunes I re -- quest
are not al -- ways the best,
but the ones where the trum -- pets blare.

So I go at a mad -- den -- ing pace
and I pre -- tend that it's tak -- ing his place,
but what else can you do
at the end of a love af -- fair? __
}

refrainChords = \chordmode {
  s4
  
  g2:m7 c2:7 f1:maj7 f2:m7 bf2:7 ef1:maj7
  ef2:m7 af2:7 ef2:m7 af2:7 df2:maj7 c2:7 f2:maj7 d2:m7

  g2:m7 c2:7 f1:maj7 f2:m7 bf2:7 ef1:maj7
  ef2:m7 af2:7 ef2:m7 af2:7 df2:maj7 c2:7 f1:maj7
  
  d2:m7 g2:7 d2:m7 g2:7 d2:m7 g2:7 d2:m7 g2:7
  c1:maj7 a2:m7 d2:7 d2:m7 g2:7 g2:m7 c2:7

  g2:m7 c2:7 f1:maj7 f2:m7 bf2:7 ef1:maj7
  ef2:m7 af2:7 ef2:m7 af2:7 df2:maj7 c2:7 c2:m7 f2:7

  bf1:maj7 ef1:9 f1:maj7 af1:dim7
  g2:m7 c2:7 g2:m7 c2:7 f1:6 f1:6
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad [Frank Sinatra 1957]" 4 = 70

  \partial 4 f8 g8 |
  \bar "||"

  \sectStart "A1"
  
  a4. a8 \tuplet 3/2 { a4 g4 f4 } | e2 r4 d8 c8 | g'4. g8 \tuplet 3/2 { g4 f4 ef4 } | d2 r4 c8 bf8 |
  \break
  f'4 f8 f8 f4 af8 bf8 | f4 f8 f8 f4 ef8 df8 | c4 c8 bf8 c4. c8 | c2 r4 f8 g8 |

  \sect "A2"

  a4. a8 \tuplet 3/2 { a4 g4 f4 } | e2 r4 d8 c8 | g'4. g8 \tuplet 3/2 { g4 f4 ef4 } | d2 r4 c8 bf8 |
  \break
  f'4 f8 f8 f4 af8 bf8 | f4 f8 f8 f4 ef8 df8 | c4 c8 bf8 c4. c8 | c2 r4 d8 e8 |

  \sect "B"
  
  f4 d8 f8 a4 f8 d8 | f4 f2 d8 e8 | f4 d8 f8 a4 f8 d8 | f2 r4 e8 f8 |
  \break
  g4 e8 g8 b4 a8 g8 | a4 b8 c8 d4. d8 | d1~ | d2 r4 f,8 g8 |
  \bar "||"
  
  \xPageBreak
  \sectNoBarNoBreak "A3"

  a4. a8 \tuplet 3/2 { a4 g4 f4 } | e2 r4 d8 c8 | g'4. g8 \tuplet 3/2 { g4 f4 ef4 } | d2 r4 c8 bf8 |
  \break
  f'4 f8 f8 f4 af8 bf8 | f4 f8 f8 f4 ef8 df8 | c4 c8 bf8 c4. c8 | c'2 r4 bf8 a8 |

  \sect "C"
  
  a4 a8 g8 \tuplet 3/2 { a4 a4 g4 } | bf2 r8 a8 g8 g8 | e4 e8 d8 e4 e8 d8 | g2 r4 f8 e8 |
  \break
  d4 d8 c8 d4 d8 c8 | d4 f8 bf8 d4. e8 | f,1~ | f2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
