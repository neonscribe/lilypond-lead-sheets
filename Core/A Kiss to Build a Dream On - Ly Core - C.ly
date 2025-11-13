%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "A Kiss to Build a Dream On"
  subtitle = \instrument
  poet = ""
  composer = "Bert Kalmar, Harry Ruby and Oscar Hammerstein II"
  copyright = \markup \small { \now " " "© 1935 Miller Music Corporation" }
}

refrainLyrics = \lyricmode {
Give me a kiss to build a dream on and my im -- ag -- i -- na -- tion will thrive up -- on that kiss.
Sweet -- heart, I ask no more than this, a kiss to build a dream on.

Give me a kiss be -- fore you leave me and my im -- ag -- i -- na -- tion will feed my hun -- gry heart.
Leave me one thing be -- fore we part, a kiss to build a dream on. __

When I'm a -- lone __ with my fan -- cies I'll __ be with you. Weav -- ing ro -- manc -- es,
mak -- ing be -- lieve they're true.

Give me your lips for just a mo -- ment and my im -- ag -- i -- na -- tion will make that mo -- ment live.
Give me what you a -- lone can give, a kiss to build a dream on.
}

refrainChords = \chordmode {
  c1 c2 c4/e ef4:dim7 g2:7/d cs2:dim7
  g2:7/d cs2:dim7 g2:7/d cs2:dim7 g2:7/d g2:7
  
  c2:6 a2:m7 d2:m7 g2:7
  
  c1 c2 c4/e ef4:dim7 g2:7/d cs2:dim7
  g2:7/d cs2:dim7 g2:7/d cs2:dim7 g2:7/d g2:7
  
  c2:6 f2:m6 c2:6 c2:7
  
  f2:m7 bf2:7 ef2:maj7 c2:m7 f2:m7 bf2:7 ef2:maj7 ef2:6
  d2:m7.5- g2:7 c1:m a1:m7 d2:m7/g g2:7

  c1 c2 c4/e ef4:dim7 g2:7/d cs2:dim7
  g2:7/d cs2:dim7 g2:7/d cs2:dim7 g2:7/d g2:7 c2:6 f2:m6 c2:6
  \chordOpenParen{ d4:m7 }
  \chordCloseParen{ g4:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad [Louis Armstrong 1952]" 4 = 88

  \sectStart "A1"
  
  c'8 g4 a8 b8 c8 b8 a8 | c8 g4 a8 b8 c8 b8 a8 | g8 d4 e8 f8 g8 f8 e8 |
  g1 |
  \break
  g8 d4 e8 f8 g8 f8 e8 | g4. d8 f8 e8 g8 e8 |
  d8 c4. r2 | r1 |

  \sect "A2"
  
  c'8 g4 a8 b8 c8 b8 a8 | c8 g4 a8 b8 c8 b8 a8 | g8 d4 e8 f8 g8 f8 e8 |
  g1 | 
  \break
  g8 d4 e8 f8 g8 f8 e8 | g4. d8 f8 e8 g8 e8 |
  d8 c4.~ c2~ | c4 d4 e4 g4 |
  \bar "||"

  \xPageBreak
  \sectNoBarNoBreak "B"
  
  c2~ c8 cs8 d4 | bf4 bf2. | af2~ af8 a8 bf4 | g1 |
  \break
  f2~ f8 fs8 g4 | ef4 ef2. | d8 d4 d8 ds4 e4 | g1 |
  
  \sect "A3"
  
  c8 g4 a8 b8 c8 b8 a8 | c8 g4 a8 b8 c8 b8 a8 | g8 d4 e8 f8 g8 f8 e8 | g1 |
  \break
  g8 d4 e8 f8 g8 f8 e8 | g4. d8 f8 e8 g8 e8 | d8 c4. r2 | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
