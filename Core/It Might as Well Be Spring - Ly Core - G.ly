%% -*- Mode: LilyPond -*-

#(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "It Might as Well Be Spring"
  subtitle = \instrument
  poet = "Oscar Hammerstein II"
  composer = "Richard Rodgers"
  copyright = \markup \small { \now " " "© 1945 Williamson Music" }
}

refrainLyrics = \lyricmode {
  I'm as
  rest -- less as a wil -- low in a wind -- storm,
  I'm as jump -- y as a pup -- pet on a string.
  I'd say that I had spring fev -- er, but I
  know it is -- n't spring. I am
  star -- ry eyed and vague -- ly dis -- con -- tent -- ed,
  like a night -- in -- gale with -- out a song to sing.
  Oh, why should I have spring fev -- er when it
   is -- n't ev -- en spring? I keep wish -- ing I were some -- where else
   walk -- ing down a strange new street;
   hear -- ing words that I have nev -- er heard
   from a man I've yet to meet. I'm as
  bu -- sy as a spi -- der spin -- ning day -- dreams,
  I'm as gid -- dy as a ba -- by on a swing.
  I
 have -- n't seen a cro -- cus or a rose -- bud, or a rob -- in on the wing.
 But I feel so gay in a mel -- an -- cho -- ly way that it might as well be spring.
 It might __ as well __ be spring.
}

refrainChords = \chordmode {
  s4 
  
  g2:maj7 a2:m7/d g2:maj7 a2:m7/d g1:maj7 d2:m7 g2:7
  c2:maj7 d2:/c g2:/b bf2:7
  
  a2:m7 d2:7 b4:m7 e4:7 a4:m7 d4:7
  
  g2:maj7 a2:m7/d g2:maj7 a2:m7/d g1:maj7 d2:m7 g2:7
  c2:maj7 d2:/c g2:/b bf2:7
  
  a2:m7 d2:7 g2:6 d4:m7 g4:7
  
  c2:6 a2:m7 d2:m7 g2:7
  d2:m7 g2:7 c2:maj7 b4:m7.5- e4:7 a2:m7 a2:m7/g fs2:m7.5- b2:7
  e2:m7 a2:7 a2:m7 d2:7

  g2:maj7 a2:m7/d g2:maj7 a2:m7/d g1:maj7 d2:m7 g2:7
  
  c2:maj7 d2:/c g2:/b bf2:7
  a2:m7 d2:7 b2:7 e2:7 a1:7 a2:m7 d2:7
  b2:m7 e2:m7 a2:7 bf2:dim7 b2:m7 e2:m7 a2:m7 d2:7
  
  g1:6
  \chordOpenParen{ a2:m7 }
  \chordCloseParen{ d2:7 }
}

refrainKey = g

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad [Stacey Kent 2010]" 4 = 72

  \partial 4 d8 d8 |
  
  \sectNoBreak "A1"
  
    e8 d8 d8 d8 e8 d8 d8 g8 | e4 d2 d8 d8 |
    d8 b'8 d8 g,8 b8 d,8 g8 d8 | f2. 
    f4 |
    e4 ds8 e8 fs!4. g8 | g4 d!2 d8 d8 |

    c'4 c4 c4 fs,4 | b2. d,8 d8 |


  \sect "A2"

  e8 d8 d8 d8 e8 d8 d8 g8 | e4 d2 d8 d8 |
    d8 b'8 d8 g,8 b8 d,8 g8 d8 | f2. 
    f4 |
    e4 ds8 e8 fs!4. g8 | g4 d!2 d8 d8 |

  d'4 d4 d4 fs,4 | g1 |
  \bar "||"

  \xPageBreak
  \sectNoBarNoBreak "B"

  c4 c4 c8 d8 c8 b8 | a4 f4 f2 |
  a8 f8 f8 f8 f4 e4 | g1 |
  c4 c4 c8 d8 c8 b8 | a4 fs4 fs4 g8 a8 |
  b4 b4 cs4 cs4 | d2. d,8 d8 |

  \sect "A3"
  
    e8 d8 d8 d8 e8 d8 d8 g8 | e4 d2 d8 d8 |
    d8 b'8 d8 g,8 b8 d,8 g8 d8 | f2. 
    f4 |


  e8 e8 ds8 e8 fs!8 fs8 es8 fs8 | g4 g2 fs?8 g8 |
  a4 a4 a4 fs4 | b2. b8 c8 |

  cs4 a4 a4 a8 b8 | c!8 a8 a8 a8 a4 a8 as8 |
  b4 g4 g4 b4 | a2. g4 | d4.( b'8) g2 | d4.( c'8) a2 | g1 | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
