%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "I Only Have Eyes for You"
  subtitle = \instrument
  poet = "Al Dubin"
  composer = "Harry Warren"
  copyright = "© 1934 Remick Music Corp."
}

refrainLyricsOne = \lyricmode {
Are the stars out to -- night? __
I don't know if it's cloud -- y or bright, __
'cause I on -- ly have eyes __ for
you, dear.
The
_
I don't know if we're in a gar -- den, __
or on a crowd -- ed av -- e -- nue.
You __ are here, so am I. __
May -- be mil -- lions of peo -- ple go by, __
But they all dis -- ap -- pear __ from view, __
and I on -- ly have eyes __ for you. __
}

refrainLyricsTwo = \lyricmode {
_ _ moon may be high, __ but I can't see a thing in the sky ""
_ _ _ _ _ _ _ _ _
you. __ ""
}

refrainChords = \chordmode {
  s2
  g2:7 d2:m7.5- d1:m7/g g2:7 d2:m7/g d2:m7/g g2:7 c1:maj7 c1:maj7
  
  c1:maj7/e ef2:m6 af2:7
  
  a1:7 a1:7
  
  d1:m7 g1:7 c1:maj9 c2:6 c2:7
  f2 f2:m6 d2:m7.5- g2:7 c1:maj9 ef2:m6 af2:7
  
  g2:7 d2:m7.5- d1:m7/g g2:7 d2:m7/g d2:m7/g g2:7 c1:maj7 c1:maj7

  e2:7 bf2:7.5- a2:7 a2:7.9- d1:m7 d2:m7.5- g2:7 c1:6
  \chordOpenParen{ d2:m7 }
  \chordCloseParen{ g2:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad" 4 = 90
  
  \partial 2 d4. e8 |

  \xTextMark \markup{ \bold \box "A1,A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  g2 f4. e8 | d2~ \tuplet 3/2 { d4 d4 e4 } |
  \tuplet 3/2 { g4 a4 g4 } \tuplet 3/2 { f4 g4 f4 } | d2~ \tuplet 3/2 { d4 g4 a4 } |
  \break
  \tuplet 3/2 { b4 d4 c4 } b2~ | b2 c2 |
  \alternative { \volta 1 {
  b1 | bf2~ bf4. af8 |
  } \volta 2 {
  cs1~ | cs1 |
  } } }
  \sect "B"
  
  r4 d4 c4 a4 | g4 f4 e4 d4 | g2 g2~ | g1 |
  \break
  r4 d'4 c4 af4 | g4 f4 e4 d4 | g1 | bf2~ bf4. af8 |

  \sect "A3"
  
  g2 f4. e8 | d2~ \tuplet 3/2 { d4 d4 e4 } |
  \tuplet 3/2 { g4 a4 g4 } \tuplet 3/2 { f4 g4 f4 } | d2~ \tuplet 3/2 { d4 g4 a4 } |
  \break
  \tuplet 3/2 { b4 d4 c4 } b2~ | b2 c2 |

  \sectNoBreak "C"
  
  ef1~ | ef2 f4. ef8 |
  \break
  \tuplet 3/2 { d4 ef4 d4 } c2~ | c2 d2 |
  c1~ | c2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"
