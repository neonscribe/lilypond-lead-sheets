%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 16)

\header {
  title = "Chitlins Con Carne"
  subtitle = \instrument
  poet = ""
  composer = "Kenny Burrell"
  copyright = \markup \small { \now " " "© 1963 Elliot Music" }
}

refrainChords = \chordmode {
  r1*4
  
  c1*4:7.9+
  f1*2:7 c1*2:7.9+
  g1:7 f1:7 c1*2:7.9+

  g1:7 f1:7 c1*2:7.9+
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Swing Bossa Nova [Kenny Burrell 1963]" 4 = 130

  \xTextMark \markup{ \bold \box "Intro" }
  
  \bar ".|:"
  \repeat volta 2 {
  r1 | r1 | r1 | r4
  \override Parentheses.font-size = #5
  \startParenthesis \parenthesize
  c8 c8 ef8 c8 f8 
  \endParenthesis \parenthesize
  c8 |
  }
  \break

  \xTextMark \markup{ \musicglyph #"scripts.segno" \bold \box "A" }
  \bar ":|.|:"
  \repeat volta 2 {
  g'4 c,8 ef8~ ef4 r4 | r4 c8 c8 ef8 c8 f8 c8~ | c4 r4 r2 | r4 c8 c8 ef8 c8 f8 c8 |
  \break
  g'4 c,8 ef8~ ef4 r4 | r4 c8 c8 ef8 c8 f8 c8~ | c4 r4 r2 | r4 c8 c8 ef8 c8 f8 c8 \textToCodaLastTime |
  \break
  g'8 bf4.~ bf4 gf8 f8~ | f4. c8 ef8 c8 f8 c8~ | c4 r4 r2 | r4
  \override Parentheses.font-size = #5
  \startParenthesis \parenthesize
  c8 c8 ef8 c8 f8 
  \endParenthesis \parenthesize
  c8 |
  }

  \textCodaBreak

  \bar ":|.|:"
  \repeat volta 2 {
  g'8 bf4.~ bf4 gf8 f8~ | f4. c8 ef8 c8 f8 c8~ | c4_"FINE" r4 r2 | r4 c8 c8 ef8 c8 f8 c8 |
  }
}

refrainBass = \relative f' {
  \clef bass

  c,4 g8 c8~ c4 ef4 | r8 c4 g8 c4 ef4 | c4 g8 c8~ c4 ef4 | r8 c4 g8 c4 ef4 |

  c4. g'8~ g8 d8 c8 g8 | c4. g'8~ g4 b,4 | c2 g'8 g8 d'8 df8 | c2 g4 c,8 g'8 |
  f2 d'8 c8 af8 g8 | f4. d8 c4 f4 | c2 g'8 g8 d'8 df8 | c2 g4 c,4 |
  g'4. d8~ d8 g8 d4 | f4. a8~ a4 g4 | c,2 g'8 g8 d'8 df8 | c4. g8~ g8 d8 b4 |
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
}

refrainKicksOverTime = \relative f' {
  \override NoteHead.style = #'cross
  c4 r8 c8 r4 c4 | r4 c4 r8 c8 r4 | c4 r8 c8 r4 c4 | r4 c4 r8 c8 r4 | 
  \revert NoteHead.style
  
  \improvisationOn
  s8*6 c8 c8~ | c4 s8*6 | r4 c8 c8~ c4 c8 c8~ | c4 s8*6 |
  s8*6 c8 c8~ | c4 s8*6 | r4 c8 c8~ c4 c8 c8~ | c4 s8*6 |
  s1 | s1 | r4 c8 c8~ c4 c8 c8~ | c4 s8*6 |
  \improvisationOff
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup { "Play " { \bold \box "Intro" } " then " { \bold \box "A" } " twice. Solo on " { \bold \box "A" }
	  "After solos, pickup, D.S. al Coda, vamp on coda until cue at FINE." }
