%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Always (4/4)"
  subtitle = \instrument
  poet = ""
  composer = "Irving Berlin"
  copyright = "© 1925 Irving Berlin"
}

refrainLyrics = \lyricmode {
I'll __ be lov -- ing you, al -- ways __
with __ a love that's true, al -- ways. __
When __ the things you've planned need __ a help -- ing hand,
I __ will un -- der -- stand, al -- ways, al -- way.
Days __ may not be fair, al -- ways. __
That's __ when I'll be there, al -- ways, __
not __ for just an hour, not __ for just a day,
not __ for just a year, but al -- ways. __
}

refrainChords = \chordmode {
  f1:maj7 g2:m7 c2:7 f1:maj7 f1:maj7
  g1:m7 c1:7 f1:maj7 g2:m7 c2:7
  f1:maj7 b2:m7.5- e2:7 a1:maj7 fs1:7
  b1:m7 e1:7 a2:7 d2:7 g2:7 c2:7

  f1:maj7 g2:m7 c2:7 f1:maj7 f2:maj7 e4:7 ef4:7
  d1:7 d1:7 g1:m7 c2:m7 f2:7
  bf1:maj7 bf2:m7 ef2:7 f1:maj7 g1:7
  g1:m7 c1:7 f1:maj7
  \chordOpenParen{ g2:m7 }
  \chordCloseParen{ c2:7 }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Ballad [Patsy Cline 1963]" 4 = 85

  \xTextMark \markup{ \bold \box "A1" }
  
  c2~ c8 d8 f8 g8 | a1 | c4 a2.~ | a2 r2 |
  \break
  c,2~ c8 d8 e8 f8 | g1 | a4 f2.~ | f2 r2 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  c2~ c8 d8 f8 g8 | a2. r4 | e2~ e8 fs8 a8 b8 | cs1 |
  \break
  e,2~ e8 fs8 gs8 b8 | d1 | cs4 a2. | a4 g2. |

  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  c,2~ c8 d8 f8 g8 | a1 | c4 a2.~ | a2 r2 |
  \break
  d,2~ d8 e8 fs8 a8 | d1 | ef4 d2.~ | d2 r2 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "C" }
  
  bf2~ bf8 a8 g8 a8 | bf1 | a2~ a8 g8 f8 g8 | a1 |
  \break
  g2~ g8 f8 e8 f8 | g2. c,4 | a'4 f2.~ | f2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
