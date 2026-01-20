%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "I've Never Been in Love Before"
  subtitle = \instrument
  poet = ""
  composer = "Frank Loesser"
  copyright = \markup \small { \now " " "© 1950 Frank Music Corp." }
}

refrainLyrics = \lyricmode {
I've nev -- er been in love be -- fore, now all at once it's you,
it's you for -- ev -- er more. __
I've nev -- er been in love be -- fore, I thought my heart was safe,
I thought I knew the score. __
But this is wine that's all too strange and strong, I'm full of fool -- ish song,
and out my song must pour. __
So please for -- give this help -- less haze I'm in,
I've real -- ly nev -- er been in love be -- fore. __
}

refrainChords = \chordmode {
  \chordInsideParens{ f4:7 }
  
  bf2:6 g2:m7 c2:m7 f2:7 bf2:maj7 ef2:7 d2:m7 g2:7
  c1:m7 c2:m7 f2:7 bf2:maj7 df2:13 gf2:maj7 b2:13

  bf2:6 g2:m7 c2:m7 f2:7 bf2:maj7 ef2:7 d2:m7 g2:7
  c1:m7 c2:m7 f2:7 bf1:maj7 f2:m7 bf2:7
  
  ef4:maj7 \chordSlash 1 ef4:maj7/d \chordSlash 1 c2:m7 f2:7 bf1:maj7 a2:m7.5- d2:7.5+
  g4:m \chordSlash 1 g4:m/f \chordSlash 1 e2:m7.5- a2:7 d1:maj7 c2:m7 f2:7

  bf2:6 g2:m7 c2:m7 f2:7 bf2:maj7 ef2:7 d2:m7 g2:7
  c1:m7 c2:m7 f2:7 bf1:6
  \chordOpenParen{ c2:m7 }
  \chordCloseParen{ f2:7 }
}

refrainKey = bf

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
  \tempo "Medium [June Christy 1957]" 4 = 155

  \partial 4 f4 |

  \sectNoBreak "A1"
  
  bf2. d,4 | ef4 bf'4 a4. g8 | a2. c,4 | d4 a'4 g4. f8 |
  g2. bf,4 | c4 g'4 f4. e8 | f1~ | f2. f4 |
  
  \sect "A2"

  bf2. d,4 | ef4 bf'4 a4. g8 | a2. c,4 | d4 a'4 g4. f8 |
  g2. bf,4 | c4 g'4 f4. e8 | f1~ | f4 bf4 bf4 bf4 |
  
  \sect "B"
  
  d2. d,4 | ef4 d'4 c4. bf8 | c2. c,4 | d4 c'4 bf4. a8 |
  bf2. bf,4 | c4 bf'4 a4. g8 | a1~ | a4 f4 f4 f4 |
  
  \sect "A3"

  bf2. d,4 | ef4 bf'4 a4. g8 | a2. c,4 | d4 a'4 g4. f8 |
  g2. bf4 | ef2. a,4 | bf1~ | bf2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
