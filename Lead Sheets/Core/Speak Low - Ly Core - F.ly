%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Speak Low"
  subtitle = \instrument
  poet = "Ogden Nash"
  composer = "Kurt Weill"
  copyright = "© 1948 Chappell & Co."
}

refrainLyrics = \lyricmode {
Speak low when you speak, love,
Our sum -- mer day with -- ers a -- way too soon, too soon;
Speak low when you speak, love,
Our mo -- ment is swift, like ships a -- drift we´re swept a -- way too soon.
Speak low, dar -- ling, speak low,
Love is a spark lost in the dark too soon, too soon;
I feel wher -- ev -- er I go
That to -- mor -- row is near,
to -- mor -- row is here and al -- ways too soon.
Time is so old and love so brief,
Love is pure gold and time a thief.
We´re late, dar -- ling, we´re late,
The cur -- tain de -- scends, ev -- 'ry -- thing ends too soon, too soon;
I wait, dar -- ling, I wait,
Will you speak low to me, speak love to me and soon.
}

refrainChords = \chordmode {
  s4
  
  g1:m7 c1:7 g1:m7 c1:7 g1:m7 c1:7 a1:m7.5- d1:7   
  bf1:m7 ef1:7 bf1:m7 ef1:7 a2:m7 d2:7 g2:m7 c2:7 f1:maj7 a2:m7 d2:7
  
  g1:m7 c1:7 g1:m7 c1:7 g1:m7 c1:7 a1:m7.5- d1:7   
  bf1:m7 ef1:7 bf1:m7 ef1:7 a2:m7 d2:7 g2:m7 c2:7 f1:maj7 f1:maj7
  
  f1:m7 f1:m7 df1:7 df1:7
  ef1:maj7 ef1:maj7 df1:7 c1:7

  g1:m7 c1:7 g1:m7 c1:7 g1:m7 c1:7 a1:m7.5- d1:7   
  bf1:m7 ef1:7 f2:maj7 ef2:7 d1:7 g1:m7 c1:7 f1:maj7
  
  \chordOpenParen{ a2:m7 }
  \chordCloseParen{ d2:7 }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium"

  \partial 4 c4 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  a'1~ | a2 \tuplet 3/2 { g4 d4 g4 } | a1~ | a2 \tuplet 3/2 { g4 d4 g4 } | 
  \break
  a2 \tuplet 3/2 { g4 d4 g4 } | a2. g4 | d'2. c4| d2. a4 |
  \break
  c1~ | c2 \tuplet 3/2 { bf4 f4 bf4 } | c1~ | c4. bf16( c16) \tuplet 3/2 { bf4 f4 g4 } |
  \break
  a4. a8~ \tuplet 3/2 { a4 e4 f4 } | g4. g8~ \tuplet 3/2 { g4 f4 e4 } | d2 d2 | d2. c4 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  a'1~ | a2 \tuplet 3/2 { g4 d4 g4 } | a1~ | a2 \tuplet 3/2 { g4 d4 g4 } | 
  \break
  a2 \tuplet 3/2 { g4 d4 g4 } | a2. g4 | d'2. c4| d2. a4 |
  \break
  c1~ | c4. bf16( c16) \tuplet 3/2 { bf4 f4 bf4 } | c1~ | c4. bf16 c16 \tuplet 3/2 { bf4 f4 g4 } |
  \break
  a4. a8 \tuplet 3/2 { a4 e4 f4 } | g4. g8 \tuplet 3/2 { g4 f4 e4 } | f1 | r1 |
  
  \bar "||"
  \pageBreak

  \xTextMark \markup{ \bold \box "B" }
  
  \tuplet 3/2 { ef'4 d4 c4 } ef2~ | ef2 af,2 | g2. f4 | f1 |
  \break
  \tuplet 3/2 { d'4 c4 bf4 } d2~ | d2 g,2 | f2. e4 | e2. c4 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A3" }

  a'1~ | a2 \tuplet 3/2 { g4 d4 g4 } | a1~ | a4 r8 g8 \tuplet 3/2 { g4 d4 g4 } | 
  \break
  a2 \tuplet 3/2 { g4 d4 g4 } | a2. g4 | d'2. c4| d2. a4 |
  \break
  c1~ | c2 \tuplet 3/2 { bf4 f4 g4 } | a1~ | a4 a4 bf4 c4 |
  \break
  d4 d4 d4. d8 | d4 d4 d4. d8 | d1 | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
