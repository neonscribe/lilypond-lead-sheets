%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Too Close for Comfort"
  subtitle = \instrument
  poet = ""
  composer = "Jerry Bock, Larry Holofcener and George Weiss"
  copyright = \markup \small "© 1956 The Herald Square Music Co."
}

refrainLyrics = \lyricmode {
Be wise, be smart, be -- have my heart, 
don't up -- set your cart when she's so close.
Be
_ _ _ _
Too close, too close for com -- fort, please not a -- gain.
Too close, too close to know just when to say, “when.”
Be firm, be fair, be sure, be -- ware,
on your guard, take care while there's such temp -- ta -- tion.
One thing leads to an -- oth -- er,
too late to run for cov -- er.
She's much too close for com -- fort now. __
}

refrainLyricsTwo = \lyricmode {
_
soft, be sweet, but be dis -- creet.
Don't go off your beat. She's too
_ _ _
close for com -- fort.
}

refrainChords = \chordmode {
  s4
  
  c1:maj7 g1:7.5+ e1:m7.5- a1:7.9-
  d1:m7.5- g1:7
  
  c2:maj7 a2:7 d2:m7 g2:7
  
  c1:maj7 g2:m7 c2:7
  
  f1:7 fs1:dim7 c1:6 g2:m7 c2:7
  f1:7 fs1:dim7 af1:7 g1:7
  
  c1:maj7 g1:7.5+ e1:m7.5- a1:7.9-
  d1:m7.5- g1:7 c1:maj7 g2:m7 c2:7
  
  f1:7 fs1:dim7 a1:m7.5- d1:7
  af1:7 g1:7 c1:6
  \chordOpenParen{ d2:m7 }
  \chordCloseParen{ g2:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Up Swing [Eydie Gormé 1959]" 4 = 136

  \partial 4 e4 |

  \xTextMark \markup{ \bold \box "A1,A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  g2. e4 | g2. a4 | bf2. d,4 | cs2 f4 g4 | af2. c,4 | b2 c4 d4 |
  \break
  \alternative { \volta 1 {
  e4. g8~ g2 | r2 r4 e4 |
  } \volta 2 {
  e4 r4 g4 r4 | a4 r4 c4 r4 |
  } } }
  \sect "B1"
  
  r4 d4 ef4. d8~ | d8 ef4 d8 c4 b4 | c2 g4 a8 bf8~ | bf1 |
  \break
  r4 d4 ef4. d8~ | d8 ef4 d8 c4 b4 | c2 bf4 af8 g8~ | g2 r4 e4 |

  \sect "A3"
  
  g2. e4 | g2. a4 | bf2. d,4 | cs2 f4 g4 |
  \break
  af2. c,4 | b2 c4 d4 | e4 r4 g4 r4 | a4 r4 c4 r4 |

  \sect "B2"

  r4 d4 ef4. d8~ | d8 ef4 d8 c4 b4 | r4 d4 ef4. d8~ | d8 ef4 d8 c4 b4 |
  \break
  r4 d4 ef4. d8~ | d8 ef4 d8 c4 b4 | c1~ | c2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
