%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "You Turned the Tables on Me"
  subtitle = \instrument
  poet = "Sidney D. Mitchell"
  composer = "Louis Alter"
  copyright = \markup \small { \now " " "© 1936 Warner Bros, Inc." }
}

refrainLyrics = \lyricmode {
You turned the ta -- bles on me __
and now I'm fall -- ing for you. __
You turned the ta -- bles on me. __
I can't be -- lieve that it's true. __

I al -- ways thought when you brought __
the love -- ly pres -- ent you bought __
why had -- n't you brought __ me more. __

But now if you'd come __
I'd wel -- come an -- y -- thing from __
The five __ and ten cent store. __

You used to call me the top. __
You put me up on a throne. __
You let me fall with a drop __
and now I'm out on my own. __

But af -- ter think -- ing it o -- ver and o -- ver __
I got what was com -- ing to me. __
Just like the sting __ of a bee __
you turned the ta -- bles on me. __
}

refrainChords = \chordmode {
  s1
  
  g2:m7 d2:7 g2:m7 c2:7 f2:maj7 g2:m7 a2:m7 d2:7
  g2:m7 d2:7 g2:m7 c2:7 f1:7 f1:7
  
  bf1:maj7 bf1:m6 a1:m7 af1:dim7
  g1:m7 gs1:dim7 a2:m7 d2:7.5- g2:m7 a4:m7 af4:9

  g2:m7 d2:7 g2:m7 c2:7 f1:maj7 f1:maj7
  c2:m7 g2:7/d c2:m7/ef f2:7.9- bf1:6 bf1:6
  bf1:m6 bf1:m6 f2:maj7 d2:m7 g1:7
  c2:7 d2:7.9- g2:m7 c2:7 f2:6 bf2:7 f2:6
  \chordOpenParen{ g4:m7 }
  \chordCloseParen{ c4:7 }
}

refrainKey = f

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
  \tempo "Medium [Benny Goodman 1936]" 4 = 118
  
  r8 c8 d8 c8 d8 c8 ef8 d8~ |

  \sectNoBreak "A1"
  
  \set Score.currentBarNumber = #1
  d1 | r4 c'4 c4 c4 | c8 a8 a8 a8~ a2 | r8 c,8 d8 c8 d8 c8 ef8 d8~ |
  \break
  d1~ | d4 c'4 c4 c4 | c8 a8 a8 a8~ a2~ | a4 a4 c4 bf4 |
  
  \sect "B"
  
  a8 f8 f8 f8~ f8 f8 f8 f8 | a8 f8 f8 f8~ f4. e8 | g8 e8 e8 e8~ e8 e4 e8~ | e2. r8 d8 |
  \break
  f8 d8 d8 d8~ d8 d8 d8 d8 | f8 d8 d8 d8~ d8 e4 c8~ | c8 e4 c8~ c8 ef4 c8~ | c8 c8 d8 c8 d8 c8 ef8 d8~ |
  \bar "||"
  
  \xPageBreak

  \sectNoBarNoBreak "A2"

  d1 | r4 c'4 c4 c4 | c8 a8 a8 a8~ a2 | r8 f8 g8 f8 g8 f8 af8 g8~ |
  \break
  g1 | r4 c4 c4 c4 | c8 cf8 bf8 bf8~ bf2~ | bf2~ bf8 bf8 c8 bf8 |
  
  \sect "C"

  c8 bf8 df8 c8~ c8 bf8 df8 c8~ | c4. bf8~ bf2 | bf8 a8 c8 a8 f8 a8 f8 d8~ | d2. r4 |
  \break
  d8 c8 ef8 d8~ d8 c8 e8 d8~ | d8 c'8 c8 c8 c8 gs8 a8 f8~ | f1~ | f2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
