%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "The Nearness of You"
  subtitle = \instrument
  poet = "Ned Washington"
  composer = "Hoagy Carmichael"
  copyright = \markup \small "© 1937 Famous Music Corp."
}

refrainLyrics = \lyricmode {
It's not the
pale moon that ex -- cites me,
that thrills and de -- lights me.
Oh no, __ it's just the near -- ness of
you.

It is -- n't
your sweet con -- ver -- sa -- tion
That brings this sen -- sa -- tion.
Oh no, __ it's just the near -- ness of
you.

When you're in my
arms __
and I feel you so close to me, __
all my wild -- est dreams come true. __

I need no
soft lights to en -- chant me
if you'll on -- ly grant me
the right __ to hold you ev -- er so tight, __
and to feel in the night
The near -- ness of you. __
}

refrainChords = \chordmode {
  s2
  
  f1:maj7 c2:m7 f2:7 bf1:maj7 bf1:dim7
  a2:m7 af2:7 g2:m7 c2:7
  
  a2:m7 d2:7 g2:m7 c2:7
  
  f1:maj7 c2:m7 f2:7 bf1:maj7 bf1:dim7
  a2:m7 af2:7 g2:m7 c2:7
  
  f2:6 bf2:maj7 f2/a af2:7
  
  g1:m7 c1:7
  f2:maj7 f2:7 c2:m7 f2:7 bf1:maj7 a2:m7.5- d2:7
  g2:m7 ef2:7 c1:7
  
  f1:maj7 c2:m7 f2:7 bf1:maj7 bf1:dim7
  a2:m7 af2:7 g2:m7 c2:7

  a1:m7.5- d1:7 g1:m7 c1:7
  f2:6
  \chordOpenParen{ d2:m7 }
  g2:m7
  \chordCloseParen{ c2:7 }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium"
  
  \partial 2 \invisEighth c8 f8 g8 |
  \bar "||"

  \sectStart "A1"
  
  a2 c4 bf8 a8 | g4 bf2 a4 | f2 a4 g4 | e4 g2 f4 |
  c1~ | c8 d8 e8 f8 \tuplet 3/2 { g4 f4 e4 } |
  c'1~ | c2~ c8 c,8 f8 g8 |

  \sect "A2"
  
  a2 c4 bf8 a8 | g4 bf2 a4 | f2 a4 g4 | e4 g2 f4 |
  c1~ | c8 d8 e8 f8 \tuplet 3/2 { g4 f4 e4 } |
  f1~ | f2 c8 d8 e8 f8 |

  \sect "B"
  
  g1~ | g4 e8 f8 g8 f4 e8 |
  a4. e8 ef2~ | ef2~ ef8 f4 f8 | d'2. d4 | c2. bf4 |
  g1~ | g2~ g8 c,8 f8 g8 |
  
  \sect "A3"

  a2 c4 bf8 a8 | g4 bf2 a4 | f2 a4 g4 | e4 g2 f4 |
  c1~ | c8 d8 e8 f8 \tuplet 3/2 { g4 f4 e4 } |
  c'1~ | c4 a8 bf8 \tuplet 3/2 { c4 bf4 a4 } |
  d2. d,4 | e4 f2 g4 | f1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
