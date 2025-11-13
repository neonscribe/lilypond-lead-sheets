%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "Goodbye (Good-Bye)"
  subtitle = \instrument
  poet = ""
  composer = "Gordon Jenkins"
  copyright = \markup \small { \now " " "© 1935 Schuster and Miller, Inc." }
}

refrainLyrics = \lyricmode {
I'll nev -- er for -- get you, __ I'll nev -- er for -- get you, __
I'll nev -- er for -- get __ how we prom -- ised one day, __
to love one an -- oth -- er for ev -- er that way. __
We said we'd nev -- er say __ good -- bye.

But that was long a -- go, now you've for -- got -- ten, I know.
No use to won -- der why, let's say fare -- well __ with a sigh; __ let love die.

But we'll go on liv -- ing __ our own way of liv -- ing, __
so you take the high __ road and I'll take the low. __
It's time that we part -- ed, it's much bet -- ter so, __
but kiss me as you go, __ good -- bye. __
}

refrainChords = \chordmode {
  s4

  af1:9 af1:7.5+ g1:7.5+ g1:7.9-
  c2:m c2:m7/bf c2:m6/a af2:13 c2:m af2:7 g2:7.9- c2:m6
  d1:m7.5- g1:7.9- c1:6 c1:6
  
  g1:7.9- d2:m7.5- g2:7.9- c1:6 c1
  f1:m9 bf1:7.9- ef1:maj7 af2:7.11+ g2:7

  af1:9 af1:7.5+ g1:7.5+ g1:7.9-
  c2:m c2:m7/bf c2:m6/a af2:13 c2:m af2:7 g2:7.9- c2:m6
  d1:m7.5- g1:7.9- c1:maj7 c1:maj7
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Ballad [Benny Goodman 1935]" 4 = 75
  
  \partial 4 \invisEighth c8 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  ef8 ef4 c8 d8 c8~ c4~ | c2 r4 r8 c8 | ef8 ef4 f8 ef8 d8~ d4~ | d2 r4 r8 g8 |
  \break
  c8 c8 c8 d8~ d8 d4 d8 | g,8 g8 g8 bf8~ bf4. bf8 | ef,8 ef8 ef8 af8~ af8 af4 af8 | b8 b8 b8 c8~ c4. c,8 |
  \break
  d8 d8 bf'8 a8 af2~ | af2 r4 r8 g8 | g1 | r4 r8 c8 c8 c8 c8 c8 |
  
  \sect "B"
  
  e1 | \tuplet 3/2 { d4 d4 c4 } b8 c4 d8 | c1 | r4 r8 c,8 c8 c8 c8 c8 |
  \break
  g'1 | \tuplet 3/2 { f4 f4 ef4 } d4~ \tuplet 3/2 { d8 ef8 f8 } | g2~ \tuplet 3/2 { g4 f4 ef4 } | d2. r8 c8 |

  \sect "A2"
  
  ef8 ef4 c8 d8 c8~ c4~ | c2 r4 r8 c8 | ef8 ef4 f8 ef8 d8~ d4~ | d2 r4 r8 g8 |
  \break
  c8 c8 c8 d8~ d8 d4 d8 | g,8 g8 g8 bf8~ bf4. bf8 | ef,8 ef8 ef8 af8~ af8 af4 af8 | b8 b8 b8 c8~ c4. c,8 |
  \break
  d8 d8 bf'8 a8 af2~ | af2 r4 r8 g8 | g1~ | g2. r4 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
