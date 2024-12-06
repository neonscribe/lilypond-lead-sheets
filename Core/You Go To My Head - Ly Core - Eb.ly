%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "You Go To My Head"
  subtitle = \instrument
  poet = "Haven Gillespie"
  composer = "J. Fred Coots"
  copyright = "© 1938 Remick Music Corp."
}

refrainLyrics = \lyricmode {
  You
  go to my head
  and you lin -- ger like a haunt -- ing re -- frain
  and I find you spin -- ning 'round in my brain
  like the bub -- bles in a glass of cham -- pagne.
  You
  go to my head
  like a sip of spark -- ling bur -- gun -- dy brew
  and I find the ver -- y men -- tion of you
  like the kick -- er in a
  ju -- lep or two. The thrill of the thought that you might give a thought to my plea
  casts a spell o -- ver me.
  Still I say to my -- self “Get a hold of your -- self,
  can't you see that it nev -- er can be.” You
  go to my head
  with a smile that makes my tem -- p'ra -- ture rise,
  like a sum -- mer with a thou -- sand Ju -- lys,
  You in -- tox -- i -- cate my
   soul with your eyes. Tho' I'm cer -- tain that this heart of mine
  has -- n't a ghost of a chance in this cra -- zy ro -- mance,
  You go to my head.
}

refrainChords = \chordmode {
  \chordInsideParens{ bf4:7 }

  ef1:maj7 af2:m7 df2:7 gf1:maj7 f2:7 bf2:7
  ef1:m f2:7 bf2:7.9- ef1:maj7 f2:m7 bf2:7.9-

  ef1:maj7 af2:m7 df2:7 gf1:maj7 f2:7 bf2:7
  ef1:m f2:7 bf2:7.9- ef1:maj7 bf2:m7 ef2:7
  
  af1:maj7 d1:7.9- ef2:maj7 f4:m7 bf4:7 ef1:maj
  a2:m7 d2:7.9- g2:maj7 gs2:dim7 a2:m7 d2:7.9+ g4:m7 gf4:m7 f4:m7 bf4:7
  
  ef1:maj7 af2:m7 df2:7 gf1:maj7 f2:7 bf2:7
  ef1:m f2:7 bf2:7 ef1:maj7 bf2:m7 ef2:7.9-
  
  af1:maj7 df1:7 ef1:maj7 c2:m7 gf2:dim7
  f1:m7 bf1:7.9- ef2:maj7
  
  \chordOpenParen{ c2:7.9-.5+ }
  f2:m7
  \chordCloseParen{ bf2:7.9- }
}

refrainKey = ef

refrainMelody = \relative g' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Bossa Nova"

  \partial 4 bf4 |
  
  \bar "$"
  \xTextMark \markup{ \bold \box "A1" }

  bf'8 bf8 bf8 bf8~ bf2 | r4 bf8 bf8 af8 af8 bf8 bf8 | f8 f8 ef8 f8~ f2 |
  r4 ef8 ef8 gf8 gf8 f8 f8 |
  \break
  f8 f8 ef8 f8~ f2 | r4 ef8 ef8 gf8 gf8 f8 f8 |
  f8 ef8 ef8 ef8~ ef2 | r2 r4 bf4 |

  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "A2" }

  bf'8 bf8 bf8 bf8~ bf2 | r4 bf8 bf8 af8 af8 bf8 bf8 | f8 f8 ef8 f8~ f2 |
  r4 ef8 ef8 gf8 gf8 f8 f8 |
  \break
  f8 f8 ef8 f8~ f2 | r4 ef8 ef8 gf8 gf8 f8 f8 |
  f'8 ef8 ef8 ef8~ ef2 | r2 r4 ef,4 |
    
  \bar "$"
  \break

  \xTextMark \markup { \bold \box "B" }

  f8 f8 f8 c'8~ c4 c8 c8 | fs,8 fs8 fs8 c'8~ c4 c8 c8 |
  bf4 g8 ef8 c8 ef8 g8 c8~ | c2. bf8 c8 |
  \tuplet 3/2 { d4 d4 d4 } \tuplet 3/2 { d4 d4 d4 } | \tuplet 3/2 { d4 d4 d4 } \tuplet 3/2 { d4 d4 d4 } |
  d,4 d8 d8 \tuplet 3/2 { d4 d4 d4 } | d2. bf4 |
  
  \bar "||"
  \xPageBreak
  
  \xTextMark \markup { \bold \box "C" }

  bf'8 bf8 bf8 bf8~ bf2 | r4 bf8 bf8 af8 af8 bf8 bf8 | f8 f8 ef8 f8~ f2 |
  r4 ef8 ef8 gf8 gf8 f8 f8 |
  \break
  f8 f8 ef8 f8~ f2 | r4 ef8 ef8 gf8 gf8 f8 f8 |
  f8 f8 ef8 bf'8~ bf2~ | bf2. bf8 b8 |

  \break
  \bar "$"

  \xTextMark \markup { \bold \box "D" }

  c4 c,4 d4 ef4 | g8 f4 af8~ af2 |
  \tuplet 3/2 { g4 ef4 g4 } \tuplet 3/2 { bf4 g4 bf4 } |
  \tuplet 3/2 { c4 g4 c4 } \tuplet 3/2 { d4 d4 c4 } |
  \break
  bf1~ | bf4 bf4 \tuplet 3/2 { bf4 bf4 bf4 } |

  bf1 | r1 |

  \bar "|."
}
  
\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

performanceNotes =
\markup {
  \column {
    \line { \huge { I-vi-ii-V vamp in, vocal chorus } }
    \line { \huge { accordion solo A1, A2, guitar solo B, C, turnaround to B } }
    \line { \huge { vocal B to end, repeat 39&40 3x, I-vi-ii-V vamp out } }
  }
}

\include "../Include/notes.ily"
