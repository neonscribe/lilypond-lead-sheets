%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "In the Still of the Night"
  subtitle = \instrument
  poet = ""
  composer = "Cole Porter"
  copyright = \markup \small { \now " " "© 1937 Chappell & Co., Inc." }
}

refrainLyrics = \lyricmode {
In the still of the night
as I gaze from my win -- dow
at the moon in its flight
my thoughts all stray to you.

In the still of the night
all the world is in slum -- ber,
all the times with -- out num -- ber,
dar -- ling, when I say to you.

Do __ you love me, as I love you?
Are you my life to be, my dream come true
or will this dream of mine fade out of sight?
Like the moon grow -- ing dim, on the rim of the hill
In the chill, still, of the night.

Like the moon grow -- ing dim, on the rim of the hill
in the chill, still, of the night. __
}

refrainChords = \chordmode {
  f1:maj7 f1:maj7 bf1:7 bf1:7
  f1:maj7 f1:maj7 bf1:7 bf1:7
  g1:m7 g1:m7 c1:7 c1:7
  f1:maj7 d1:7 g1:m7 c1:7

  f1:maj7 f1:maj7 bf1:7 bf1:7
  f1:maj7 f1:maj7 b1:m7.5- e1:7
  a1:m7 a1:m7 d1:7 d1:7
  a1:m7 d1:7 g1:m7 c1:7
  
  f1:6 a1:7.5+ bf1 bf1
  g1:m7 c1:7 f1:maj7 f1:maj7
  f1:6 a1:7.5+ bf1 bf1
  g1:m7 c1:7 a1:m7.5- a1:m7.5-
  d1:7 d1:7 g1:m7 g1:m7
  bf1:m7 ef1:7 f1:maj7 f1:maj7
  
  b1:m7.5- e1:7.9- g1:m7 c1:7
  f1:6/a f1:6/a af1:dim7 af1:dim7
  g1:m7 g1:m7 c1:7 c1:7
  f1:maj7
  \chordOpenParen{ d1:7 }
  g1:m7
  \chordCloseParen{ c1:7 }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Ella Fitzgerald 1956]" 4 = 126

  \sectStart "A1"
  
  r2 c4 d4 | f2 e4 f4 | d1 | r1 |
  r2 c4 d4 | f2 e4 f4 | d2 d2 | r1 |
  r2 cs4 d4 | bf'2 a4 bf4 | g2. a4 | bf2 c2 |
  c2. c4 | c1 | r1 | r1 |
  
  \sect "A2"

  r2 c,4 d4 | f2 e4 f4 | d1 | r1 |
  r2 c4 d4 | f2 e4 f4 | d1 | e1 |
  r2 ds4 e4 | a2 gs4 a4 | fs2. gs4 | a4 b4 c4 d4 |
  e2. e4 | e1 | r1 | r1 |

  \sect "B"
  
  f1~ | f2. e4 | e1 | d1 |
  r2 e,2 | d'2. c4 | c1 | r1 |
  f1 | f2. e4 | e2. d4 | d1 |
  r2 e,2 | d'2. c4 | c1 | r1 |
  r2 a2 | d2. c4 | c2. bf4 | bf1 |
  bf1 | r2 f4 g4 | a1 | r2 c,4 d4 |
  
  \sect "C"
  
  f1 | r2 e4 f4 | d1 | r2 c4 d4 |
  f1 | r2 e4 f4 | d1 | r2 c4 d4 |
  f1 | r1 | g1 | r2 a4 bf4 |
  c1~ | c1 | r1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
