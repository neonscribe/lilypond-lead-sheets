%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Time After Time"
  subtitle = "(not Cyndi Lauper!)"
  subsubtitle = \instrument
  poet = "Sammy Cahn"
  composer = "Jule Styne"
  copyright = \markup \small { \now " " "© 1947 Barton Music Corp." }
}

refrainLyrics = \lyricmode {
  Time af -- ter time I tell my -- self that I'm
  so luck -- y to be lov -- ing you. __
  So luck -- y to be the one you run to see 
  in the eve -- ning when the day is through. __
  I on -- ly know what I know,
  the pass -- ing years will show
  you've kept my love so young so new. __
  And time af -- ter time 
  you'll hear my say that I'm
  so luck -- y to be lov -- ing you. __
}

refrainSRBChords = \chordmode {
  c2:maj7 a2:m7 d2:m7 g4:9sus4 g4:9 c2:maj7 a2:m7 d2:m7 g4:9sus4 g4:9
  c1:maj7 \chordInsideParens{ a1:m7 } b1:m7.5- e1:7.9-
  
  a2:m a2:m/g fs2:m7.5- b2:7.9- e1:m7 a1:7.9-
  d1:m7 e2:m7.5- a2:7.9-.5+ d1:9 g2.:sus4 g4:7.9-

  c2:maj7 a2:m7 d2:m7 g4:9sus4 g4:9 c2:maj7 a2:m7 d2:m7 g4:9sus4 g4:9
  c1:maj7 g2:m7 c2:7 f1:maj7 f2:m7 f2:m6
  
  c1:6/g fs2:m7.5- f2:m6 e2:m7 a2:m7 d2:9sus4 d2:7
  c2:6/g a2:m7 d2:m7 g2:7.9- c2:6
  
  \chordOpenParen{ a2:m7 }
  d2:m7
  \chordCloseParen{ g2:7 }
}

refrainColoradoChords = \chordmode {
  c1:maj7 d2:m7 g2:7 c1:maj7 d2:m7 g2:7
  c1:maj7 a1:m7 b1:m7.5- e1:7.9+
  
  a2:m7 a2:m7/g fs2:m7.5- b2:7.9+ e1:m7 a1:7.9-
  d1:m7 e2:m7.5- a2:7.9+ af1:7.11+ g1:7

  c1:maj7 d2:m7 g2:7 c1:maj7 d2:m7 g2:7
  c1:maj7 g2:m7 c2:7 f1:maj7 bf1:7
  
  c1:maj7 gf2:m7.5- f2:m6 e2:m7 a2:m7/g gf2:m7.5- f2:m7
  e2:m7 a2:7.9+ d2:m7/g g2:7 c2:maj7

  \chordOpenParen{ a2:m7 }
  d2:m7
  \chordCloseParen{ g2:7 }
}

refrainRealVocalChords = \chordmode {
  c2:maj7 a2:m7 d2:m7 g2:7 c2:maj7 a2:m7 d2:m7 g2:7
  c1:maj7 a1:m7 b1:m7.5- e1:7.9-
  
  a2:m7 a2:m7/g fs2:m7.5- b2:7.9- e1:m7 a1:7.9-
  d1:m7 e2:m7.5- a2:7.9- af1:9.11+ g1:7

  c2:maj7 a2:m7 d2:m7 g2:7 c2:maj7 a2:m7 d2:m7 g2:7
  c1:maj7 g2:m7 c2:7 f1:maj7 f2:m7 bf2:7
  
  a2:m7 a2:m7/g fs2:m7.5- f2:m6 e2:m7 a4:m7 a4:m7/g fs2:m7.5- f2:m6
  e2:m7 a2:m7 d2:m7 g2:7.9- c2:6

  \chordOpenParen{ a2:m7 }
  d2:m7
  \chordCloseParen{ g2:7 }
}

refrainChords = \refrainRealVocalChords

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Chet Baker 1954]" 4 = 100

  \xTextMark \markup{ \bold \box "A1" }
  
  e2 c4 d4 | c2. d4 | e4 a4 g4 e4 | c2. d4 |
  \break
  e4 b'4 a4 e4 | d2. c4 | d1~ | d2 r4 e4 |
  
  \sect "B"
  
  c'2 a4 b4 | a2. b4 | a4 g4 fs4 g4 | e2 bf'4 a4 |
  \break
  g4 f4 e4 f4 | g2 f2 | d1 | r4 b4 c4 d4 |
  
  \sect "A2"
  
  e2 c4 d4 | c2. d4 | e4 a4 g4 e4 | c2. d4 |
  \break
  e4 b'4 a4 e4 | d2. c4 | c'1~ | c2 r4 c4 |
  
  \sect "C"
  
  e2 c4 d4 | c2. d4 | d4 e4 c4 d4 | c2. d4 |
  \break
  d4 e4 c4 d4 | c2 b2 | c1~ | c2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
