%% -*- Mode: LilyPond -*-

#(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "These Foolish Things"
  subtitle = \instrument
  poet = "Holt Marvell"
  composer = "Jack Strachey & Harry Link"
  copyright = \markup \small "© 1935 Boosey & Co. Ltd., London, England"
}

refrainLyrics = \lyricmode {
A cig -- a -- rette that bears a lip -- stick's tra -- ces,
An air -- line tick -- et to ro -- man -- tic pla -- ces,
And still my heart has wings.
These foo -- lish things re -- mind me of you.
A tink -- ling pia -- no in the next a -- part -- ment,
Those stum -- bling words that told you what my heart meant,
A fair ground's paint -- ed swings.
These fool -- ish things re -- mind me of you.
You came, you saw, you con -- quered me;
When you did that to me,
I knew some -- how it had to be.
The winds of March that make my heart a dan -- cer,
A tel -- e -- phone that rings but who's to ans -- wer?
Oh, how the ghost of you clings!
These fool -- ish things re -- mind me of you.
}

refrainChords = \chordmode {
  ef2:maj7 c2:m7 f2:m7 bf2:7 ef2:maj7 c2:m7 f2:7 bf2:7
  bf2:m7 ef2:7 af2:maj7 c2:7 f1:7 f2:m7 bf2:7

  ef2:maj7 c2:m7 f2:m7 bf2:7 ef2:maj7 c2:m7 f2:7 bf2:7
  bf2:m7 ef2:7 af2:maj7 c2:7 f2:7 bf2:7 ef2:7 a4:m7.5- d4:7

  g1:m a2:m7.5- d2:7 g1:m7 c2:7 f2:7
  bf2:maj7 g2:m7 c2:m7 f2:7 bf2:7 bf2:dim7 f2:m7 bf2:7

  ef2:maj7 c2:m7 f2:m7 bf2:7 ef2:maj7 c2:m7 f2:7 bf2:7
  bf2:m7 ef2:7 af2:maj7 c2:7 f2:7 bf2:7 ef2:6

  \chordOpenParen{ f4:m7 }
  \chordCloseParen{ bf4:7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Ballad"

  \xTextMark \markup{ \bold \box "A1" }
  
  r8 ef8 f8 g8 f8 ef8 c8 ef8 | g4 g4 g8 f4. | r8 ef8 f8 g8 f8 ef8 c8 ef8 | c'4 c4 c8 bf4. |
  r8 bf8 c8 bf8 ef4 ef8 ef8~ | ef2 \tuplet 3/2 { g,4 af4 bf4 } | c4. c,8 \tuplet 3/2 { c4 ef4 g4 } | f1 |
  
  \sect "A2"
  
  r8 ef8 f8 g8 f8 ef8 c8 ef8 | g4 g4 g8 f4. | r8 ef8 f8 g8 f8 ef8 c8 ef8 | c'4 c4 c8 bf4. |
  r8 bf8 c8 bf8 ef4 ef8 ef8~ | ef2 \tuplet 3/2 { g,4 af4 bf4 } | c4. c,8 \tuplet 3/2 { c4 ef4 g4 } | ef1 |

  \sect "B"
  
  r4 bf'4 g2 | r4 c4 a2 | r4 bf4 c4 d4 | d1 |
  r4 d4 c4 bf4 | c8 d8 c2 f,4 | bf4 bf4 bf4 a4 | af8 bf8 af2. |
  
  \sect "A3"

  r8 ef8 f8 g8 f8 ef8 c8 ef8 | g4 g4 g8 f4. | r8 ef8 f8 g8 f8 ef8 c8 ef8 | c'4 c4 c8 bf4. |
  r8 bf8 c8 bf8 ef8 ef8 ef8 ef8~ | ef2 \tuplet 3/2 { g,4 af4 bf4 } | c4. c,8 \tuplet 3/2 { c4 ef4 g4 } | ef1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
