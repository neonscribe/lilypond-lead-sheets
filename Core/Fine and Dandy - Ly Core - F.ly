%% -*- Mode: LilyPond -*-

songID = "2026-10-31T18:42:23.55568Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Fine and Dandy"
headerSubtitle = \subtitle
headerPoet = "Paul James"
headerComposer = "Kay Swift"
headerCopyright = "© 1930 Warner Bros Inc."

refrainLyrics = \lyricmode {
Gee it's all __ fine and dan -- dy.
Sug -- ar can -- dy, when I've got you. __
Then I on -- ly see the sun -- ny side. __
E -- ven trou -- ble has its fun -- ny side. __

When you're gone, __ su -- gar can -- dy
I get lone -- some, I get so blue. __
When you're han -- dy
it's fine and dan -- dy,
but when you're gone what can I do?
}

refrainChords = \chordmode {
  f1:maj7 af1:dim7 g1:m7 c1:7
  a1:m7 af1:dim7 g1:m7 c1:7

  c1:m7 f1:7 bf1:maj7 bf1:maj7
  ef1:7 ef1:7 af1:7 c1:7

  f1:maj7 af1:dim7 g1:m7 c1:7
  a1:m7 af1:dim7 g1:m7 c1:7

  c1:m7 f1:7 bf1:6 ef1:7
  f2:maj7 d2:m g2:m7 c2:7 f2
  \chordOpenParen{ d2:m7 }
  g2:m7
  \chordCloseParen{ c2:7 }
}

refrainKey = f

whatKey = #(or whatKey refrainKey)


refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Fast [Doris Day 1951]" 250

  \sectNoBar "A1"
  
  e2 d4 f4~ | f1 | f2 d4 a'4~ | a4 a2. |
  \break
  e2 d4 f4~ | f4 f2 d4 | a'2 f4 c'4~ | c1 |
  
  \sect "B"
  
  c2 b4 d4~ | d4 c4 a4 f4 | d2 d4 d4~ | d2 r2 |
  \break
  bf'2 a4 c4~ | c4 bf4 g4 ef4 | c2 c4 c4~ | c2 r2 |
  
  \sect "A2"

  e2 d4 f4~ | f1 | f2 d4 a'4~ | a4 a2. |
  \break
  e2 d4 f4~ | f4 f2 d4 | a'2 f4 c'4~ | c1 |
  
  \sect "C"
  
  bf2 g4 d'4~ | d4 d2 a4 | c2 g4 bf4~ | bf4 bf2 f4 |
  \break
  a4 f4 a4 f4 | a4 a2. | f2 r2 | r1 |

  \bar "|."
}

\include "../Include/refrainonly.ily"
