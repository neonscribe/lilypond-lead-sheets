%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = " Blue and Sentimental"
  subtitle = \instrument
  poet = ""
  composer = "Count Basie, Jerry Livingston, and Mack David"
  copyright = "© 1938 Hallmark Music Publishing Company"
}

refrainLyrics = \lyricmode {
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
}

refrainChords = \chordmode {
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
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad [Count Basie 1938]" 4 = 78

  \xTextMark \markup{ \bold \box "A1" }
  
  g8 af8 a8 bf8 d8 c4. | r8 ef,8 ef8 c8 g'8 g4. |
  \break
  r8 ef8 ef8 c8 g'8 g4 bf8 | g2. r4 |
  
  \sect "A2"
  
  g8 af8 a8 bf8 d8 c4. | r8 ef,8 ef8 c8 g'8 g4. |
  \break
  r8 ef8 ef8 c8 g'8 g4. | g8 bf8 g8 f8~ f4. ef8 |

  \sect "B"
  
  ef4 f8 ef8 gf4 f8 ef8 | g8 bf4 bf8~ bf4. ef,8 |
  \break
  ef4 f8 ef8 gf4 f8 ef8 | g8 bf4 bf8~ bf2 | 
  
  \sect "A3"

  g8 af8 a8 bf8 d8 c4. | r8 ef,8 ef8 c8 g'8 g4. |
  \break
  r8 ef8 ef8 c8 g'8 g4 f8 | bf4 a4 af4  g4 |
  \break
  c2~ c8 bf8 bf8 g8 | f8 ef4. r2 |
  
  \bar "|."
}

refrainChordsDouble = \chordmode {
  ef2:maj7 df2:7 c1:9 f1:9 bf1:13
  f1:9 bf1:13 g2:m7 c2:7.9- f2:m7 bf2:7.9-

  ef2:maj7 df2:7 c1:9 f1:9 bf1:13
  f1:9 bf1:13 ef1:9 bf2:m7 ef2:9
  
  af1:6 a1:dim7 ef2:6/bf bf2:7.5+ ef1:9
  af1:6 a1:dim7 ef2:6/bf c2:7.9- f2:m7 bf2:7.9-

  ef2:maj7 df2:7 c1:9 f1:9 bf1:13
  f1:9 bf1:13 ef2:9 d2:9 df2:9 c2:9 f1:9 bf1:13 ef1:6
  

  \chordOpenParen{ f2:m7 }
  \chordCloseParen{ bf2:7.9- }
}

refrainMelodyDouble = \relative f' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad" 2 = 70

  \xTextMark \markup{ \bold \box "A1" }
  
  g4 af4 a4 bf4 | d4 c2. | r4 ef,4 ef4 c4 | g'4 g2. |
  \break
  r4 ef4 ef4 c4 | g'4 g2 bf4 | g1~ | g2 r2 |
  
  \sect "A2"
  
  g4 af4 a4 bf4 | d4 c2. | r4 ef,4 ef4 c4 | g'4 g2. | 
  \break
  r4 ef4 ef4 c4 | g'4 g2. | g4 bf4 g4 f4~ | f2. ef4 |

  \sect "B"
  
  ef2 f4 ef4 | gf2 f4 ef4 | g4 bf2 bf4~ | bf2. ef,4 |
  \break
  ef2 f4 ef4 | gf2 f4 ef4 | g4 bf2 bf4~ | bf1 | 
  
  \sect "A3"

  g4 af4 a4 bf4 | d4 c2. | r4 ef,4 ef4 c4 | g'4 g2. |
  \break
  r4 ef4 ef4 c4 | g'4 g2 f4 |  bf2 a2 | af2  g2 |
  \break
  c1~ | c4 bf4 bf4 g4 | f4 ef2. | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
