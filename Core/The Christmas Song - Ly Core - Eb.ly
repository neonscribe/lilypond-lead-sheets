%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "The Christmas Song (Chestnuts Roasting)"
  subtitle = \instrument
  poet = "Robert Wells"
  composer = "Mel Tormé"
  copyright = "© 1946 Edwin H. Morris & Co."
}

refrainLyrics = \lyricmode {
Chest -- nuts roast -- ing on an o -- open fire. Jack Frost nip -- ping at your nose,
yule -- tide car -- ols be -- ing sung by a choir, and folks dressed up like Es -- ki -- mos.
Ev -- 'ry bod -- y knows a tur -- key and some mis -- tle -- toe help to make the sea -- son bright.
Ti -- ny tots with their eyes all a -- glow will find it hard to sleep to -- night.
They know that San -- ta's on his way; he's load -- ed lots of toys and good -- ies on his sleigh.
And ev -- 'ry moth -- er's child __ is gon -- na spy __ to see if rein -- deer __ real -- ly know how to fly.
And so, I'm of -- fer -- ing this sim -- ple phrase to kids from one to nine -- ty -- two.
Al -- tho' it's been said man -- y times, man -- y ways, “Mer -- ry Christ -- mas to you.”
}

refrainChords = \chordmode {
  ef4:6 c4:m7 f4:m7 e4:9.5- ef4:maj7 \chordSlash 1 f4:m7 bf4:7 ef2:6 bf4:m7 ef4:7 af2:maj7 df2:9
  a2:m7.5- af2:7 g2:m7 a4:m7.5- d4:7 g2:maj7 af4:m7 df4:7 gf2:maj7 f4:m7 bf4:7
  
  ef4:6 c4:m7 f4:m7 e4:9.5- ef4:maj7 \chordSlash 1 f4:m7 bf4:7 ef2:6 bf4:m7 ef4:7 af2:maj7 df2:9
  a2:m7.5- af2:7 g2:m7 a4:m7.5- d4:7 g4:m7 c4:7 f4:m7 bf4:7 ef1:6
  
  bf2:m7 ef2:7 bf2:m7 ef2:7 bf2:m7 ef2:7 af1:maj7
  af2:m7 df2:7 gf1:maj7 c2:m11 b2:7.5- bf2:sus7 bf2:7

  ef4:6 c4:m7 f4:m7 e4:9.5- ef4:maj7 \chordSlash 1 f4:m7 bf4:7 ef2:6 bf4:m7 ef4:7 af2:maj7 df2:9
  a2:m7.5- af2:7 g2:m7 a4:m7.5- af4:9 g4:m7 c4:m7 f4:m7 bf4:7.9- ef4:6 \chordSlash 1
  \chordOpenParen{ f4:m7 }
  \chordCloseParen{ bf4:7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad" 4 = 80

  \xTextMark \markup{ \bold \box "A1" }
  
  ef4 ef'4 d8 c8 bf8 af8 | g8 g8 g2. | ef4 c'4 bf8 af8 g8 f8 | ef1 |
  ef4 ef4 f8 f8 ef8 f8 | \tuplet 3/2 { g4 bf4 c4 } d4. c8 | b4 b4 df8 cf8 bf8 af8 | bf2 bf8 af8 g8 f8 |
  
  \bar "$"

  \xTextMark \markup{ \bold \box "A2" }
  
  ef4 ef'4 d8 c8 bf8 af8 | g8 g8 g2. | ef4 c'4 bf8 af8 g8 f8 | ef1 |
  ef4 ef4 f4 ef8 f8 | \tuplet 3/2 { g4 bf4 c4 } d4. c8 | bf8 g8 c8 bf8 af4. d,8 | ef2 r8 ef8 d8 ef8 |
  
  \bar "$"

  \xTextMark \markup{ \bold \box "B" }
  
  df'2~ df8 c8 bf8 a8 | bf2 r8 ef,8 d8 ef8 | df'8 c8 df8 c8 df8 c8 bf8 af8 | bf2 r8 ef,8 d8 ef8 |
  cf'8 bf8 cf4~ cf8 bf8 af8 gf8 | af2~ af8 gf8 af8 gf8 |
  f8 f8~ \tuplet 3/2 { f8 f8 f8 } \tuplet 3/2 { f4 f4 f4 } | f2. r8 g8 |
  
  \bar "$"

  \xTextMark \markup{ \bold \box "A3" }

  ef4 ef'4 d8 c8 bf8 af8 | g8 g8 g2 r8 g8 | ef4 c'4 bf8 af8 g8 f8 | ef2. r8 d8 |
  ef4 d8 ef8 f4 ef8 f8 | g4 bf8 c8 d4 ef8 c8 | bf4 ef,2 f4 | ef2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
