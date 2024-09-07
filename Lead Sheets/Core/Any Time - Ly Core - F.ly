%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  (set-global-staff-size 16))

\header {
  title = "Any Time (Anytime)"
  subtitle = \instrument
  poet = ""
  composer = "Herbert Happy Lawson"
  copyright = "© 1921 Herbert Happy Lawson Music Publishing Company"
}

introLyrics = \lyricmode {
}

introChords = \chordmode {
  s2
  
  c1:7 c1:7 f1:6 f2:6
}

introKey = f

introMelody = \relative f' {
  \time 4/4
  \key \introKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 142

  \xTextMark \markup{ \bold \box "Intro" }

  \partial 2 d'4 df4 |
  \bar "||"
  c2. g4 | bf4 bf4 a4 g4 | f2 a4 c4 | f2
}

refrainLyrics = \lyricmode {
An -- y time __ you're feel -- ing lone -- ly,
an -- y time __ you're feel -- ing blue,
an -- y time __ you feel down -- heart -- ed,
that will prove your love __ for me is true.

An -- y time __ you're think -- in' 'bout me,
that's the time __ I'll think of you. __
An -- y time __ you say you want me back a -- gain, __
that's the time I'll come back home __ to you.
(An -- y time)
}

refrainChords = \chordmode {
  s2
  
  d1:7 d1:7 g1:7 g1:7
  c1:7 c1:7 f1:6 f1:7
  
  bf1 bf1 f1:6 f1:6
  g1:7 g1:7 c1:7 c1:7

  d1:7 d1:7 g1:7 g1:7
  c1:7 c1:7 a1:7 a1:7
  
  d1:7 d1:7 g1:7 g1:7
  c1:7 c1:7 f1:6 f1:6
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  
  \partial 2 c'8 cs4 d8~ |
  \bar "||"

  \xTextMark \markup{ \bold \box "A" }

  d1~ | d8 a4. a8 d,4. | a'2 g2 | r2 fs8 g4 c8~ |
  \break
  c1~ | c8 c4. d8 c4. | a1 | r2 cs,8 d4 f8~ |
  \break
  f1 | r4 f4 g4 f4 | a2 c2 | r2 a4 bf4 |
  \break
  b2. g8 f8~ | f4. g8 e8 d4. | g1 | r2 c8 cs4 d8~ |

  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  d1~ | d8 a4. a8 d,4. | a'2 g2 | r2 fs4 g4 |
  \break
  c1~ | c8 c4. c8 bf4 a8~ | a1 | r2 gs8 a4 d8~ |
  \break
  d2. e4 | d2. r8 a8 | a4 a4 g8 f4 d8~ | d4 r4 d'4 df4 |
  \break
  c2. c,4 | bf'8 bf4 a8~ a4 g4 | f1 | r2
  \override Parentheses.font-size = #5
  \startParenthesis \parenthesize
  c'8  cs4
  \endParenthesis \parenthesize d8\laissezVibrer |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/intro.ily"
\include "../Include/refrain.ily"

\markup {
  \vspace #1
  \column {
    \line { \large { Anytime your world is lonely, } } 
    \line { \large { and you find true friends are few, } } 
    \line { \large { anytime you see a rainbow, } } 
    \line { \large { that will be a sign the storm is through. } }
    }
  \column { \hspace #5 }
  \column {
    \line { \large { Anytime will be the right time, } } 
    \line { \large { anytime at all will do. } } 
    \line { \large { Anytime you're sure you want only my love, } } 
    \line { \large { that's the time I'll come back home to you. } } 
  }
}