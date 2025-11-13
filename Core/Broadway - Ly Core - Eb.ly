%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Broadway"
  subtitle = \instrument
  poet = ""
  composer = "Bill Byrd, Teddy McRae and Henri Woode"
  copyright = \markup \small { \now " " "© 1940 Intersong U.S.A., Inc." }
}

refrainLyrics = \lyricmode {
Broad -- way, Broad -- way, ev -- 'ry bod -- y's hap -- py and gay,
where the night is bright -- er __ than day, __ all a -- long Broad -- way.

Sweet -- hearts and beaus on their way to mo -- vies and shows
dressed up in their Sun -- day best clothes up and down Broad -- way.

Out of town, __ I'm low __ down when I walk a -- long the main street,
Any -- y -- where, __ I don't __ care, but I al -- ways find a main street just an -- oth -- er plain street.

Broad -- way, Broad -- way, take a lit -- tle time out for play
where the joy of liv -- ing __ holds sway __ all a -- long Broad -- way.
}

refrainChords = \chordmode {
  ef1:6 ef1:6 af1:7 af1:7 f1:m7 bf1:7
  
  ef1:6 f2:m7 bf2:7
  
  ef1:6 ef1:6 af1:7 af1:7 f1:m7 bf1:7
  
  ef1:6 ef1:6
  
  bf1:m7 ef1:7 af1:maj7 af1:maj7
  af1:m7 df1:7 gf1:maj7 f2:m7 bf2:7

  ef1:6 ef1:6 af1:7 af1:7 f1:m7 bf1:7 ef1:6
  \chordOpenParen{ f2:m7 }
  \chordCloseParen{ bf2:7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Up Swing [Lee Konitz and The Gerry Mulligan Quartet 1953]" 4 = 185

  \sectStart "A1"
  
  f8 ef8 r4 r4 f8 ef8 | r2 f8 ef8 f8 ef8 | f8 ef8 r4 r4 f8 ef8 | r2 f8 ef8 f8 ef8 |
  \break
  g8 bf4.~ bf4 g8 bf,8~ | bf2 gf'8 gf8 f8 f8~ |
  f8 ef4. r2 | r1 |

  \sect "A2"
  
  f8 ef8 r4 r4 f8 ef8 | r2 f8 ef8 f8 ef8 | f8 ef8 r4 r4 f8 ef8 | r2 f8 ef8 f8 ef8 | 
  \break
  g8 bf4.~ bf4 g8 bf,8~ | bf2 gf'8 gf8 f8 f8~ |
  f8 ef4. r2 | r1 |

  \sect "B"
  
  bf'8 c4 ef,8~ ef4 bf'8 c8~ | c8 ef,4. bf'8 c4. | bf8 af8 bf8 af8 bf8 af4. | r1 |
  \break
  af8 bf4 df,8~ df4 af'8 bf8~ | bf8 df,4. af'8 bf4. | af8 gf8 af8 gf8 af8 gf4. | g8 f8 g8 f8 g8 f4. |
  
  \sect "A3"
  
  f8 ef8 r4 r4 f8 ef8 | r2 f8 ef8 f8 ef8 | f8 ef8 r4 r4 f8 ef8 | r2 f8 ef8 f8 ef8 |
  \break
  g8 bf4.~ bf4 g8 bf,8~ | bf2 gf'8 gf8 f8 f8~ | f8 ef4. r2 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
