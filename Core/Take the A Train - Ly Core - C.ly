%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

#(set-global-staff-size 18)

\header {
  title = "Take the “A” Train"
  subtitle = \instrument
  poet = ""
  composer = "Billy Strayhorn"
  copyright = \markup \small { \now " " "© 1941 Billy Strayhorn Songs Inc." }
}

refrainLyrics = \lyricmode {
You __ must take the “A” train __
To go to Su -- gar Hill way up in Har -- lem. __
If __ you miss the “A” train
You'll find you missed the quick -- est way to Har -- lem. __
Hur -- ry, __ get on board, it's com -- ing, __
Lis -- ten __ to those rails a -- thrum -- ming,
On board, __ get on the “A” train, __
Soon you will be on Su -- gar Hill in Har -- lem. __
Har -- lem. __
}

refrainChords = \chordmode {
  c1:6 c1:6 d1:7.5- d1:7.5-
  d1:m7 g1:7 c1:6 d2:m7 g2:7

  c1:6 c1:6 d1:7.5- d1:7.5-
  d1:m7 g1:7 c1:6 g2:m7 c2:7
  
  f1:maj7 f1:maj7 f1:maj7 f1:maj7
  d1:7 d1:7 d1:m7 g2:7 g2:7.9-

  c1:6 c1:6 d1:7.5- d1:7.5-
  d1:m7 g1:7 c1:6 d2:m7 g2:7
  
  c2:6 r2 r2. c4:maj7
}

refrainKey = c

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
  \tempo "Medium [Duke Ellington 1941]" 4 = 165

  \xTextMark \markup{ \bold \box "A1" }
  
  g1~ | g8 e'4. g,4 c4 | e8 gs,4.~ gs2~ | gs1 |
  \break
  a1 | a8 as8 b8 e8 g,8 gf8 f8 df8 | c'8 e,4.~ e2~ | e1 |
  
  \sect "A2"
  
  g1~ | g8 e'4. g,4 c4 | e8 gs,4.~ gs2~ | gs1 |
  \break
  a1 | a8 as8 b8 e8 g,8 gf8 f8 df8 | c'8 e,4.~ e2~ | e1 |
  
  \sect "B"
  
  a8 c4.~ c2 | e8 f,4. a4 c4 | e8 a,4.~ a2~ | a1 |
  \break
  a8 c4.~ c2 | e8 fs,4. a4 c4 | e8 a,4.~ a2~ | a2 af2 |
  
  \sect "A3"

  g1~ | g8 e'4. g,4 c4 | e8 gs,4.~ gs2~ | gs1 |
  \break
  a1 | a8 as8 b8 e8 g,8 gf8 f8 df8 \textToCodaLastTime | c'8 e,4.~ e2~ | e1 |
  
  \bar "||-|."
  
  \textCodaBreak
  
  c'8 e,4. f4 fs4 | g8 a8 b8 c8 r4 c,4\fermata |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
