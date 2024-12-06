%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "This Time the Dream's on Me"
  subtitle = \instrument
  poet = "Johnny Mercer"
  composer = "Harold Arlen"
  copyright = "© 1941 Warner Bros. Inc."
}

refrainLyrics = \lyricmode {
Some -- where, some -- day __ we'll be close to -- geth -- er, wait and see. __
Oh, by the way, this time the dream's on me. __

You'll take my hand, __ and you'll look at me a -- dor -- ing -- ly. __
But as things stand, this time the dream's on me. __

It would be fun __ to be cer -- tain that I'm the one, __
to know that I at least sup -- ply the should -- er you cry up -- on. __

To see you through __ till you're ev' -- ry -- thing you want to be, __
it can't be true, but this time the dream's on me. __
}

refrainChords = \chordmode {
  s2.
  
  g1:m7 e1:7.13- a1:m7 c2:m7 f2:7
  b2:m7 e2:7 a2:m7 d2:7 b2:m7 e2:7 a2:m7 d2:7

  g1:m7 e1:7.13- a1:m7 c2:m7 f2:7
  b2:m7 e2:7 a2:m7 d2:7 g1:6 g1:6
  
  fs1:m7 b1:7 b1:m7 e1:7
  e1:m7 a1:7 a1:m7 d1:7

  g1:m7 e1:7.13- a1:m7 c2:m7 f2:7
  b2:m7 e2:7 a2:m7 d2:7 g2:6
  \chordOpenParen{ e2:m7 }
  a2:m7
  \chordCloseParen{ d2:7 }
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 130

  \partial 2. d4 d4 d4 |
  \bar "$"

  \xTextMark \markup{ \bold \box "A1" }
  
  d'1~ | d4 d8 b8 c8 d8 b8 c8 | d4 b8 c8~ c2~ | c4 d,4 d4 d4 |
  \break
  d'1 | c4 d8 a8 g4 fs4 | e1~ | e4 d4 d4 d4 |

  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  d'1~ | d4 d8 b8 c8 d8 b8 c8 | d4 b8 c8~ c2~ | c4 d,4 d4 d4 |
  \break
  d'1 | c4 d8 a8 g4 fs4 | g1~ | g4 g4 g4 g4 |

  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  b1~ | b4 fs8 gs8 b8 cs16 b16 a8 b8 | cs1~ | cs4 cs4 cs4 cs4 |
  \break
  b4. g8 a4. g8 | b4. g8 a8 b16 a16 g8 a8 | e1~ | e4 d4 d4 d4 |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "A3" }

  d'1~ | d4 d8 b8 c8 d8 b8 c8 | d4 b8 c8~ c2~ | c4 d,4 d4 d4 |
  \break
  b'2 c2 | a4 b8 a8 g4 a4 | g1~ | g2 r2 |

  \bar "|."
}

refrainKicksOverTime = \relative f' {
  \partial 2. s2. |
  
  g4 r4 g4. g8 | s1 | g4 r4 r8 g8 g8 g8 | s1 | s1 | s1 | s1 | s1 |
  
  g4 r4 g4. g8 | s1 | g4 r4 r8 g8 g8 g8 | s1 | s1 | s1 | s1 | s1 |
  
  s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 |

  g4 r4 g4. g8 | s1 | g4 r4 r8 g8 g8 g8 | s1 | s1 | s1 | s1 | s1 |
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-with-kicks.ily"
