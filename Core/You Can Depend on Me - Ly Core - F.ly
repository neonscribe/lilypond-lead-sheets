%% -*- Mode: LilyPond -*-

songID = "2026-11-01T00:47:33.067462Z"

\include "../Include/lead-sheets.ily"

headerTitle = "You Can Depend on Me"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Charles Carpenter, Louis Dunlap and Earl Hines"
headerCopyright = "© 1932 Peer International Corporation"

refrainLyrics = \lyricmode {
Though you say we're through, I'll al -- ways love you
and you can de -- pend on me.

Though some -- one you've met has made you for -- get,
you know you can count on me.

I wish you suc -- cess, loads of hap -- pi -- ness
but I must con -- fess, I'll be lone -- ly.

If you need a friend, I'm yours to the end
and you can de -- pend on me.
}

refrainChords = \chordmode {
  s4
  
  g1:m7 c1:7 f1:maj7 a2:m7 af2:dim7
  g1:m7 c1:7 f1:6 a2:m7.5- d2:7

  g1:m7 c1:7 f1:maj7 a2:m7 af2:dim7
  g1:m7 c1:7 f1:6 f1:6

  c1:m7 f1:7 bf1:7 bf1:6
  g1:7 g1:7 g1:m7 c1:7

  g1:m7 c1:7 f1:maj7 a2:m7 af2:dim7
  g1:m7 c1:7 f1:6 
  \chordOpenParen{ a2:m7.5- }
  \chordCloseParen{ d2:7 }
}

refrainKey = f

whatKey = #(or whatKey refrainKey)


refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium [Ella Fitzgerald 1962]" 110

  \partial 4 d4 |

  \sectNoBreak "A1"
  
  bf'2 a4 c4 | a2. e4 | g2 f4 c'4 | g2. d4 |
  \break
  f2 e4 g4 | e2 c2 | d1 | r2 r4 d4 |
  
  \sect "A2"

  bf'2 a4 c4 | a2. e4 | g2 f4 c'4 | g2. d4 |
  \break
  f2 e4 g4 | e2 c2 | f1 | r2 r4 f4 |
  
  \sect "B"
  
  c'2 bf4 a4 | c1 | bf4 bf4 a4 g4 | bf2. d,4 |
  \break
  a'2 g4 f4 | e2 d4 f4 | a1 | g2. d4 |
  
  \sect "A3"

  bf'2 a4 c4 | a2. e4 | g2 f4 c'4 | g2. d4 |
  \break
  f2 e4 g4 | e2 c2 | f1 | r1 |

  \bar "|."
}

\include "../Include/refrainonly.ily"
