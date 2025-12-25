%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "That Old Black Magic"
  subtitle = \instrument
  poet = "Johnny Mercer"
  composer = "Harold Arlen"
  copyright = \markup \small { \now " " "© 1942 Famous Music Corporation" }
}

refrainLyrics = \lyricmode {
That old black mag -- ic has me in its spell.
That old black mag -- ic that you weave so well.
Those i -- cy fin -- gers up and down my spine.
The same old witch -- craft when your eyes meet mine.
The same old tin -- gle that I feel in -- side
and then that el -- e -- va -- tor starts its ride
and down and down I go, 'round and 'round I go
like a leaf that's caught in the tide.
I should stay a -- way but what can I do.
I hear your name and I'm a -- flame,
a -- flame with such a burn -- ing de -- sire
that on -- ly your kiss can put out the fire.
For you're the lov -- er I have wait -- ed for.
The mate that fate had me cre -- at -- ed for.
And ev -- 'ry time your lips meet mine,
dar -- ling, down and down I go, 'round and 'round I go in a spin,
lov -- ing the spin I'm in un -- der that old black mag -- ic called love.
}

refrainChords = \chordmode {
  s4

  ef1:maj7 ef1:maj7 ef1:maj7 ef1:maj7
  ef1:maj7 ef1:maj7 f1:m7 bf1:7

  f1:m7 bf1:7 f1:m7 bf1:7
  f1:m7 bf1:7 g2:m7 c2:7 f2:m7 bf2:7

  ef1:maj7 ef1:maj7 ef1:maj7 ef1:maj7
  ef1:maj7 ef1:maj7df1:7 df1:7

  f1:m7 bf1:7 g1:m7 gf1:dim7
  f1:m7 ff:maj7 ef1:6 d2:m7.5- g2:7.9+
  
  c1:m7 c1:m7 af1:7.11+ af1:7.11+
  g1:7 g1:7 c1:7 c1:7

  f1:m7 f1:m7 af1:m7 df1:7
  af1:m7 df1:7 g2:m7 c2:7 f2:m7 bf2:7
  
  ef1:maj7 ef1:maj7 ef1:maj7 ef1:maj7
  bf1:m7 ef1:7 bf1:m7 ef1:7 

  af1:maj7 af1:maj7 df1:7 df1:7
  f1:m7 bf1:7 g1:m7 df1:dim7

  f1:m7 f1:m7 af1:m7 df1:7
  f1:m7 bf1:sus7 ef1:6
  \chordOpenParen{ f2:m7 }
  \chordCloseParen{ bf2:7 }
}

refrainKey = ef

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
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Glenn Miller 1942]" 4 = 112

  \partial 4 bf,4 |
  \bar "||"

  \sectStart "A1"
  
  g'4. g8~ g4 g4~ | g4 g4 g4 bf,4 | g'4. g8~ g4 g4~ | g2. bf,4 |
  \break
  g'4. g8~ g4 g4~ | g4 af4 bf4 bf,4 | f'4. f8~ f4 f4~ | f2. bf,4 |
  
  \sect "B"

  f'4. f8~ f4 f4~ | f4 f4 f4 bf,4 | f'4. f8~ f4 f4~ | f2. bf4 |
  \break
  c4. c8~ c4 c4~ | c4 bf4 c4 bf4 | c4. c8~ c4 c4~ | c2. bf,4 |

  \sect "A2"
  
  g'4. g8~ g4 g4~ | g4 af4 bf4 df4 | g,4. g8~ g4 g4~ | g2. bf,4 |
  \break
  g'4. g8~ g4 g4~ | g4 af4 bf4 ef4 | f,4. f8~ f4 f4~ | f2. ef4 |
  
  \sect "C"

  bf'4. bf8~ bf4 bf4~ | bf4 af4 f2 | f4. f8~ f4 f4~ | f4 ef4 c2 |
  \break
  ef4. ef8~ ef4 ef4~ | ef4 ef4 \tuplet 3/2 { ef4 ef4 ef4 } | ef1~ | ef2 g4 bf4 |
  \bar "||"

  \xPageBreak
  \sectNoBarNoBreak "D"
  
  ef2 ef4 ef,4~ | ef4 ef4 \tuplet 3/2 { ef4 g4 bf4 } | d1~ | d4. c8 d4. c8 |
  \break
  d1~ | d4. g,8 a4. g8 | a1~ | a2 c,2 |

  \sect "E"
  
  c'2 c4 c,4~ | c4 c4 \tuplet 3/2 { c4 f4 af4 } | cf1~ | cf4 f,4 \tuplet 3/2 { f4 f4 f4 } |
  \break
  af1~ | af4 cf,4 \tuplet 3/2 { cf4 cf4 cf4 } | g'1~ | g2 bf,2 |

  \sect "A3"
  
  g'4. g8~ g4 g4~ | g4 g4 g4 bf,4 | g'4. g8~ g4 g4~ | g2. bf4 |
  \break
  df4. df8~ df4 df4~ | df4 df4 df4 bf4 | df4. df8~ df4 df4~ | df2. c4 |

  \sect "F"
  
  ef4. ef8~ ef4 ef4~ | ef4 ef4 ef4 ef,4 | f1~ | f2 g4 af4 |
  \break
  bf4. bf8~ bf4 bf4~ | bf4 af4 f2 | f4. f8~ f4 f4~ | f4 ef4 c2 |

  \sect "G"

  ef4. ef8~ ef4 ef4~ | ef2 \tuplet 3/2 { ef4 ef4 ef4 } |
  ef4. ef8~ ef4 ef4~ | ef2 \tuplet 3/2 { ef4 ef4 ef4 } |
  \break
  ef4. ef8~ ef4 ef4~ | ef4 ef4 ef2 | ef1~ | ef2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
