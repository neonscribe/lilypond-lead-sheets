%% -*- Mode: LilyPond -*-

\version "2.26.0"

songID = "2026-06-01T22:16:34.867824Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Heartaches by the Number"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Harlan Howard"
headerCopyright = "© 1959 Pamper Music Inc."

refrainLyrics = \lyricmode {
\stanza "1. "
Heart -- ache num -- ber one was when you left me. __
I nev -- er knew that I could hurt this way. __
And heart -- ache num -- ber two was when you came back a -- gain. __
You came back but nev -- er meant to stay. __

Now I've got heart -- aches by the num -- ber, __ troub -- les by the score. __
Ev -- 'ry -- day __ you love me less, __ each __ day I love you more.
Yes, I've got heart -- aches by the num -- ber, __ a love that I can't win. __
But the day that I stop count -- ing, that's the day my world will end. __
}

refrainLyricsTwo = \lyricmode {
\stanza "2. "
Heart -- ache num -- ber three was when you called me. __
And said that you were com -- ing back to stay. __
With hope -- ful heart I wait -- ed for your knock on the door. __
I waited, but you must have lost your way. __ ""
}

refrainChords = \chordmode {
  s2

  bf1 bf1 ef1 ef1 f1:7 f1:7 bf1 bf1

  bf1 bf1 ef1 ef1 f1:7 f1:7 bf1 bf1
  bf1 bf1 ef1 ef1 f1:7 f1:7 bf1 bf4 r2.

  bf1 bf1 ef1 ef1 f1:7 f1:7 f1:7 bf1 bf4 r2.
  bf1 bf1 ef1 ef1 f1:7 f1:7 f1:7

  bf1 bf4 r2.

  bf2 ef2 bf4 f4:7 bf2
}

refrainKey = bf

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium [Ray Price 1959]" 128

  \partial 2 \rsq \rsq |

  \sectNoBreakSegno "Intro - Solo"

  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |

  \sect "Verse"

  d'8 ef4. d4 c4 | c4 bf4 f4 d4 | r4 ef4 g2~ | g2 r4 d'4 |
  \break
  ef8 d4 ef8~ ef4. c8 | a8 f4 a8~ a4 g8 f8~ | f1 | r2 r4 d'4 |
  \break
  d8 ef4. d4 c4 | c4 bf4 f4 d4 | r4 ef4 ef4 f8 g8~ | g1 |
  \break
  ef'4 d4 ef4. c8~ | c8 a8 f4 g4 a8 bf8~ | bf1 | r4 f4 bf4 c4 |

  \bar "||"
  \xxPageBreak
  \sectNoBar "Chorus"

  d8 ef4. d4. c8 | c8 bf4.~ bf2 | ef,8 ef4. ef4 f8 g8~ | g1 |
  \break
  c8 d4 c8~ c4 bf4 | bf4 a8 a8~ a4 r8 a8~ | a8 a8 bf4 a4 g4 | f1 | r4 f4 bf4 c4 |
  \break
  d8 ef4. d4. c8 | c8 bf4.~ bf4. ef,8 | ef4. ef8 ef8 f4 g8~ | g2 r4 c8 bf8 |
  \break
  c4. d8 c4 bf4 | bf8 a4. r4 a8 g8 | f4 a4 g4 a8 bf8~ \textToCodaLastTime | bf1~ | bf4 r4 r2 \dalSegno |
  \bar "||-|."

  \textCodaBreak

  bf1\repeatTie |
  \override NoteHead.style = #'slash
  bf4 f4 bf2\fermata
  \revert NoteHead.style

  \bar "|."
}

\include "../Include/refrainonly.ily"
