%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "September Song"
  subtitle = \subtitle
  poet = "Maxwell Anderson"
  composer = "Kurt Weill"
  copyright = \markup \small { \now " " "© 1938 Chappell & Co." }
}

refrainLyrics = \lyricmode {
Oh, it's a long, long while from May to De -- cem -- ber, __
but the days grow short __ when you reach Sep -- tem -- ber. __
When the au -- tumn wea -- ther __ turns the leaves to flame.
One has -- n't got time __ for the wait -- ing game. __
Oh, the days dwin -- dle down __ to a pre -- cious few, __
Sep -- tem -- ber, No -- vem -- ber.
And these few pre -- cious days I'll spend with you,
These pre -- cious days I'll spend with you.
}

refrainChords = \chordmode {
  s2.

  ef1:9 ef2:9 gf4:maj7 cf4:maj7 bf2:maj7 c2:m7 d2:m7 g2:m7
  c2:sus9 c2:9 f2:sus7.9- f2:7 bf2:maj7 f2:sus9 bf1:maj7

  ef1:9 ef2:9 gf4:maj7 cf4:maj7 bf2:maj7 c2:m7 d2:m7 g2:m7
  c2:sus9 c2:9 f2:sus7.9- f2:7 bf2:maj7 f2:sus9 bf1:maj7

  ef1:m6 ef1:m6 e1:dim7 e1:dim7
  ef1:m6 ef1:m6 e1:dim7 bf4:maj7/f r2.

  ef1:9 ef2:9 gf4:maj7 cf4:maj7 bf2:maj7 c2:m7 d2:m7 g2:m7
  c2:sus9 c2:9 ef2:m7 cf2:maj7  bf2:6
  \chordOpenParen{ f2:sus9 }
  bf2:maj7
  \chordCloseParen{ bf2:7 }
}

refrainKey = bf

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Ballad [Frank Sinatra 1946]" 80

  \partial 2. bf,4 d4 a'4 |

  \sectNoBreak "A1"

  g4 g4 g2 | r4 bf,4 \tuplet 3/2 { bf4 df4 gf4 } | f4. f8~ f2 | r4 d8 d8 f4 bf4 |
  c1~ | c4 c,4 \tuplet 3/2 { c4 bf4 c4 } | d4. d8~ d2 | r4 bf8 bf8 d4 a'4 |

  \sect "A2"

  g4. g8~ g2 | r4 bf,8 bf8 df4 gf4 | f1 | r4 d4 f8 f8 bf4 |
  c1~ | c4 c,8 d8 ef4 ef4 | d1~ | d4 r4 bf'4 bf4 |

  \sectPageBreak "B"

  c4 bf8 a8 bf2~ | bf2 bf4 bf4 | df4. bf8 bf2~ | bf2 r4 r8 bf8 |
  c2 bf2 | r2 r4 r8 bf8 | df2 bf2 | r4 bf,4 d4 a'4 |

  \sect "A3"

  g4. g8 g2 | r4 bf,4 df4 gf4 | f1 | r4 d4 f4 bf4 |
  c2. g4 | bf2 bf2 | bf1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\include "../Include/refrain.ily"
