%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Hit That Jive, Jack"
  subtitle = \instrument
  poet = ""
  composer = "Johnnie Alston, Skeets Tolbert"
  copyright = \markup \small "© 1940 Universal Music Corporation"
}

refrainLyrics = \lyricmode {
Hit that jive, Jack.
Put it in your pock -- et 'til I get back.
Go -- in' down -- town to see a man,
and I ain't got time to shake your hand.

Hit that jive, Jack.
Put it in your pock -- et 'til I get back.
Time and time waits for no man,
And I ain't got time to shake your hand.

Stand -- in' on the cor -- ner,
all full of jive,
but you know that you're my boy,
so I'm forced to give you five,
ja -- d -- ya -- da.

Hit that jive, Jack.
Put it in your pock -- et 'til I get back.
Go -- in' down -- town to see a man,
and I ain't got time to shake your hand.
}

refrainChords = \chordmode {
  f2:6 d2:7.9- g2:7 c2:7.9- f2:6 d2:7.9- g2:7 c2:7.9-
  f2:6 f2:7/a bf2:6 b2:dim7 f4/c r2. c2:7 f2

  f2:6 d2:7.9- g2:7 c2:7.9- f2:6 d2:7.9- g2:7 c2:7.9-
  f2:6 f2:7/a bf2:6 b2:dim7 f4/c r2. c2:7 f2

  c1:m7 f1:7 bf2:6 f2:7 bf2:6 af2:7 g1:7 g1:7 g1:m7 c1:7

  f2:6 d2:7.9- g2:7 c2:7.9- f2:6 d2:7.9- g2:7 c2:7.9-
  f2:6 f2:7/a bf2:6 b2:dim7 f4/c r2. c2:7 f2
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Up Swing [Nat King Cole 1942]" 4 = 200

  \sectStart "A1"
  
  r2 c'4 bf4 | af4. g8 r2 | f8 f8 c'8 c8 b8 c8 r8 f,8 | af8 f4 g8 r2 |
  \break
  f8 f8 c'4 b4. f8 | bf8 f4 af8~ af4 f8 f8 | af4 af4 f4. c8 | e8 e4 f8~ f4 r4 |
  
  \sect "A2"
  
  r2 c'4 bf4 | af4. g8 r2 | f8 f8 c'8 c8 b8 c8 r8 f,8 | af8 f4 g8 r2 |
  \break
  f8 c'4 b8~ b4 c4 | bf8 f4 af8~ af4 f8 f8 | af4 af4 f4. c8 | e8 e4 f8~ f4 r4 |
  
  \sect "B"
  
  r2 d'8 c8 d8 c8 | d8 d8~ d4 r2 | r4 c4 c8 bf4 f8~ | f2 r2 |
  \break
   r8 e'4 d8 e4 e4 | e8 e4 e8~ e8 d8 d4 | f8 f4 d8~ d8 d4 d8 | r4 gs,8 a8 f8 g8~ g4 |

  \sect "A3"

  r2 c4 bf4 | af4. g8 r2 | f8 f8 c'8 c8 b8 c8 r8 f,8 | af8 f4 g8 r2 |
  \break
  f8 f8 c'4 b4. f8 | bf8 f4 af8~ af4 f8 f8 | af4 af4 f4. c8 | e8 e4 f8~ f4 r4 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
