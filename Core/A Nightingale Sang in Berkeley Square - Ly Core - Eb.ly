%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "A Nightingale Sang in Berkeley Square"
  subtitle = \instrument
  poet = "Eric Maschwitz"
  composer = "Manning Sherwin"
  copyright = \markup \small { \now " " "© 1940 The Peter Maurice Music Co. Ltd." }
}

refrainLyrics = \lyricmode {
That cer -- tain night, the night we met, there was mag -- ic a -- broad in the air.
There were an -- gels din -- ing at the Ritz,
and a night -- in -- gale sang in Ber -- k'ley Square. I
_
The moon that lin -- gered o -- ver Lon -- don town, __
poor puz -- zled moon, he wore a frown;
how couldf he know we two were so in love, __
the whole darn world seemed up -- side down.
The streets of town were paved with stars,
it was such a ro -- man -- tic af -- fair,
and as we kissed and said “good night”
a night -- in -- gale sang in Ber -- k'ley Square.
}

refrainLyricsTwo = \lyricmode {
_ may be right, I may be wrong,
but I'm per -- fect -- ly will -- ing to swear
that _ when you turned and smiled at me _
a night -- in -- gale sang in Ber -- k'ley _ _ Square.
}

refrainChords = \chordmode {
  s4

  ef2:maj7 c2:m7 g2:m7 bf4:m7 ef4:7 af2:maj7 g2:7.9- c2:m7 af2:m6
  ef2:maj7/bf bf2:sus7 ef2:7 af4:m7 df4:7 g2:m7 c2:m7 f2:m7 bf2:7
  
  ef2:6 c2:m7 f2:m7 bf2:7
  
  ef1:6 a2:m7 d2:7
  
  g2:maj7 e2:m7 a2:m7 d2:7 b2:m7 bf2:dim7 a2:m7 d2:7
  g2:maj7 e2:m7 a2:m7 d2:7 b2:m7 e2:dim7 f2:m7 bf2:7

  ef2:maj7 c2:m7 g2:m7 bf4:m7 ef4:7 af2:maj7 g2:7.9- c2:m7 af2:m6
  ef2:maj7/bf bf2:sus7 ef2:7 af4:m7 df4:7 g2:m7 c2:m7 f2:m7 bf2:7
  ef2:6
  \chordOpenParen{ c2:m7 }
  f2:m7
  \chordCloseParen{ bf2:7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Ballad [Bobby Darin 1962]" 4 = 116

  \partial 4 \invisEighth bf,8 |

  \xTextMark \markup{ \bold \box "A1" }
  
  \bar ".|:"
  \repeat volta 2 {
  g'4 g4 ef4. ef8 | bf'4 bf4 g4 ef8 ef8 |
  \tuplet 3/2 { c'4 c4 c4 } \tuplet 3/2 { d4 d4 d4 } | ef2. ef8 ef8 |
  \break
  d4 bf4 c4. af8 | bf4 ef,4 bf'4 af8 af8 | g8 af8 bf4 ef,4 ef4 | ef2 f2 |
  \break
  \alternative { \volta 1 {
  ef1 | r2 r4 r8 bf8 |
  } \volta 2 {
  ef1 | r1 |
  } } }
  \sect "B"
  
  r8 d8 e8 fs8 g8 a8 b8 c8 | d8 d4 b8~ b4. b8 | a4 a4 fs4. fs8 | e4 fs4 d2 |
  \break
  r8 d8 e8 fs8 g8 a8 b8 c8 | d8 d4 b8~ b4. b8 | a4 a4 g4. g8 | c4 c4 bf4. bf,8 |
  
  \sect "A2"
  
  g'4 g4 ef4. ef8 | bf'4 bf4 g4 ef8 ef8 |
  \tuplet 3/2 { c'4 c4 c4 } \tuplet 3/2 { d4 d4 d4 } | ef2. ef4 |
  \break
  d4 bf4 c4. af8 | bf4 ef,4 bf'4. af8 | g8 af8 bf4 ef,4 ef4 | ef2 f2 | ef1 | r1 |

  \sect "C"

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
