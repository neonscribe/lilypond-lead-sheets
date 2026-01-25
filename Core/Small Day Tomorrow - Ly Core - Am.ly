%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

#(set-global-staff-size 18)

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

Hon -- ey chile, to -- night's the night,
and there's a car I can bor -- row till day af -- ter to -- mor -- row.
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
than run with all the sheep. __

Hon -- ey Chile, to -- night's the night,
and there's a car I can bor -- row
till to -- mor -- row.
We can swing till broad day -- light, __
I've got a small __ day to -- mor -- row. __

Hon -- ey Chile, to -- night's the night,
and there's a car I can bor -- row till day af -- ter to -- mor -- row.
We can swing right out of sight; we've got a long night and a small __
day to -- mor -- row. __
}

refrainLyrics =
#(if (and (defined? 'femaleSinger) femaleSinger)
  refrainFemaleSingerLyrics
  refrainMaleSingerLyrics)

refrainHLChords = \chordmode {
  a1:m fs1:7.11+.9+ f1:13 e1:7.5+

  a2:m a2:1.3-.5+ a1:m6 f2:maj7 f2:maj7.11+ b2:m7.5- e2:7
  a2:m a2:1.3-.5+ a2:m6 a2:m7 f2:7 e2:7.5+ a2:m b4:m7.5- e4:7

  a2:m a2:1.3-.5+ a1:m6 f2:maj7 f2:maj7.11+ b2:m7.5- e2:7
  a2:m a2:1.3-.5+ a2:m6 a2:m7 f2:7 e2:7.5+ a2:m a4:m7 bf8:m7 b8:m7
  
  c2:m7 af2:m7 c2:m7 af2:m7 c2:m7 af4:m7 af4:m7/df d2:m7 g2:7.5+
  fs2:m7.5- f2:7.9+ fs2:m7.5- f2:7.9+ e2:m11 a4:7.5+ a4:7.5+/bf b2:m7.5- e2:7.11+
  
  a2:m a2:1.3-.5+ a1:m6 f2:maj7 f2:maj7.11+ b2:m7.5- e2:7
  a2:m a2:1.3-.5+ a2:m6 a2:m7 f2:7 e2:7.5+ a2:m a4:m7 bf8:m7 b8:m7

  a2:m f2/a a2:m6 a2:m7 f2:maj7 f2:maj7.11+ b2:m7.5-.11 e2:7.9-
  a2:m f2/a a2:m6 a2:m7 f2.:13 r4 e2.:7.5+ r4*5

  a1:m fs1:7.11+.9+ f1:13 e1:7.5+
}

refrainNRChords = \chordmode {
  a1:m fs1:7.11+.9+ f1:13 e1:7.5+

  a2:m f2/a a2:m6 a2:m7 f2:maj7 f2:maj7.11+ b2:m7.5-.11 e2:7.9-
  a2:m f2/a a2:m6 a2:m7 f2:7 e2:7.9- a2:m \chordInsideParens{ e2:7.5+ }

  a2:m f2/a a2:m6 a2:m7 f2:maj7 f2:maj7.11+ b2:m7.5-.11 e2:7.9-
  a2:m f2/a a2:m6 a2:m7 f2:7 e2:7.9- a1:m

  c2:m7 af2:m9 c2:m7 af2:m9 c2:m7 af4:m7 af4:m7/df d2:m11 g2:7.5+
  fs2:m7.5- f2:7 fs2:m7.5- f2:7 e2:m11 a2:7.9+.5+ b2:m7.5- e2:7.5-
  
  a2:m f2/a a2:m6 a2:m7 f2:maj7 f2:maj7.11+ b2:m7.5-.11 e2:7.9-
  a2:m f2/a a2:m6 a2:m7 b4:m7.5- f4:7 e2:7.5+ a2:m \chordInsideParens{ e2:7.5+ }

  a2:m f2/a a2:m6 a2:m7 f2:maj7 f2:maj7.11+ b2:m7.5-.11 e2:7.9-
  a2:m f2/a a2:m6 a2:m7 f2.:13 r4 e2.:7.5+ r4*5

  a2:m fs2:7.11+.9+ f2:9 e2:7.5+.9+ d1:9.11+
}

refrainChords = \refrainNRChords

refrainKey = a

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Ballad [Irene Kral 1977]" 4 = 60

  \sectStart "Intro"
  
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |

  \sect "A1"
  
  b4 a4 b8 a8 b8 a8 | e2 r8 e8 e8 d8 | e4~ \tuplet 3/2 { e8 d8 e8 } d8 b4. | r4 \tuplet 3/2 { e8 d8 e8 } d8 b4. |
  \break
  b'4 a4 b8 a8 b8 a8 | e2 r8 a,8 c8 d8 | ef2 d4. c8 | a8 a4.~ a4 r4 |

  \sect "A2"

  b'4 a4 b8 a8 b8 a8 | e2 r8 e8 e8 d8 | e4~ \tuplet 3/2 { e8 d8 e8 } d8 b4. | r4 e8 d8 d8 b4. |
  \break
  b'4 a4 b8 a8 b8 a8 | e2 r8 a8 e8 c8 | ef2 d4. c8 | a8 a4.~ a2 |
  
  \sect "B"
  
  r8 g'8 g8 g8 bf8 bf4. | r8 g8 g8 g8 bf8 bf4. | r8 g8 g8 g8 bf4 bf4 | g1 |
  \break
  r8 a8 a8 a8 c8 c4. | r8 a8 a8 a8 c8 c4 c8 | a4 a4 c4 c4 | a2( as2) \textToCodaLastTime |
  \bar "||"
  
  \xPageBreak
  
  \sectNoBar "A3"

  \tuplet 3/2 { r4 
		\once \omit Accidental b4 
		\once \omit Accidental a4 } b8 a8 b8 a8 |
  e2 r8 a,8 c8 d8 |
  e4~ \tuplet 3/2 { e8 d8 e8 } d8 b4. |
  r4 e8 d8 d8 b4. |
  r8 b'4 a8 b8 a8 b8 a8 | e2 r8 a8 c8 a8 | g4( f4) e4. c8 | a8 a4.~ a2 |
  
  \bar "||-|."

  \textCodaBreak
  
  \tuplet 3/2 { r4 
		\once \omit Accidental b'4 
		\once \omit Accidental a4 } b8 a8 b8 a8 |
  e2 r8 a,8 c8 d8 |
  e4~ \tuplet 3/2 { e8 d8 e8 } d8 b4. |
  
  \tuplet 3/2 { r8 e8 e8 } \tuplet 3/2 { e8 d8 e8 } d8 b4. |
  b'4 a4 b8 a8 b8 a8 | c2 r8 a8 c8 a8 | g4\fermata f2 g8 f8 |
  e2\fermata c'4. gs8 | b8 a4.~ a2 |
  

  \rsq_"(a tempo piano fill)" \rsq \rsq \rsq | \rsq \rsq \rsq_"rit." \rsq |
  \rsw\fermata | 

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
