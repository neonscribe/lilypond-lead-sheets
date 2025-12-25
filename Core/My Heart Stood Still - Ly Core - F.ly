%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "My Heart Stood Still"
  subtitle = \instrument
  poet = "Lorenz Hart"
  composer = "Richard Rodgers"
  copyright = \markup \small { \now " " "© 1927 Chappell & Co." }
}

refrainLyrics = \lyricmode {
I took one look at you, that's all I meant to do,
and then my heart stood

still. __

"" _ _ _

sin -- gle word was spo -- ken,
I could tell you knew, __ that un -- felt clasp of hands __ told me so well you knew. __

I nev -- er lived at all, un -- til the thrill of that mo -- ment
when my heart stood still.
}

refrainLyricsTwo = \lyricmode {
My feet could step and walk, my lips could move and talk,
and yet my heart stood
""
still. Though not a
}

refrainChords = \chordmode {
  f2:6 d2:m7 g2:m7 c2:7 f2:maj7 f2:7 bf2:6 ef2:7
  a2:m7 d2:7 g2:m7 c2:7
  
  a2:m7 d2:7.9- g2:m7 c2:7
  
  f1:6 f1:6
  
  f1:m7 bf1:7 g1:7.9- c1:maj7
  d1:m7.5- g1:7 df1:7 c1:7

  f2:6 d2:m7 g2:m7 c2:7 f2:maj7 f2:7 bf2:6 ef2:7
  a2:m7 d2:7 g2:m7 c2:7 f2:6
  \chordOpenParen{ d2:m7 }
  g2:m7
  \chordCloseParen{ c2:7 }
}

refrainKey = f

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Swing [Chet Baker 1958]" 4 = 164

  \xTextMark \markup{ \bold \box "A1,A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  r4 f4 e4 d4 | g2 f4 e4 | r4 a4 g4 f4 |
  \break
  bf2 a4 g4 | r4 c4 bf4 a4 | f2 d2 |
  \break
  \alternative { \volta 1 {
  c1~ | c2. r4 |
  } \volta 2 {
  f1 | r4 c4 f4 g4 |
  } } }
  \sect "B"
  
  af4 bf4 c4 d4 | d4 c4 bf4 af4 | af2 g4 g4~ | g4 c,4 e4 g4 |
  \break
  af2 g4 g4~ | g4 d4 e4 f4 | af2 g4 g4~ | g1 |

  \sect "A3"
  
  r4 f4 e4 d4 | g2 f4 e4 | r4 a4 g4 f4 | d'2 c4 bf4 |
  \break
  a4 g4 f4 g4 | c,2 g'2 | f1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
