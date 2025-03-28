%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Cold Duck Time"
  subtitle = \instrument
  poet = ""
  composer = "Eddie Harris"
  copyright = \markup \small "© 1969 Seventh House Ltd."
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  f1:7 bf1:7 f1:7 bf1:7
  
  f1:7 bf1:7 f1:7 bf1:7
  f1:7 bf1:7 f1:7 bf8*7:7 df8:maj7
  df8*7:maj7 ef8*8:maj7 f8:7 r1*2
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Rock/Gospel Straight Eighths [Les McCann and Eddie Harris 1969]" 4 = 150

  \xTextMark \markup{ \bold \box "Intro" }
  
  \bar ".|:"
  \repeat volta 2 {
  r1 | r1 | r1 | r4 r8 \parenthesize f,8 ef'8 f8 f8 af8 |
  }
  \break

  \xTextMark \markup{ \bold \box "Head" }
  
  \bar ":|.|:"
  \repeat volta 2 {
  r4 r8 \parenthesize f,8 ef'8 f8 ef8 af,8 |
  r4 r8 \parenthesize f8 ef'8 f8 f8 af8 |
  r8 bf8 r8 c8 af4 f8 ef8 |
  f4 r8 \parenthesize f,8 ef'8 f8 f8 af8 |
  \break
  r4 r8 \parenthesize f,8 ef'8 f8 f8 af,8 |
  r4 r8 \parenthesize f8 ef'8 f8 ef8 af8 |
  r8 bf8 r8 c8 af4 f8 ef8 |
  f4 r8 \parenthesize f,8 ef'8 f8 f8 af8~ |
  \break
  af2.. f8~ | f2.. f8-^ | r1 |
  r4 r8
  \override Parentheses.font-size = #5
  \startParenthesis \parenthesize
  f,8 ef'8 f8 f8 
  \endParenthesis \parenthesize
  af8 |
  }
}

refrainBass = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef bass
  
  f,,8 c'8 ef8 c8 d8 f4. | bf,4 c8 a8 r2 | f8 c'8 ef8 c8 d8 f4. | bf,4 c8 a8 r2 |

  f8 c'8 ef8 c8 d8 f4. | bf,4 c8 a8 r2 | f8 c'8 ef8 c8 d8 f4. | bf,4 c8 a8 r2 |
  f8 c'8 ef8 c8 d8 f4. | bf,4 c8 a8 r2 | f8 c'8 ef8 c8 d8 f4. | bf,4 c8 a8 r4 r8 df8~ |
  df2.. ef8~ | ef2.. f8 | r1 | r1 |
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-with-bass.ily"

\markup "Bass line, chord rhythms, and breaks continue for solos."