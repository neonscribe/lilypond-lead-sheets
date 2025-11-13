%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "You Stepped Out of a Dream"
  subtitle = \instrument
  poet = "Gus Kahn"
  composer = "Nacio Herb Brown"
  copyright = \markup \small { \now " " "© 1940 Leo Feist, Inc." }
}

refrainLyrics = \lyricmode {
You __
stepped out of a dream. __
You are too won -- der -- ful __
to be what you seem. __

Could there be eyes like yours? __
Could there be lips like yours? __
Could there be smiles like yours, __
hon -- est and tru -- ly?

You __
stepped out of a cloud. __
I want to take you a -- way, __
a -- way from the crowd,
and have you all to my -- self,
a -- lone and a -- part, __
out of a dream, __
safe in my heart.
}

refrainChords = \chordmode {
  c1:maj7 c1:maj7 df1:maj7 df1:maj7
  ef1:7 ef1:7 af1:maj7 af1:maj7
  
  g1:m7 c1:7 f1:maj7 f1:maj7
  a1:m7 d1:7 ef2:m7 af2:7 d2:m9 g2:13

  c1:maj7 c1:maj7 df1:maj7 df1:maj7
  ef1:7 ef1:7 gf1:9.11+ f1:7
  
  d1:m7.5- g1:7 c2:maj7 \chordInsideParens{ f2:9.11+ } e2:m7 a2:m7
  d1:m7 g1:7 c2:maj7
  
  \chordOpenParen{ a2:7 }
  d2:m7
  \chordCloseParen{ g2:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Nat King Cole 1952]" 4 = 116

  \xTextMark \markup{ \bold \box "A1" }
  
  e1~ | e4 e4 \tuplet 3/2 { e4 e4 e4 } | | f1~ | f2 \tuplet 3/2 { f4 f4 f4 } |
  \break
  g4. g8 g2~ | g4 g4 \tuplet 3/2 { g4 f4 ef4 } | c'1~ | c2 \tuplet 3/2 { c4 c4 c4 } |

  \sect "B"
  
  c4. c,8 c2~ | c2 \tuplet 3/2 { c'4 c4 c4 } | c4. c,8  c2~ | c2 \tuplet 3/2 { c'4 c4 c4 } |
  \break
  c4. c,8  c2~ | c2 \tuplet 3/2 { c4 d4 c4 } | ef1 | e2. r4 |
  
  \sect "A2"
  
  e1~ | e4 e4 \tuplet 3/2 { e4 e4 e4 } | | f1~ | f2 \tuplet 3/2 { f4 f4 f4 } |
  \break
  \tuplet 3/2 { g4 g4 g4 } g2~ | g4 g4 \tuplet 3/2 { g4 f4 ef4 } | c'1 | r4 c4 c4 c4 |

  \sect "C"
  
  c2 bf4 af4 | g2. af4 | \tuplet 3/2 { b4 b4 b4 } b2~ | b2 \tuplet 3/2 { d4 c4 e,4 } |
  \break
  g1~ | g2 \tuplet 3/2 { g4 g4 g4 } g1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
