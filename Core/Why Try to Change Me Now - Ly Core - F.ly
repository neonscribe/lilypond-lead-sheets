%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Why Try to Change Me Now?"
  subtitle = \instrument
  poet = "Joseph McCarthy"
  composer = "Cy Coleman"
  copyright = \markup \small { \now " " "© 1952 Notable Music Co., Inc." }
}

refrainLyrics = \lyricmode {
I'm sen -- ti -- men -- tal __ so I walk __ in the rain.
I've got some ha -- bits __ e -- ven I __ can't ex -- plain.
Could start for the cor -- ner, turn __ up in Spain,
but why try to change me now?

I sit and day -- dream, __ I've got day -- dreams ga -- lore.
Cig -- a -- rette ash -- es, __ there they go __ on the floor.
I'll go a -- way week -- ends, __ leave my keys __ in the door,
but why try to change me now?

Why can't I be __ more con -- ven -- tion -- al? __
Peo -- ple talk, __ peo -- ple stare, __ so I try.
But that's not for me, 'cause I can't see
my kind of cra -- zy world go pass -- ing me by.

So let peo -- ple won -- der, __
let them laugh, __ let them frown.
You know I'll love you __ till the moon's __ up -- side down.
Don't __ you re -- mem -- ber, __ I was al -- ways your clown.
Why try to change me now?
}

refrainChords = \chordmode {
  g2:m7 c2:7.9- f2:maj7 d2:9 g2:m7 c4:7.9- c4:7.9-/bf
  a2:m7.5- d2:7.5+.9- g2:m7 ef2:9 a2:m7 af2:dim7
  g2:m7 c2:7.9- a2:m7 d2:7.9-
  
  g2:m7 c2:7.9- f2:maj7 d2:9 g2:m7 c4:7.9- c4:7.9-/bf
  a2:m7.5- d2:7.5+.9- g2:m7 ef2:9 a2:m7 af2:dim7
  g2:m7 c2:7.9- f2:6
  \chordOpenParen{ d4:m7 }
  \chordCloseParen{ df4:7 }

  c2:m7 f2:7 bf2:6.9 g2:7.5+ c2:m7 f2:9 bf2:6.9
  \chordOpenParen{ e4:m7 }
  \chordCloseParen{ ef4:m7 }
  d2:m7 g2:7 c2:maj7 a2:m7
  d2:m7 g2:7 g2:m7 c4:7
  \chordInsideParens{ fs4:m7 }

  g2:m7 c2:7.9-
  f2:maj7 d2:9 g2:m7 c4:7.9- c4:7.9-/bf
  a2:m7.5- d2:7.5+.9- g2:m7 ef2:9 a2:m7 af2:dim7
  g2:m7 c2:7.9- f2:6
  \chordOpenParen{ ef4:9 }
  \chordCloseParen{ d4:7.9- }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad [Frank Sinatra 1952]" 4 = 77

  \xTextMark \markup{ \bold \box "A1" }
  
  r8 d8 f8 g8 a8 g8~ \tuplet 3/2 { g8 a8 bf8 } |
  c4~ \tuplet 3/2 { c8 a8 c8 } e,2 |
  \break
  r8 d8 f8 g8 a8 g8~ \tuplet 3/2 { g8 a8 bf8 } |
  d4~ \tuplet 3/2 { d8 c8 d8 } bf4. a8 |
  \break
  c4 bf8 c8 bf8 a4. | g4~ \tuplet 3/2 { g8 e8 g8 } e4. ef8 |
  \break
  d4 f8 d8 a'4. gs8 | a2. r4 |
  \sect "A2"

  r8 d,8 f8 g8 a8 g8~ \tuplet 3/2 { g8 a8 bf8 } |
  c4~ \tuplet 3/2 { c8 a8 c8 } e,2 |
  \break
  r8 d8 f8 g8 a8 g8~ \tuplet 3/2 { g8 a8 bf8 } |
  d4~ \tuplet 3/2 { d8 c8 d8 } bf4. a8 |
  \break
  c4 bf8 c8 bf8 a8~ \tuplet 3/2 { a8 g8 f8 } |
  g4~ \tuplet 3/2 { g8 e8 g8 } e4. ef8 |
  \break
  d4 f8 d8 a'4. a8 | f1 |

  \bar "||"

  \xPageBreak
    

  \xTextMark \markup{ \bold \box "B" }

  r8 ef8 g8 bf8 a4~ \tuplet 3/2 { a8 g8 f8 } |
  \tuplet 3/2 { g8 g8 g8~ } g2 \tuplet 3/2 { r8 a8 bf8 } |
  \break
  g4~ \tuplet 3/2 { g8 a8 bf8 } g4~ \tuplet 3/2 { g8 a8 bf8 } |
  g2. r8 gf8 |
  \break
  \tuplet 3/2 { f4 a4 c4 } b2 | \tuplet 3/2 { ef,4 g4 b4 } a2 |
  \break
  r8 d,8 f8 a8 g8 f8 e8 f8 | \tuplet 3/2 { g4 bf4 d4 } c4. cs,8 |
  \sect "A3"

  d4 f8 g8 a8 g8~ \tuplet 3/2 { g8 a8 bf8 } |
  c4~ \tuplet 3/2 { c8 a8 c8 } e,2 |
  \break
  r8 d8 f8 g8 a8 g8~ \tuplet 3/2 { g8 a8 bf8 } |
  d4~ \tuplet 3/2 { d8 c8 d8 } bf2 |
  \break
  c4~ \tuplet 3/2 { c8 bf8 c8 } bf8 a8~ \tuplet 3/2 { a8 g8 f8 } |
  g4 e8 g8 e2 |
  \break
  r8 d8 f8 d8 a'4 a4 | f2. r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
