%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "I Concentrate on You"
  subtitle = \instrument
  composer = "Cole Porter"
  copyright = \markup \small { \now " " "© 1939 Chappell & Co." }
}

refrainLyrics = \lyricmode {
When -- ev -- er skies look grey to me
and trou -- ble be -- gins to brew,
When -- ev -- er the win -- ter winds be -- come too strong,
I con -- cen -- trate on you.
When for -- tune cries “nay, nay!” to me
And peo -- ple de -- clare “You're through!”
When -- ev -- er the blues be -- come my on -- ly song,
I con -- cen -- trate on you.
On your smile so sweet, so ten -- der,
When at first my kiss you de -- cline.
On the light in your eyes when you sur -- ren -- der,
And once a -- gain our arms in -- ter -- twine.
And so when wise men say to me
That love's young dream nev -- er comes true,
To prove that e -- ven wise men can be wrong,
I con -- cen -- trate on you.
}

refrainChords = \chordmode {
  ef1:maj7 ef1:maj7 af1:9.5- af1:9.5- ef1:m7 ef1:m7
  af1:m6 af1:m6 f1:m7.5- bf1:7.9-
  ef1:m7
  \chordOpenParen{ df2:m7 }
  \chordCloseParen{ gf2:7 }
  c2:m7.5- b2:13 bf2:7.5+ bf2:7 ef1:6
  \chordOpenParen{ f2:m7 }
  \chordCloseParen{ bf2:7 }
  \unset chordNameFunction

  ef1:maj7 ef1:maj7 af1:9.5- af1:9.5- ef1:m7 df2:m7 gf2:9
  cf1:6 cf1:6 df1:7 af2:m7 df2:7
  gf1:maj7 gf1:maj7 f1:m7.5- bf2:7.5+ bf2:7 ef1:6 ef1:6

  a1:m7.5- af2:m7 af2:m6 cf2:/ef ef2:maj7
  \chordInsideParens{ c1:m7 }
  f1:m7 bf1:7.9-
  ef1:maj7 ef1:7 af1:maj7 df1:9 cf2:/gf gf2:maj7
  gf1:maj7 c1:m7.5- f1:7.9- bf1:maj7 bf1:7
  
  ef1:6 g1:m7 a1:m7.5-
  \chordInsideParens{ af1:maj7 }
  f2:m7 bf2:7
  ef1:6 d1:m7 g1:7 g1:m7.5- c2:7.5+.9- c2:7.9-
  f1:m7 f1:m7 b1:9.5- bf2:7.5+ bf2:7 ef1:6
  \chordOpenParen{ f2:m7 }
  \chordCloseParen{ bf2:7 }
}

refrainKey = ef

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef

  \tempo "Medium [Fred Astaire 1953]" 4 = 104

  \xTextMark \markup{ \bold \box "A1" }

  r4 bf4 c4 ef4 | d2. c4 | d4. d8 d2~ | d2. r4 |
  \break
  r4 ef4 \tuplet 3/2 { gf4 af4 bf4 } |
  af2. gf4 | af1~ | af2. r4 | 
  \break
  r4 af4 \tuplet 3/2 { af4 bf4 cf4 } | bf4 a4 af2 |
  r4 af4 gf4 f4 | gf1 |
  \break
  r4 f4 af4 g4 | gf2 f2 | ef1~ | ef2 r2 |
  
  \sect "A2"

  r4 bf4 c4 ef4 | d2. c4 | d4. d8 d2~ | d2. r4 |
  \break
  r4 ef4 \tuplet 3/2 { gf4 af4 bf4 } |
  af2. gf4 | af1~ | af2. r4 | r4 af4 \tuplet 3/2 { af4 bf4 cf4 } |
  \break
  bf4 a4 af2 |
  r4 cf4 bf4 a4 | bf1 | r4 f4 af4 g4 |
  \break
  gf2 f2 | ef1~ | ef4 r4 ef4 ef4 |
  
  \bar "||"

  \xPageBreak

  \xTextMark \markup{ \bold \box "B" }

  c'2. c4 | cf2. cf4 | cf2 bf2~ | bf2 bf,4. bf8 |
  \break
  af'2. af4 | af2 g4. fs8 |
  g1~ | g2 ef4. ef8 |
  \break
  c'2 c4 c4 | cf2 \tuplet 3/2 { cf4 df4 cf4 } | cf2 bf2~ |
  bf4 bf4 bf4 bf4 |
  \break
  bf2. bf4 | c2. bf8 c8 | d1~ | d2 r2 |

  \sect "C"

  r4 ef4 ef4 ef4 | d2. bf4 | c4. c8 c2~ | c2. r4 |
  \break
  r4 c4 b4 c4 |
  bf2 \tuplet 3/2 { bf,4 c4 ef4 } | g1~ | g2. r4 |
  \break
  r4 g4 bf4 a4  af2 g2 |
  g4 f4 e4 f4 | c'1 | r4 f,4 af4 g4 |
  \break
  gf2 f2 | ef1~ | ef2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
