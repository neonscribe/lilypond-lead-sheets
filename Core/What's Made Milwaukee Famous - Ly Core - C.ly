%% -*- Mode: LilyPond -*-

songID = "2026-07-30T19:03:25.159973Z"

\include "../Include/lead-sheets.ily"

headerTitle = "What's Made Milwaukee Famous (Has Made a Loser Out of Me)"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Glenn Sutton"
headerCopyright = "© 1968 EMI Al Gallico Music Corp."

refrainLyrics = \lyricmode {
It's late  __ and she's wait -- ing __
and I know I should go home.
But ev -- 'ry time __ I start to leave
they play an -- oth -- er song.
Then some -- one buys an -- oth -- er round
and wher -- ev -- er drinks __ are free,
what's made Mil -- wau -- kee fa -- mous
has made a fool __ out of me.
Ba -- by's begged me not to go __
so man -- y times __ be -- fore.
She says love and hap -- pi -- ness
can't live be -- hind __ those swing -- ing doors.
Now's she's gone and I'm to blame.
Too late __ I fi -- n'lly see.
What's made Mil -- wau -- kee fa -- mous
has made a los -- er out of me.
}

refrainChords = \chordmode {
  c1 c1 c1:7 f1
  f1 c1 d1:7 g1:7

  c1 c1 c1:7 f1
  f1 c1 g1:7 c1 c1
  
  g1 g1 d1 g1
  g1 g1 d1:7 g2 g2:7
  
  c1 c1 c1:7 f1
  f1 c1 g1:7 c1

  \chordInsideParens{ g1:7 }
}

refrainKey = c

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium" 120

  \sectNoBar "A1"
  
  r8 c8 c4~ c8 d8 e4 | e8 g4.~ g4 c8 d8 | e2 \tuplet 3/2 { e4 d4 c4 } | c2. r8 a8 |
  c8 d4 c8~( c8 a4) c8 | g4 g4 e2 | r8 e8 e8 d8 e8 g4. | d2. r4 |
  
  \sect "A2"
  
  r8 b8 c8 d8 e2 | r8 ef8 e8 g8 e'4 d8 d8 | e8 g4 d8( c4.) c8 | c2. r8 c8 |
  c4. d8 c4. c8 | g8 g4. r8 d'8 ds8 e8 | f4.( g8) e4. e8 | d8( c4.~ c2~ | c2) r2 |
  
  \sect "B"
  
  r4 d,8 g8 g4 b4 | r8 g8 e8 b'8~ b2 | d4 d8 e8 b16( a16 g8~ g8) fs8 | g2. r4 |
  r8 b,4 d8 g4. d8 | r4 g8 a8 b4. c8 | d4. c8 c8( a8) b4 | g8 a8 b2. |

  \sect "A3"
  
  r4 c,8 d8 e2 | r8 ef8 e8 g8 e'4. g8 | e8( d4) c8 d4 d4 | c2. r8 c8 |
  c4. d8 c4. c8 | g8 g4. r8 d'8 ds8 e8 | f4. g8 e4. d8 | c1 | r1 |
  
  \bar "|."
}

\include "../Include/refrainonly.ily"
