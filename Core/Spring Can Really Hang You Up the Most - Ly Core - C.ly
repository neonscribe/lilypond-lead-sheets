%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "Spring Can Really Hang You Up the Most"
  subtitle = \instrument
  poet = "Fran Landesman"
  composer = "Tommy Wolf"
  copyright = \markup \small "© 1955 Wolf-Mills Music, Inc."
}

refrainLyrics = \lyricmode {
Once I was a sen -- ti -- men -- tal thing.
Threw my heart a -- way each Spring.
Now a Spring ro -- mance has -- n't got a chance, pro -- mised my first dance to Win -- ter.
All I've got to show's a splin -- ter for my lit -- tle fling.

Spring this year has got me feel -- ing like a horse that nev -- er left the post.
I lie in my room star -- ing up at the ceil -- ing.
Spring can real -- ly hang you up the most.

Morn -- ing's kiss wakes trees and flow -- ers, and to them I'd like to drink a toast.
I walk in the park just to kill lone -- ly hours.
Spring can real -- ly hang you up the most.

All aft -- er -- noon those birds twit -- ter twit.
I know the tune. “This is love, this is it.”
Heard it be -- fore and I know the score.
And I've de -- cid -- ed that Spring is a bore.

Love seemed sure a -- round the New Year.
Now it's A -- pril, love is just a ghost.
Spring ar -- rived on time, on -- ly what be -- came of you, dear?
Spring can real -- ly hang you up the most.
Spring can real -- ly hang you up the most.

di -- tion must be chron -- ic.
Spring can real -- ly hang you up the most.
All a -- lone, the par -- ty's o -- ver.
Old Man Win -- ter was a gra -- cious host.
But when you keep pray -- ing for snow to hide the clo -- ver,
Spring can real -- ly hang you up the most.
}

refrainLyricsTwo = \lyricmode {
_ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _ _ _ _

Spring is here, there's no mis -- tak -- ing.
Rob -- ins build -- ing nests from coast to coast.
My heart tries to sing so they won't hear it break -- ing.
Spring can real -- ly hang you up the most.

Col -- lege boys are writ -- ing son -- nets, in the “ten -- der pas -- sion” they're en -- grossed.
But I'm on the shelf with last year's Eas -- ter bonnets.
Spring can real -- ly hang you up the most.

Love cam my way. I hoped it would last.
We had our day, now that's all in the past.
Spring came a -- long a sea -- son of song.
Full of sweet pro -- mise, but some -- thing went wrong.
Doc -- tors once pre -- scribed a ton -- ic.
Sul -- phur and mo -- las -- ses was the dose.
Did -- n't help a bit, my con-
}

