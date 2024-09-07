%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "That Old Feeling"
  subtitle = \instrument
  poet = ""
  composer = "Lew Brown and Sammy Fain"
  copyright = "© 1937 Leo Feist Inc."
}

refrainLyrics = \lyricmode {
I saw you last night and got that old feel -- ing,
When you came in sight I got that old feel -- ing,
The mo -- ment that you danced by I felt a thrill,
And when you caught my eye my heart stood still.
Once a -- gain I seemed to feel that old yearn -- ing,
And I knew the spark of love was still burn -- ing.
There'll be no new ro -- mance for me,
It's fool -- ish to start, for that old feel -- ing
is still in my heart.
}

refrainChords = \chordmode {
  ef2 ef2/d ef2/c ef2/bf g1:m7.5- c1:7
  f2:m f2:m7+ f1:m7 f1:m7.5- bf2:7 g2:7
  
  c1:m7 g1:7 g1:m7.5- c1:7
  c1:m7 f1:7 f1:m7.5- bf1:7

  ef2 ef2/d ef2/c ef2/bf g1:m7.5- c1:7
  f2:m f2:m7+ f1:m7 af1:m6 g1:7
  
  g1:m7.5- c1:7.9- f1:m7 af1:m6
  c1:m7 f1:7 f2:m7 bf2:7 ef2:6
  \chordOpenParen{ f4:m7 }
  \chordCloseParen{ bf4:7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 152

  \xTextMark \markup{ \bold \box "A1" }
  
  g4 bf4 g8 bf4 g8~ | g4 ef4 g4 bf4 | df1 | c4 g2. |
  \break
  af4 c4 af8 c4 af8~ | af4 f4 af4 bf4 | b1 | bf4 f2. |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  r4 ef4 ef8 ef8 ef4 | g4 g4 g2 | r4 g4 g4 g4 | c1 |
  \break
  r4 c4 c4 c4 | d4 d4 d2 | r4 ef4 ef4 ef4 | f,1 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  g4 bf4 g8 bf4 g8~ | g4 ef4 g4 bf4 | df1 | c4 g2. |
  \break
  af4 c4 af8 c4 af8~ | af4 f4 af4 c4 | ef1 | ef4 d2. |

  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "C" }
  
  r4 df4 df4 df4 | df4 c8 bf8~ bf8 af8 g4 | r4 bf4 \tuplet 3/2 { bf4 a4 af4 } | ef'2. ef,8 f8 |
   \break
 g1 | g4 c2. | r4 ef,4 g8 ef8 g4 | ef2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
