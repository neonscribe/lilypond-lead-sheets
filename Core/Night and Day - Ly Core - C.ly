%% -*- Mode: LilyPond -*-

#(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Night and Day"
  subtitle = \instrument
  poet = ""
  composer = "Cole Porter"
  copyright = \markup \small { \now " " "© 1932 Warner Bros. Inc." }
}

refrainLyrics = \lyricmode {
  Night and day, you are the one.
  On -- ly you be -- neath the moon and un -- der the sun.
  Wheth -- er near to me or far, it's no mat -- ter dar -- ling, where you are,
  I think of you night and day.

  Day and night, why is it so, that this long -- ing for you follows where -- ev -- er I go?
  In the roar -- ing traf -- fic's boom, In the si -- lence of my lone -- ly room,
  I think of you night and day.

  Night and
  day, un -- der the hide of me, There's an
  Oh, such a hung -- ry yearn -- ing, burn -- ing in -- side of me.
  And its tor -- ment won't be through
  'til you let me spend my life mak -- ing love to you,
  day and night. Night and day.
}

refrainChords = \chordmode {
  s2
  
  af1:maj7 g1:7 c1 c1
  af1:maj7 g1:7 c1 c1
  fs1:m7.5- f1:m7 e1:m7 ef1:dim7
  d1:m7 g1:7 c1
  
  c1
  
  af1:maj7 g1:7 c1 c1
  af1:maj7 g1:7 c1 c1
  fs1:m7.5- f1:m7 e1:m7 ef1:dim7
  d1:m7 g1:7 c1
  
  c1
  
  ef1 ef1 c1 c1
  ef1 ef1 c1 c1
  fs1:m7.5- f1:m7 e1:m7 ef1:dim7
  d1:m7 g1:7 c1 c1
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Swing [Billie Holiday 1939] or Latin" 4 = 160
  
  \partial 2 g4 g4 |
  \bar "||"

  \sectStart "A1"
  
  g1~ | g2 \tuplet 3/2 { f4 e4 ds4 } | e1 | r2 g4 g8 g8~ |
  g4 g4 g4 g4 | g4 f4 \tuplet 3/2 { f4 e4 ds4 } | e1 | r2 e8 e4 e8~ |
  e4 e4 e4 e4 | ef2 ef4 ef4 | d4 d4 d4 d4 | d4 df8 c8~ c4 b4 |
  a4 af8 g8~ g2~ | g2 g'4 g8 g8~ | g1 |
  r2 g4 g4 |
  
  \sect "A2"
  
  g1~ | g2 \tuplet 3/2 { f4 e4 ds4 } | e1 | r2 g4 g8 g8~ |
  g4 g4 g4 g4 | g4 f4 \tuplet 3/2 { f4 e4 ds4 } | e1 | r2 e8 e4 e8~ |
  e4 e4 e4 e4 | ef2 ef4 ef4 | d4 d4 d4 d4 | d4 df8 c8~ c4 b4 |
  a4 af8 g8~ g2~ | g2 g'4 g8 g8~ | g1 |
  r2 g4 g4 |
  
  \sect "B"
  
  bf1~ | bf2 \tuplet 3/2 { g4 f4 ef4 } | g4 g4 g2 | r2 g4 g4 |
  bf8 c4 bf8 c4 bf8 c8~ | c8 bf4 g8~ \tuplet 3/2 { g4 f4 ef4 } | g4 g8 g8~ g2 | r2 e4. e8 |
  e4 e4 e4 e4 | ef2 ef4 ef4 | d4 d4 d4 d4 | d8 df8 c8 b'8~ b8 bf8 a4 |
  g4 g8 g8~ g2~ | g2 c4 c8 c8~ | c1 | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
