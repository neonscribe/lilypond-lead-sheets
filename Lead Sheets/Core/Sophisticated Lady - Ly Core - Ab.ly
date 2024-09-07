%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(set-global-staff-size 18)

$(if (and (defined? 'printNoteNames) printNoteNames)
   (set-global-staff-size 16))


\header {
  title = "Sophisticated Lady"
  subtitle = \instrument
  poet = "Irving Mills and Mitchell Parish"
  composer = "Duke Ellington"
  copyright = "© 1933 Gotham Music Service, Inc."
}

refrainLyricsOne = \lyricmode {
They say __ in -- to your ear -- ly life ro -- mance came, __
And in this heart of yours burned a flame, __
A flame that flick -- ered one day and died a -- way.

_ _ _

Smok -- ing, drink -- ing, nev -- er think -- ing of to -- mor -- row,
Non -- cha -- lant, Dia -- monds shin -- ing danc -- ing,
Din -- ing with some man in a res -- tau -- rant,
Is that all you real -- ly want?

No, __ soph -- is -- ti -- cat -- ed la -- dy,
I know __ you miss the love you lost long a -- go,
And when no -- bod -- y is nigh you cry.
}

refrainLyricsTwo = \lyricmode {
_ Then, __ with dis -- il -- lu -- sion deep in your eyes, __
You learned that fools in love soon grow wise, __
The years have changed you, some -- how;
I _ _ _ see you now...
}

refrainChords = \chordmode {
  s4
  
  bf1:m7 gf4:7 f4:7 e4:7 ef4:7 af1:maj7 af4:7 g4:7 gf4:7 f4:7
  bf1:7 bf2:m7 ef2:7
  
  af1:maj7 a1:dim7
  
  af1:maj7 a2:m7 d2:7
  
  g2:maj7 e2:m7 a2:m7 d2:7 b2:m7.5- e2:7.9- a2:m7 d2:7.9-
  g2:maj7 e2:m7 a2:m7 d2:7 g2:7 c2:m7 ef2:7 c4:m7.5- f4:7.9-

  
  bf1:m7 gf4:7 f4:7 e4:7 ef4:7 af1:maj7 af4:7 g4:7 gf4:7 f4:7
  bf1:7 bf2:m7 ef2:7 af1:maj7
  \chordOpenParen{ c2:m7.5- }
  \chordCloseParen{ f2:7.9- }
}

refrainKey = af

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Ballad" 4 = 110

  \partial 4 gf4 |

  \xTextMark \markup{ \bold \box "A1, A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  f2~ f8 af8 c8 ef8 | gf4 f4 e4 ef8 c8 | g2~ g8 f8 af8 c8 | ef4 d4 df4 c8 f8 |
  \break
  f,2~ f8 g8 af8 c8 | \tuplet 3/2 { ef8 c8 ef8 } c2 ef4 |
  } \alternative { {
  g,2. ef'4 | gf,1 |
  } {
  f8 ef8 af2. | r1 |
  } }
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B" }
  % \key g \major
  
  r8 d,4 b8 e4 b8 g'8~ | g8 e8 b'4 fs8 e'4 as,8 | b4 f2. | e8 c'8 ef,2. |
  \break
  r8 d4 b8 e4 b8 g'8~ | g8 e8 b'4 fs8 e'4 as,8 |
  % \key \refrainKey \major
  b4 f8 af8 g8 ef8 c4 | f8 g8 bf8 df8 c8 ef8 gf,4 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A3" }

  f2~ f8 af8 c8 ef8 | gf4 f4 e4 ef8 c8 | g2~ g8 f8 af8 c8 | ef4 d4 df4 c8 f8 |
  \break
  f,2~ f8 g8 af8 c8 | \tuplet 3/2 { ef8 c8 ef8 } c2 ef4 | af,1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"
