%% -*- Mode: LilyPond -*-

#(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Scotch and Soda"
  subtitle = \instrument
  poet = ""
  composer = "David Guard"
  copyright = "© 1959 Beechwood Music Corp."
}

refrainLyrics = \lyricmode {
Scotch and so -- da, mud in your eye,
Ba -- by, do I feel high,
Oh me, oh my,
Do I __ feel high, __
Dry mar -- tin -- i,
Jig -- ger of gin,
Oh, what a spell you've got me in,
Oh my,
Do I __ feel high. __
Peo -- ple don't be -- lieve me,
They think that I'm just brag -- ging __
But I could feel the way I do,
And still be on the wag -- on
All I need is one of your smiles,
Sun -- shine of your eye, __ oh me, oh my,
Do I __ feel high -- er than a kite can fly!
Give me lov -- ing, ba -- by, I feel high
}

refrainChords = \chordmode {
  af1:maj7 df1:9 ef1:6 g2:m7 c2:7
  f1:7 f2:m7 bf2:7 d1:m7 af2:m6 g2:7

  af1:maj7 df1:9 ef1:6 g2:m7 c2:7
  f1:7 f2:m7 bf2:7 ef2:9 bf2:m7 ef2:9 ef2:9.5+

  af1:maj7 af1:maj7 ef2:maj7 f4:m7 bf4:7 ef1:maj7
  f1:9 f1:9 bf1:7 f2:m7 bf2:7

  af1:maj7 df1:9 ef1:6 g2:m7 c2:7
  f1:7 f2:m7 bf2:7 g1:m7 c1:7
  f1:m7 bf2:7 af2:7 ef1:6

  \chordOpenParen{ bf2:m7 }
  \chordCloseParen{ ef2:7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key ef \major
  \clef \whatClef
  \tempo "Medium Slow Blues" 4 = 100

  \mark \markup{ \box "A1" }
  
  r8 g8 f8 g4 f4. | r4 \tuplet 3/2 { cf8 ef8 f8 } g2 | r4 \tuplet 3/2 { ef8 f8 g8 } bf8 c4. | d4 c8 bf4 c4. |
  \break
  c,1 | r8 bf'8 g8( bf4) g4. | f1~ | f2. r4 |

  \bar "||"
  \break

  \mark \markup{ \box "A2" }
  
  r8 g8 f8 g4 f4. | r4 \tuplet 3/2 { cf8 ef8 f8 } g2 | r4 \tuplet 3/2 { ef8 f8 g8 } bf8 c4. | d4 c8 bf4 c4. |
  \break
  c,1 | r8 bf'8 g8( bf4) g4. | f1~ | f2. r4 |

  \bar "||"
  \break

  \mark \markup{ \box "B" }
  
  r8 ef8 f8 af4. bf4 | c4. ef,2 af8 | bf4. c8 af4 bf8 g8~ | g8 bf4.~ bf4 r8 g8 |
  \break
  g8 g4 f2 c8 | g'8 g4 f2 f8 | c'4 bf4 af4 g4 | f4. bf4. r4 |

  \bar "||"
  \break

  \mark \markup{ \box "C" }
  
  r8 g8 f8 g4 f4. | r4 \tuplet 3/2 { cf8 ef8 f8 } g2 | r8 ef4 f8 g8 bf4 d8~ | d4 c8 bf4 c4. |
  \break
  c,1 | r8 bf'8 g8( bf4) g4. | bf8 bf8 \tuplet 3/2 { bf8 bf8 bf8~ } bf8 g4. | d'8( c4.~ c2) |
  \break
  r8 ef4 c8 ef8 c4. | bf8 c4. gf4 ef8 ef8~ | ef1 | r1 |

  \bar "|."


}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
