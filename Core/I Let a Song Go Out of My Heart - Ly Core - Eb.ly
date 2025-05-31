%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "I Let a Song Go Out of My Heart"
  subtitle = \instrument
  poet = "Henry Nemo"
  composer = "Duke Ellington"
  copyright = \markup \small "© 1938 Famous Music Corporation"
}

refrainLyrics = \lyricmode {
  I let a song __ go out of my heart;
  it was the sweet -- est mel -- o -- dy, __
  I know I lost heav -- en 'cause
  you were the song. __

  Since you and I __ have drift -- ed a -- part,
  life does -- n't mean a thing to me. __
  Please come back, sweet mus -- ic. I

  know I was wrong. __

  Am I too late __ to make a -- mends? __
  You know that we were meant to be more than just friends, just friends.

  I let a song __ go out of my heart.
  Be -- lieve me dar -- ling, when I say __
  I won't know sweet mus -- ic un -- til you re -- turn some day.
}

refrainChords = \chordmode {
  ef2 af2:7 ef2 c2:m7 g2:m7 c2:7 g2:m7 c2:7
  af8:6 g4:m7 f4:m7 fs4:dim7 ef8:/g
  ef2:/g af2:7

  ef2 c2:m7 f2:m7.5- bf2:7
  
  ef2 af2:7 ef2 c2:m7 g2:m7 c2:7 g2:m7 c2:7
  af8:6 g4:m7 f4:m7 fs4:dim7 ef8:/g
  ef2:/g af2:7

  ef2 af2:m6 ef4 ef4:/g \chordSlash 1 gf4:dim7
  
  f1:m7 bf1:7 ef1:maj7
  ef2:6 d4:m7 g4:7 c4:m g4:7.5+/b c4:m/bf c4:m/a
  af4:m7 df4:7 gf2:7
  b1:7 bf1:7.5+
  
  ef2 af2:7 ef2 c2:m7 g2:m7 c2:7 g2:m7 c2:7
  af8:6 g4:m7 f4:m7 fs4:dim7 ef8:/g
  ef2:/g af2:7

  ef2 f2:m7/bf ef2
  \chordInsideParens{ bf2:7.5+ }
}

refrainKey = ef

refrainMelody = \relative g' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Slow [Duke Ellington 1938]" 4 = 104

  \sectStart "A1"

    ef8 f8 ef8 ef'8~ ef4. c8 |
    \tuplet 3/2 { bf8 c bf } ef,2. |
    r8 d'4. c8 bf8 g8 d8 |
    d'4 g,8 c8~ c2 |
    f,8 g4 af8~ af8 a4 bf8~ |
    bf8 ef4.~ ef4. c8 |
      \tuplet 3/2 { bf8 c bf } ef,2.~ | ef2 r2 |

  \sect "A2"

    ef8 f8 ef8 ef'8~ ef4. c8 |
    \tuplet 3/2 { bf8 c bf } ef,2. |
    r8 d'4. c8 bf8 g8 d8 |
    d'4 g,8 c8~ c2 |
    f,8 g4 af8~ af8 a4 bf8~ |
    bf8 ef4.~ ef4. c8 |
      \tuplet 3/2 { bf8 c bf } ef,2.~ | ef4 bf'4 bf4 a4 |

  \sect "B"

  af!1~ | af4 c4 c4 b4 | bf!1~ |
  bf8 bf4. c4 d4 |
  ef4 ef4 ef4 ef4 | ef4 df4 gf,4 af4 |
  b1 | c8 fs,4.~ fs2 |

  \sect "A3"

  ef8 f8 ef8 ef'8~ ef4. c8 |
  \tuplet 3/2 { bf8 c bf } ef,2. |
  r8 d'4. c8 bf8 g8 d8 |
  d'4 g,8 c8~ c2 |
  f,8 g4 af8~ af8 a4 bf8~ |
  bf8 ef2. 
  c8 |
  \tuplet 3/2 { bf8 c bf } ef,2 f4 | ef1 |
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
