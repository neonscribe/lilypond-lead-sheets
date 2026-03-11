%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "Trav'lin' Light"
  subtitle = \instrument
  poet = "Johnny Mercer"
  composer = "Jimmy Mundy and Trummy Young"
  copyright = \markup \small { \now " " "© 1943 Warner Bros Inc." }
}

refrainLyrics = \lyricmode {
I'm trav' -- lin' light, be -- cause my man __ has gone, __
and from now on __ I'm trav' -- lin' light. __

He said good -- bye and took my heart a -- way,
so from to -- day __ I'm trav' -- lin' light. __

No one to see. __ I'm free __ as the breeze. __
No one but me __ and my mem -- o -- ries. __

Some luck -- y night __ he may come back __ a -- gain __
but un -- til then __ I'm trav' -- lin' light. __
}

refrainChords = \chordmode {
  s2.

  g1:m7 c1:7 f2:maj9 a2:m7.5- d1:7
  g1:m7.5- c2:sus7 c4:7 c4:7.9- f2:maj9 gf2:13.11+ f4:maj9 r2.

  g1:m7 c1:7 f2:maj9 a2:m7.5- d1:7
  g1:m7.5- c1:7 f2:6 bf2:m6 f2:6 f2:7
  
  bf1:maj7 bf2:9 a4:m7 g4:m7 f1:maj7 f1:maj7
  d2:m7 d2:7 g2:m9 g2:9 c1:sus7 c4:7 r2.

  g1:m7 c1:7 f2:maj9 a2:m7.5- d1:7
  g1:m7.5- c1:7 f1:6
  \chordOpenParen{ g2:m7 }
  \chordCloseParen{ c2:7 }
}

refrainKey = f

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
  \tempoFour "Medium-Slow [Billie Holiday with Paul Whiteman 1942]" 80

  \partial 2. c4 d8 f4 g8~ |

  \sectStart "A1"
  
  g1 | r4 f4 a8 c4 d8~ | d4 c8 ef,8~ ef2 | r4 c4 d8 f4 g8~ |
  g1 | r4 f4 g8 f4 c'8~ | c1 | r4 c,4 d8 f4 g8~ |

  \sect "A2"

  g1 | r4 f4 a8 c4 d8~ | d4 c8 ef,8~ ef2 | r4 c4 d8 f4 g8~ |
  g1 | r4 f4 g8 f4 f8~ | f1~ | f4 c'4 d8 f4 f8~ |

  \sect "B"
  
  f1 | r4 d4 c4( a4) | c4 c8 a8~ a2 | r4 f4 a8 c4 c8~ |
  c1 | r4 a4 f4( d4) | f4 f8 d8~ d2 | r4 c4 d8 f4 g8~ |
  
  \sect "A3"

  g1 | r4 f4 a8 c4 d8~ | d4 c8 ef,8~ ef2 | r4 c4 d8 f4 g8~ |
  g1 | r4 f4 g8 f4 f8~ | f1~ | f4 r4 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
