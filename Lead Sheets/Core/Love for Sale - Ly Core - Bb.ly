%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Love for Sale"
  subtitle = \instrument
  poet = ""
  composer = "Cole Porter"
  copyright = "© 1930 Harms Inc."
}

verseLyrics = \lyricmode {
When the on -- ly sound in the emp -- ty street
is the hea -- vy tread of the hea -- vy feet
that be -- long to a lone -- some cop,
I o -- pen shop.
When the moon so long has been gaz -- ing down
on the way -- ward ways od this way -- ward town
that her smile be -- comes a smirk,
I go to work.
}

verseChords = \chordmode {
  \chordInsideParens{ f4:7 }
  
  bf1:6 af1:6 gf1:6 f1:m6
  ef2:m7 af2:7 df1:6.9 f1:7 f1:7.9-
  bf1:m6 c2:m7.5- f2:7 bf1:7 af1:7
  gf1:7 e1:7 a1:6.9
  af1:7 f1:7 f1:7 bf1:6 bf1:6
}

verseKey = bf

verseMelody = \relative f' {
  \time 4/4
  \key \verseKey \major
  \clef \whatClef
  \tempo "Freely" 4 = 180

  \xTextMark \markup{ \bold \box "Verse" }
  
  \partial 4 f8 f8 |
  \bar "||"
  
  bf4 bf4 bf4 bf8 bf8 | af4 af4 ef'4 c8 af8 | gf4 gf4 gf4 gf8 gf8 |

  f4 f4 c'4 af8 f8 | ef4 ef8 ef8 gf4. f8 | af1 | a1~ |

  a2 gf4. f8 | f4 r4 r2 | r2 r4 f8 f8 |

  bf4 bf4 bf4 bf8 bf8 | af4 af4 ef'4 c8 af8 |
  gf4 gf4 gf4 gf8 gf8 | 

  e4 e4 cs'4 b8 gs8 | e4 e4 fs4. e8 | af1 |

  a1~ | a2 d,4. c8 | bf4 r4 r2 | r1 |
  
  \bar "||"
}

refrainLyrics = \lyricmode {
Love for sale, ap -- pe -- tiz -- ing young love for sale.
Love that's fresh and still un -- spoiled,
love that's on -- ly slight -- ly soiled,
love for sale.

Who will buy? Who would like to sam -- ple my sup -- ply?
Who's pre -- pared to pay the price
for a trip to par -- a dise?
Love for sale.

Let the po -- ets pipe of love in their child -- ish way,
I know ev -- 'ry type of love bet -- ter far than they.
If you want the thrill of love, I've been through the mill of love.
Old love, new love, ev -- 'ry love but true love.

Love for sale, ap -- pe -- tiz -- ing young love for sale.
If you want to buy my wares, fol -- low me and climb the stairs,
love for sale.
}

refrainChords = \chordmode {
  ef1:maj7 ef1:maj7 bf1:m7 bf1:m7
  ef1:maj7 ef1:maj7 bf1:m7 bf1:m7

  ef1:m7 af1:7 df1:maj7 gf1:9
  c1:m7 f1:7.5+ bf1:m6 bf1:m6

  ef1:maj7 ef1:maj7 bf1:maj7 bf1:maj7
  ef1:maj7 ef1:maj7 bf1:maj7 bf1:maj7

  ef1:m7 af1:7 df1:maj7 gf1:9
  c1:m7 f1:7.5+ bf1:m6 bf1:m6

  ef1:m7 af1:7 df1:maj7 f2:m7 e2:9
  ef1:m7 af1:7 df1:maj7 bf1:m7

  bf1:7 bf1:7 ef1:m ef1:m
  g1:m7.5- c1:7.5+ b1:7 bf2:7.9- bf2:7

  ef1:maj7 ef1:maj7 bf1:m7 bf1:m7
  ef1:maj7 ef1:maj7 bf1:m7 bf1:m7

  ef1:m7 af1:7 df1:7 gf1:9
  c1:m7 f1:7.5+ bf1:m6 bf2.:m6
  \chordInsideParens{ e4:9.5- }
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Fast Swing" 4 = 180

  \xTextMark \markup{ \bold \box "A1" }
  
  bf1~ | bf2. g4 | f1~ | f1 |
  r4 bf8 bf8 bf4 bf4 | bf4 bf2 g4 | f1~ | f1 |
  \break
  r4 bf8 bf8 bf4 bf4 | bf4 c4 c2 | r4 af8 af8 af4 af4 | af4 gf4 gf2 |
  f1~ | f2. cs4 | bf1~ | bf1 |
  
  \bar "||"
  \pageBreak

  \xTextMark \markup{ \bold \box "A2" }
  
  bf'1~ | bf2. g4 | f1~ | f1 |
  r4 bf8 bf8 bf4 bf4 | ef4 c4 bf4 g4 | f1~ | f1 |
  \break
  r4 bf8 bf8 bf4 bf4 | bf4 c4 c2 | r4 df8 df8 df4 df4 | df4 gf,4 gf2 |
  f1~ | f2. cs4 | bf1~ | bf1 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  r4 bf8 c8 df4 ef4 | f4 ef4 ef2 | r4 c8 df8 ef4 f4 | af1 |
  r4 bf,8 c8 df4 ef4 | f4 ef4 ef2 | r4 c8 df8 ef4 f4 | bf1 |
  \break
  r4 bf,8 c8 d4 f4 | gf4 f4 f2 | r4 d4 \tuplet 3/2 { ef4 f4 gf4 } | bf4 bf4 bf2 |
  df2 c2 | df2 c2 | r4 b8 b8 b4 b4 | b2 b2 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A3" }

  bf1~ | bf2. g4 | f1~ | f1 |
  r4 bf8 bf8 bf4 bf4 | bf4 bf2 g4 | f1~ | f1 |
  \break
  r4 bf8 bf8 bf4 bf4 | bf4 c4 c2 | r4 df8 df8 df4 df4 | df4 ef4 ef2 |
  f1~ | f2. cs4 | bf1~ | bf1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/verse.ily"

\markup {
  % Leave a gap between verse and refrain
  \vspace #1
}

\include "../Include/refrain.ily"