refrainChords = \chordmode {
  c2:maj7 bf2:13 c1:maj7 c2:maj7 bf2:13 c1:maj7
  bf2:m7 af2:maj7 fs2:m7 e2:maj7 d2:m7 c2:maj7 a1:m9
  d2:m9 g2:7 c2:maj7 a2:7.9- d2:m11 a2:7.9-.5+ d2:9 g2:13
  
  c2:maj7 bf2:maj9 c2:maj7 bf2:maj9 c4:maj7 a4:m7 d4:m7 g4:7 e2:m7 a2:7.9-
  fs2:m7.5- f2:m7 e2:m7 d2:7 d2:m7 g2:7 c2:maj7 bf2:maj7
  
  c2:maj7 bf2:maj9 c2:maj7 bf2:maj9 c4:maj7 a4:m7 d4:m7 g4:7 e2:m7 a2:7.9-
  fs2:m7.5- f2:m7 e2:m7 d2:7 d2:m7 g2:7 c1:maj7
  
  g2:m7 c2:maj7 g2:m7 c2:maj7 g2:m7 c2:maj7 g2:m7 c2:maj7
  c2:m7 f2:maj7 c2:m7 f2:maj7 fs4:m7 b4:7 e2:maj7 a2:m7 d2:7
  
  g2:maj7 f2:maj9 c2:maj7 bf2:maj9 c4:maj7 a4:m7 d4:m7 g4:7 e2:m7 a2:7.9-
  fs2:m7.5- f2:m7 e2:m7 d2:7 d2:m7 g2:7 e2:m7 a2:7.9-
  d2:m7 g2:7 c2:maj7 bf2:maj7
  
  ef2:m7 af2:7 d2:m7 g2:7 e2:m7 a2:7.9- d2:m7 c2:maj7
  d2:m7 c2:maj7 b4:m7.5- e4:7.9- a2:m7 d1:13
  d2:m7 bf2:9 e2:m7 a2:7 d2:m11 df2:maj7 c1:maj7
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad [Ella Fitzgerald 1961]" 4 = 55

  \sectStart "Verse"
  
  g,8 c8 d8 e8 f8 e8 d8 c8 | d1 | g,8 c8 d8 e8 f4 e4 | g1 |
  af8 af af8 bf8 g2 | e8 e8 e8 fs8 ds2 | c8 c8 c8 d8 b4. g'8 | b4 e,2. |
  e8 e8 e8 f8 d4. a'8 | c4 g2. | g4 a4 f4 g4 | e1 |
  
  \bar "||-|."
  \sectNoBar "A1"
  \segnoSign

  e4 g8 c8~ c4. g8 | e4 g8 c8~( c8 d8) c4 | b8 g8 e8 c8 a'8 f8 d8 b8 | g'2. f4 |
  e8 c8 c8 c8~ c4 c8 d8 | g8 c,8 c8 c8~ c8 d4. | e8 d8 c8 a8 g8 g8 g8 g8 | g1 |

  \sect "A2"

  e'4 g8 c8~ c4. g8 | e4 g8 c8~( c8 d8) c4 | b8 g8 e8 c8 a'8 f8 d8 b8 | g'2. f4 |
  e8 c8 c8 c8~ c4 c8 d8 | g8 c,8 c8 c8~( c8 d4.) | e8 d8 c8 a8 g8 b8 d8 f8 | e1 |

  \xPageBreak

  \bar "||"
  \sectNoBar "B"
  
  bf'4. g16 f16 g4. g8 | bf8( c4) a16 f16 g2 | bf4. g16 f16 g4. e16 g16 | bf8( c4) a16 f16 g2 |
  ef4. c16 bf16 c4. c8 | ef8( f4) d16 bf16 c2 |
  \tuplet 3/2 { b4 b4 b4 } \tuplet 3/2 { ds4 ds4 ds4 } | \tuplet 3/2 { e4 e4 e4 } fs2 |
  
  \sect "C"
  
  b,4 d8 g8~ g4. d8 | e4 g8 c8~( c8 d8) c4 | b8 g8 e8 c8 a'8 f8 d8 b8 | g'2. g8 f8 |
  e4 c8 c8~ c4 c8 d8 \textToCodaLastTime | g8 c,8 c8 c8 c8 d4. | e8 d8 c8 a8 g8 b8 d8 a'8 | g1 |
  e8 d8 c8 a8 g8 g8 g8 g8 | g1 |
  
  \bar "||-|."
  \textCodaBreak
  
  af'8 df,8 df8 df8 df8 ef4. | e8 d8 c8 a8 g8 b8 d8 a'8 | g1 |
  a4. a8 g4. g8 | a4. a8 g8 g4. | f8 f8 f8 f8 e8 c8 e8 g8 | b2. a8 b8 |
  c4 c,4 c8 d4 c8 | b'8 b,8 b8 b8 b8 cs4. | g'8 f8 e8 d8 df8 c8 bf8 af8 | g1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup{ "Solo on form " \box \bold "A1" \box \bold "A2" \box \bold "B" \box \bold "C"
	 ". D.S. al Coda after solos." }
