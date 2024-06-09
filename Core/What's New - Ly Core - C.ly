%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 18) #}
)

\header {
  title = "What's New"
  subtitle = \instrument
  poet = "Johnny Burke"
  composer = "Bob Haggard"
  copyright = "© 1939 M. Witmark & Sons, New York"
}

refrainLyrics = \lyricmode {
What's new? __
How is the world treat -- ing you? __
You have -- n't changed a bit;
Love -- ly as ev -- er, I must ad -- mit. __

What's new? __
How did that ro -- mance come through? __
We have -- n't met since then,
gee, but it's nice to see you a -- gain. __

What's new? __
Prob -- ab -- ly I'm bor -- ing you, __
but see -- ing you is grand,
And you were sweet to of -- fer your hand, __
I un -- der -- stand.
A -- dieu,
Par -- don my ask -- ing what's new, __
Of course you could -- n't know
I have -- n't changed, I still love you so. __
}

refrainRealBookSixthChords = \chordmode {
  s2

  c2:6 a2:m7 bf2:m7 ef2:7 af2:maj7 f2:m7 d2:m7.5- g2:7.9-
  c2:m c2:m/bf af2:maj7 g2:7 c2:6 a2:m7 d2:m7 g2:7

  c2:6 a2:m7 bf2:m7 ef2:7 af2:maj7 f2:m7 d2:m7.5- g2:7.9-
  c2:m c2:m/bf af2:maj7 g2:7 c2:6 a2:m7 g2:m7 c2:7
  
  f2:6 d2:m7 ef2:m7 af2:7 df2:maj7 bf2:m7 g2:m7.5- c2:7.9-
  f2:m f2:m/ef df2:maj7 c2:m f1:m6 d2:m7.5- g2:7

  c2:6 a2:m7 bf2:m7 ef2:7 af2:maj7 f2:m7 d2:m7.5- g2:7.9-
  c2:m c2:m/bf af2:maj7 g2:7 c2:6

  \chordOpenParen{ a2:m7 }
  d2:m7
  \chordCloseParen{ g2:7 }
}

refrainNewRealChords = \chordmode {
  g2:7

  c1:6 bf2:m9 ef2:7 af1:maj7 d2:m7.5- g2:7
  c2:m a2:m7.5- d2:m7.5- g2:7.5+ c2:6 a2:m7 d2:m7 g2:7

  c1:6 bf2:m9 ef2:7 af1:maj7 d2:m7.5- g2:7
  c2:m a2:m7.5- d2:m7.5- g2:7.5+ c1:6 c2:sus9 c2:7
  
  f1:6 ef2:m9 af2:7 df1:maj7 g2:m7.5- c2:7
  f2:m d2:m7.5- g2:m7.5- c2:7.5+ f1:m d2:m7.5- g2:7

  c1:6 bf2:m9 ef2:7 af1:maj7 d2:m7.5- g2:7
  c2:m a2:m7.5- d2:m7.5- g2:7.5+ c2:6

  \chordOpenParen{ a2:m7 }
  d2:m7
  \chordCloseParen{ g2:7 }
}

refrainChords = \refrainNewRealChords

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Ballad"

  \partial 2 b4. c8~ |
  \bar "||"
  
  \textMark \markup{ \bold \box "A1" }
  
  c1 | r4 \tuplet 3/2 { c8 bf8 af8 } g8 f8 e8 ef8~ | ef1 | r8 d8 ef8 d8 cs4 d4 |
  g1 | r8 f8 g8 f8 ef4 d4 | d8 c8 c8 c8~ c2 | r2 b'4. c8~ |
  
  \bar "||"
  \break

  \textMark \markup{ \bold \box "A2" }

  c1 | r4 \tuplet 3/2 { c8 bf8 af8 } g8 f8 e8 ef8~ | ef1 | r8 d8 ef8 d8 cs4 d4 |
  g1 | r8 f8 g8 f8 ef4 d4 | d8 c8 c8 c8~ c2 | r2 e'4. f8~ |
  
  \textMark \markup{ \bold \box "B" }
  
  f1 | r4 \tuplet 3/2 { f8 ef8 df8 } c8 bf8 a8 af8~ | af1 | r8 g8 af8 g8 fs4 g4 |
  c1 | r8 bf8 c8 bf8 af4 g4 | g8 f8 c8 f8~ f2 | af8 g8 d8 g8~ g4 b4 |
  
  \bar "||"
  \break

  \textMark \markup{ \bold \box "A3" }

  c1 | r4 \tuplet 3/2 { c8 bf8 af8 } g8 f8 e8 ef8~ | ef1 | r8 d8 ef8 d8 cs4 d4 |
  g1 | r8 f8 g8 f8 ef4 d4 | d8 c8 c8 c8~ c2 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
