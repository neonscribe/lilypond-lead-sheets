%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Small Day Tomorrow"
  subtitle = \instrument
  poet = "Fran Landesman"
  composer = "Bob Dorough"
  copyright = \markup \small { \now " " "© 1972 Cromwell Music, Inc." }
}

refrainMaleSingerLyrics = \lyricmode {
I don't have to go to bed,
I've got a small __ day to -- mor -- row.
(Small day to -- mor -- row.)
I don't have to use my head, __
I've got a small day to -- mor -- row. __

I can sleep the day a -- way
and it won't cause too much sor -- row.
(Not to -- mor -- row.)
So to -- night this cat will play, __
he's got a small day __ to -- mor -- row. __

Now all those big wheels,
with all their big deals,
are gon -- na need their sleep,
but I'm a drop -- out
who'd ra -- ther cop out
Than run with all the sheep. __

Hon -- ey chile, to -- night's the night,
and there's a car I can bor -- row
till to -- mor -- row.
We can swing till broad day -- light, __
I've got a small __ day to -- mor -- row. __

night.

And there's a car I can bor -- row till day af -- ter to -- mor -- row.
We can swing right out of sight; we've got a long night and a small __
day to -- mor -- row. __
}

refrainFemaleSingerLyrics = \lyricmode {
I don't have to go to bed,
I've got a small __ day to -- mor -- row.
(Small day to -- mor -- row.)
I don't have to use my head, __
I've got a small day to -- mor -- row. __

I can sleep the day a -- way
and it won't cause too much sor -- row.
(Not to -- mor -- row.)
So to -- night this mouse will play, __
she's got a small day __ to -- mor -- row. __

Now all those big wheels,
with all their big deals,
are gon -- na need their sleep,
but I'm a drop -- out
who'd ra -- ther cop out
Than run with all the sheep. __

Hon -- ey chile, to -- night's the night,
and there's a car I can bor -- row
till to -- mor -- row.
We can swing till broad day -- light, __
I've got a small __ day to -- mor -- row. __

night.

And there's a car I can bor -- row till day af -- ter to -- mor -- row.
We can swing right out of sight; we've got a long night and a small __
day to -- mor -- row. __
}

refrainLyrics =
#(if (and (defined? 'femaleSinger) femaleSinger)
  refrainFemaleSingerLyrics
  refrainMaleSingerLyrics)

refrainChords = \chordmode {
  a2:m a2:1.3-.5+ a1:m6 f2:maj7 f2:maj7.11+ b2:m7.5- e2:7
  a2:m a2:1.3-.5+ a2:m6 a2:m7 f2:7 e2:7.5+ a2:m b4:m7.5- e4:7

  a2:m a2:1.3-.5+ a1:m6 f2:maj7 f2:maj7.11+ b2:m7.5- e2:7
  a2:m a2:1.3-.5+ a2:m6 a2:m7 f2:7 e2:7.5+ a2:m a4:m7 bf8:m7 b8:m7
  
  c2:m7 af2:m7 c2:m7 af2:m7 c2:m7 af4:m7 af4:m7/df d2:m7 g2:7.5+
  fs2:m7.5- f2:7.9+ fs2:m7.5- f2:7.9+ e2:m11 a4:7.5+ a4:7.5+/bf b2:m7.5- e2:7.11+
  
  a2:m a2:1.3-.5+ a1:m6 f2:maj7 f2:maj7.11+ b2:m7.5- e2:7
  a2:m a2:1.3-.5+ a2:m6 a2:m7 f2:7 e2:7.5+ a2:m a4:m7 bf8:m7 b8:m7

  a2:m6 a2:m7 f2:maj7 f2:maj7.11+ b2:m7.5- e2:7 a2:m a2:1.3-.5+
  a2:m6 a2:m7 f1:7 e2:7 e2:7.5+ a2:m a2:1.3-.5+ a2:m6 a2:1.3-.5+ a2:m6 a2:1.3-.5+ a1:m6
}

refrainKey = a

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium" 4 = 120

  \sectStart "A1"
  
  b4 a4 b8 a8 b8 a8 | e2 r8 e8 e8 d8 | e4~ \tuplet 3/2 { e8 d8 e8 } d8 b4. | r4 \tuplet 3/2 { e8 d8 e8 } d8 b4. |
  \break
  b'4 a4 b8 a8 b8 a8 | e2~ e8 a,8 c8 d8 | ef2 d4. c8 | a8 a4.~ a4 r4 |

  \sect "A2"

  b'4 a4 b8 a8 b8 a8 | e2 r8 e8 e8 e8 | e4 d8 e8 d8 b4. | r4 e8 d8 d8 b4. |
  \break
  b'4 a4 b8 a8 b8 a8 | e2~ e8 a8 e8 c8 | ef4. d8~ d4. c8 | a8 a4.~ a2 |
  
  \sect "B"
  \segnoSign
  
  r8 g'8 g8 g8 bf8 bf4. | r8 g8 g8 g8 bf8 bf4. | r8 g8 g8 g8 bf4 bf4 | g1 |
  \break
  r8 a8 a8 a8 c8 c4. | r8 a8 a8 a8 c8 c4 c8 | a4 a4 c4 c8 a8~( | a2 as4.) r8 |
  \bar "||"
  
  \xPageBreak
  
  \sectNoBar "A3"

  \tuplet 3/2 { r4 b4 a4 } b8 a8 b8 a8 \textToCodaLastTime | e2 r8 a,8 c8 d8 |
  e4. d16 e16 d8 b4. | \tuplet 3/2 { r4 e4 d4 } d8 b4. |
  \break
  r8 b'4 a8 b8 a8 b8 a8 | e2~ e8 a8 c8 a8 | g4( f4) e4. c8 | a8 a4.~ a2 \dalSegno |
  
  \bar "||-|."

  \textCodaBreak
  
  e'2. \tuplet 3/2 { e8 e8 d8 } | e4. d16 e16 d8 b4. | 
  \tuplet 3/2 { r8 e8 e8 } \tuplet 3/2 { e8 d8 e8 } d8 b4. | r8 b'4 a8 b8 a8 b8 a8 |
  \break
  c2~ c8 a8 c8 a8 | g4 f2 g8 f8 | f8( e4.) c'4. gs8 | b8 a4.~ a2~ | a1 | r1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
