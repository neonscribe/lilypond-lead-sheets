%% -*- Mode: LilyPond -*-

#(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = " Blue and Sentimental"
  subtitle = \instrument
  poet = ""
  composer = "Count Basie, Jerry Livingston, and Mack David"
  copyright = \markup \small { \now " " "© 1938 Hallmark Music Publishing Company" }
}

refrainLyrics = \lyricmode {
_ _ _ _ _ _
Blue and sen -- ti -- men -- tal,
my dreams are blue dreams,
just won't come true dreams,
I find.

Blue and sen -- ti -- men -- tal,
I can't for -- get you,
My heart won't let you
Out of my mind. __

It rains all the time
since you said good -- bye. __
The skies and my eyes
and my heart all cry. __

Blue and sen -- ti -- men -- tal,
if you don't want me
why do you haunt me
And keep me feel -- ing
blue __ and sen -- ti -- men -- tal?

blue __ and sen -- ti -- men -- tal?
}

refrainChords = \chordmode {
  ef2:6 c2:7 f2:7 bf2:7 ef4:6 r4*7

  ef4:maj7 df4:7 c2:9 f2:9 bf2:13
  f2:9 bf2:13 g4:m7 c4:7.9- f4:m7 bf4:7.9-

  ef4:maj7 df4:7 c2:9 f2:9 bf2:13
  f2:9 bf2:13 ef2:9 bf4:m7 ef4:9
  
  af2:6 a2:dim7 ef4:6/bf bf4:7.5+ ef2:9
  af2:6 a2:dim7 ef4:6/bf c4:7.9- f4:m7 bf4:7.9-

  ef4:maj7 df4:7 c2:9 f2:9 bf2:13
  f2:9 bf2:13 ef4:9 d4:9 df4:9 c4:9 f2:9 bf2:13 ef2:6
  

  \chordOpenParen{ f4:m7 }
  \chordCloseParen{ bf4:7.9- }
  
  f1:9 bf1:13 ef2:6 e2:6 ef2:6 e2:6 ef1:6
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

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad [Count Basie 1938]" 4 = 78

  \sectStart "Intro"
  
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \rsq bf4 a4 af4 | g4 gf8 f8~ f2 |

  \sectNoBreak "A1"
  
  g8 af8 a8 bf8 d8 c4. | r8 ef,8 ef8 c8 g'8 g4. |
  r8 ef8 ef8 c8 g'8 g4 bf8 | g2. r4 |
  
  \sectNoBreak "A2"
  
  g8 af8 a8 bf8 d8 c4. | r8 ef,8 ef8 c8 g'8 g4. |
  r8 ef8 ef8 c8 g'8 g4. | g8 bf8 g8 f8~ f4. ef8 |

  \sectNoBreak "B"
  
  ef4 f8 ef8 gf4 f8 ef8 | g8 bf4 bf8~ bf4. ef,8 |
  ef4 f8 ef8 gf4 f8 ef8 | g8 bf4 bf8~ bf2 | 
  
  \sectNoBreak "A3"

  g8 af8 a8 bf8 d8 c4. | r8 ef,8 ef8 c8 g'8 g4. |
  r8 ef8 ef8 c8 g'8 g4 f8 | bf4 a4 af4  g4 \textToCodaLastTime |
  c2~ c8 bf8 bf8 g8 | f8 ef4. r2 |
  
  \bar "||-|."
  
  \textCodaBreak
  
  c'1~ | c4 bf4 bf4 g4 | f4 ef4~ ef2~ | ef2 r2 | r1\fermata |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
