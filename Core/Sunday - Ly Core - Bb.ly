%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "Sunday"
  subtitle = \instrument
  poet = ""
  composer = "Chester Conn, Bennie Krueger, Ned Miller, Jule Styne"
  copyright = \markup \small { \now " " "© 1926 Leo Feist Inc." }
}

refrainLyrics = \lyricmode {
I'm blue __ ev -- 'ry Mon -- day, think -- ing o -- ver Sun -- day,
that one day when I'm __ with you. __
It seems that I sigh __ all day Tues -- day, I cry all day Wednes -- day.
Oh, my, how I long __ for you. __
And then comes Thurs -- day, __ gee, it's long, __ it nev -- er goes by. __
And Fri -- day __ makes me feel __ like I'm gon -- na die. __
But af -- ter pay -- day __ is my fun day.
I shine all day Sun -- day, that one day when I'm with you. __
}

refrainChords = \chordmode {
  bf2:6 c2:m7 d2:m7 df2:dim7 c2:m7 f2:7 g1:7
  c1:7 f1:7 bf1:6 c2:m7 f2:m7

  bf2:6 c2:m7 d2:m7 df2:dim7 c2:m7 f2:7 g1:7
  c1:7 f1:7 bf1:6 bf1:6
  
  d1:7 d1:7 g1:7 g1:7 c1:7 c1:7 f1:7 f1:7

  bf2:6 c2:m7 d2:m7 df2:dim7 c2:m7 f2:7 g1:7
  c1:7 f1:7 bf1:6
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
  \tempoFour "Medium-Up [Cliff Edwards 1927]" 175

  \sectStart "A1"
  
  c'4. bf8~ bf2 | r4 a8 c8 bf4 g4 | r4 g4 f2 | g4 af4 g4 f4 |
  \break
  r2 d4 c4 | d4 f8 g8~ g4 a8 g8~ | g1 | r4 f4 g4 a4 |
  
  \sect "A2"
  
  c4. bf8~ bf2 | r4 a8 c8 bf4 g4 | r4 g4 f2 | g4 af4 g4 f4 |
  \break
  r4 d4 c2 | r8 d8 f8 g8~ g4 f8 bf8~ | bf2 r2 r4 a4 bf4 b4 |
  
  \sect "B"
  
  c4. a8~ a2 | r8 a8 bf8 c8~ c4. d,8 | a'8 a8 a4 g2~ | g2 r4 r8 c,8 |
  \break
  a'4. g8~ g2 | r8 g8 a8 c8~ c8 a4. | g4 f4 g4 f4~ | f4. f8 g4 a4 |

  \sect "A3"

  c4. bf8~ bf2 | r4 a8 c8 bf4 g4 | r4 g4 f2 | g4 af4 g4 f4 |
  \break
  r2 d4 c4 | d4 f8 g8~ g4 f8 bf8~ | bf1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
