%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:36.216366Z"

\include "../Include/lead-sheets.ily"

\header {
  title = "I Get Along Without You Very Well"
  subtitle = \subtitle
  poet = ""
  composer = "Hoagy Carmichael"
  copyright = \markup \small { \now " " "© 1938 Famous Music Corporation" }
}

refrainLyrics = \lyricmode {
I get a -- long with -- out you ver -- y well.
Of course I do.
Ex -- cept when soft rains fall
and drip from leaves, then I re -- call
the thrill of be -- ing shel -- tered in your arms.
Of course I do.
But I get a -- long with -- out you ver -- y well.

I've for -- got -- ten you just like I should
Of course I have
Ex -- cept to hear your name
Or some -- one's laugh that is the same
But I've for -- got -- ten you just like I should

What a guy
What a fool am I
To think my break -- ing heart could kid the moon
What's in store?
Should I phone once more?
No, it's best that I stick to my tune

I get a -- long with -- out you ver -- y well
Of course I do
Ex -- cept per -- haps in spring
But I should nev -- er think of spring
For that would sure -- ly break my heart in two
}

refrainChords = \chordmode {
  bf2:maj7 g2:m7 c2:m7 f2:7 bf2:maj7 ef2:maj7 d2:m7 df2:dim7
  c1:m7 f1:7 c1:m7 f1:7
  c1:m7 b1:7.5+ c1:m7 f1:7
  bf2:maj7 ef2:maj7 d2:m7 df2:dim7 c1:m7 f1:7
  c2:m7 g2:7.5+ c2:m7 f2:7 bf2:maj7 b2:dim7 c2:m7 f2:7

  bf2:maj7 g2:m7 c2:m7 f2:7 bf2:maj7 ef2:maj7 d2:m7 df2:dim7
  c1:m7 f1:7 c1:m7 f1:7
  c1:m7 b1:7.5+ c1:m7 f1:7
  bf2:maj7 ef2:maj7 d2:m7 df2:dim7 c1:m7 f1:7
  bf1:maj7 d2:m7 df2:dim7 c1:m7 f1:7
  bf2:maj7 f2:7 bf1:maj7

  ef2:6 ef2/d c2:m7 f2:7 bf2:maj7 ef2:7 d2:7 af2:7
  g1:m7 c1:7 c1:m7 f1:7

  bf2:maj7 g2:m7 c2:m7 f2:7 bf2:maj7 ef2:maj7 d2:m7 df2:dim7
  c1:m7 f1:7 c1:m7 f1:7
  c1:m7 b1:7.5+ c1:m7 f1:7
  bf2:6
  \chordOpenParen{ df2:dim7 }
  c2:m7
  \chordCloseParen{ f2:7 }
}

refrainKey = bf

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Ballad [Frank Sinatra 1955] or Medium Fast [Red Norvo 1939]" 150

  \sectNoBarNoBreak "A1"

  f4 f8 f8 f4 f4 | g4 f4 bf4 c4 | d1 | r4 a4 bf4 g4 |
  f1 | r4 c4 c4 d4 | ef4 f4 f2 | r4 c4 c4 d4 |
  ef4 f4 f4 g4 | g2. c,4 | c4 d4 ef4 f4 | g4 a4 bf4 c4 |
  d1 | r4 a4 bf4 g4 | f1 | r2 c4 d4 |
  ef4 ef4 ef4 ef4 | ef4 ef4 d4 ef4 | f1 | r1 |

  \sect "A2"

  f4 f4 f4 f4 | g4 f4 bf4 c4 | d1 | r4 a4 bf4 g4 |
  f1 | r4 c4 c4 d4 | ef4 f4 f2 | r4 c4 c4 d4 |
  ef4 f4 f4 g4 | g2. c,4 | c4 d4 ef4 f4 | g4 a4 bf4 c4 |
  \bar "|o"

  \xPageBreak

  d1 | r2 a4 bf4 | c,1 | r2 a'4 bf4 |
  c2 bf4 d,4~ | d2 r4 bf4 | c4 c4 c8 d4 ef8~ | ef4 ef4 d8 ef4 f8~ |
  f1 | r2 a4 bf4 |

  \sect "B"

  c,1 | r2 a'4 bf4 | d2 c4 bf4~ | bf2 f4 fs4 |
  g2 g4 g4 | g4. a8~ a4 bf4 | c1 | r1 |

  \sect "A3"

  f,4 f8 f8 f4 f4 | g4 f4 bf4 c4 | d1 | r4 a4 bf4 g4 |
  f1 | r4 c4 c4 d4 | ef4 f4 f2 | r4 c4 c4 d4 |
  ef4 f4 f4 g4 | g2. c,4 | c4 d4 ef4 f4 | g4 a4 bf4 c4 |
  bf1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\include "../Include/refrain.ily"
