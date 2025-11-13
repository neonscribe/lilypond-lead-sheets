%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Pennies From Heaven"
  subtitle = \instrument
  poet = "John Burke"
  composer = "Arthur Johnston"
  copyright = \markup \small { \now " " "© 1936 Select Music Publications, Inc." }
}

refrainLyrics = \lyricmode {
Ev -- 'ry -- time it rains it rains __ pen -- nies from hea -- ven.
Don't you know each cloud con -- tains __ pen -- nies from hea -- ven?
You'll find your for -- tune fall -- ing all o -- ver town. __
Be sure that your um -- brel -- la is up -- side -- down. __
Trade them for a pack -- age of __ sun -- shine and flow -- ers.
If you want the things you love, __ you must have show -- ers.
So when you hear it thun -- der, don't run un -- der a tree, __
there'll be pen -- nies from heav -- en for you and me.
}

refrainChords = \chordmode {
  c2:6 d2:m7 e2:m7 ef2:dim7 d1:m7 g1:7
  c2:6 d2:m7 e2:m7 ef2:dim7 d1:m7 g1:7

  c1:7 c1:7 f1:maj7 f1:maj7
  d1:7 d1:7 g1:7 g1:7
  
  c2:6 d2:m7 e2:m7 ef2:dim7 d1:m7 g1:7
  c1:6 g2:m7 c2:7 f1:maj7 f1:maj7
  
  f1:maj7 bf1:7.11+ c1:maj7 a1:7
  d1:m7 d2:7 g2:7 c1:6
  \chordOpenParen{ d2:m7 }
  \chordCloseParen{ g2:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Billie Holiday 1936]" 4 = 110

  \xTextMark \markup{ \bold \box "A1" }
  
  c'4 c4 c4 b4 | d4 d8 b8~ b2 | a8 a8 a8 a8~ a8 g4. | r1 |
  \break
  c4 c4 c4 b4 | d4 d8 b8~ b2 | a8 a8 a8 a8~ a8 g4. | r1 |
  
  \sect "B"
  
  r4 e4 g4 bf4 | d4 d8 c8~ c4 bf4 | r4 a4 4 gs8 a8~ | a1 |
  \break
  r4 fs4 a4 c4 | e4 e8 d8~ d4 c4 | r4 b4 d4 f,8 a8~ | a1 |
  
  \sect "A2"
  
  c4 c4 c4 b4 | d4 d8 b8~ b2 | a8 a8 a8 a8~ a8 g4. | r1 |
  \break
  c4 c4 c4 b4 | d4 d8 b8~ b2 | e8 e8 e8 e8~ e8 d4. | r1 |


  \sect "C"

  r4 f,4 a4 c4 | e4 e8 e8~ e4 ef4 | d4 d4 d8 df8 c8 b8~ | b2 r4 b8 bf8 |
  \break
  \tuplet 3/2 { a4 f4 a4 } \tuplet 3/2 { c4 a4 c4 } | d2 e2 | c1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
