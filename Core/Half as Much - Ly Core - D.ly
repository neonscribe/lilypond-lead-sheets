%% -*- Mode: LilyPond -*-

songID = "2026-09-17T22:50:43.093971Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Half as Much"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Curley Williams"
headerCopyright = "© 1951 Acuff-Rose Publications"

refrainLyrics = \lyricmode {
_ _ _ _ _ _ _ _ _ _

If you loved me half as much as I love you,
you would -- n't wor -- ry me half as much as you do.
You're nice to me when there's no one else a -- round.
You on -- ly build me up to let me down.

If you missed me half as much as I miss you,
you would -- n't stay a -- way half as much as you do.
I know that I would nev -- er be this blue
if you on -- ly loved me half as much as I love you.

(If you)
}

refrainChords = \chordmode {
  s2.

  a1:7 a1:7 d1 d1

  d1 d1 d1 d1
  d1 d1 a1:7 a1:7
  d1 d1:7 g1 g1
  e1:7 e1:7 a1:7 a1:7

  d1 d1 d1 d1
  d1 d1 a1:7 a1:7
  d1 d1:7 g1 g1
  a1:7 a1:7 
  d2 \chordInsideParens{ a2:7 } d1
}

refrainKey = d

whatKey = #(or whatKey refrainKey)


refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium [Hank Williams 1952]" 126

  \partial 2. cs4 d4 ds4 |

  \sectNoBreak "Intro"
  
  e2. a4 | cs4 b4 a4 cs4 | d1~ | d2
  d4 d4 |
  
  \bar ".|:-||"
  \repeat volta 2 {

  \sectNoBar "Verse"
  
  d2. b4 | a8 a8 fs8 fs8 e4 d4 | a1~ | a2 r8 d'8 d8 d8 |
  d2. b4 | a4 fs8 fs8 e8 e8 d4 | a'1~ | a4 a4 fs4 e4 |
  \bar "||-||"
  \break
  d2. e8 e8 | fs4 fs4 e4 d4 | g1~ | g4 b4 b4 b4 |
  e,2. gs4 | b4 b4 cs4 d4 | cs1~ | cs2 d4 d4 |
  \bar "||-||"
  \break  
  d2. b4 | a8 a8 fs8 fs8 e4 d4 | a1~ | a2 r8 d'8 d8 d8 |
  d2. b4 | a4 fs8 fs8 e8 e8 d4 | a'1~ | a4 a4 fs4 e4 |
  \bar "||-||"
  \break  
  d2. e4 | fs4 fs4 e4 d4 | g1~ | g2 b4 b4 |
  a4 a4 a4 a4 | cs8 cs8 b8 a8 g4 e4 | d1~ | d2 
  \override Parentheses.font-size = #5
  \startParenthesis \parenthesize d'4
  \endParenthesis \parenthesize d4 |
  }
}

\include "../Include/refrainonly.ily"
