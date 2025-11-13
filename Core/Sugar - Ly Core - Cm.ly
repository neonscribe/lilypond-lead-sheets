%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Sugar"
  subtitle = \instrument
  poet = ""
  composer = "Stanley Turrentine"
  copyright = \markup \small { \now " " "© 1970 La Place Music" }
}

introLyrics = \lyricmode {
}

introChords = \chordmode {
  c8*7:sus g8*9:7.9-.5+ c8*7:sus g8*16:7.9-.5+ c8:m7
}

introKey = c

introMelody = \relative f' {
  \time 4/4
  \key \introKey \minor
  \clef \whatClef
  \tempo "Medium [Stanley Turrentine 1970]" 4 = 122

  \xTextMark \markup{ \bold \box "Intro" }
  
  \bar ".|:"
  \repeat volta 2 {
  r2 <f c g>4 r8 <ef bf af f>8~ | <ef bf af f>1 | 
  r2 <f c g>4 r8 <ef bf af f>8~ |
  \alternative { \volta 1 {
  <ef bf af f>1 |
  } \volta 2 {
      <<
      {
        \voiceOne
	r4 r8 c8 ef8 f8-. r8 g8\laissezVibrer
      }
     \new Voice = "head" {
        \voiceTwo
	<ef bf af f>2.\repeatTie s4 |
      }
    >>
    \oneVoice
  } } }
  \bar "||"
}

introBass = \relative f' {
  \time 4/4
  \key \introKey \minor
  \clef bass
  
  c,2 g'4 r8 g,8~ | g1 | c2 g'4 r8 g,8~ |
  
  g1 |
  
  g2.\repeatTie s4

}

refrainChords = \chordmode {
  c1:m7 \chordInsideParens{ d2:m7.5- } g2:7.9-.5+
  c1:m7 g8*7:7.9-.5+ c8:m7
  c1.:m7 \chordInsideParens{ d2:m7.5- } g1:sus7 g8*7:7.9-.5+ c8:m7
  c1:m7 gf1:13.11+ f1:m7 ef8*7:9 d8:m7.5-
  d1:m7.5- g1:7.9-.5+ af8*15:9 c8:m7
  
  c1:m7 d2:m7.5- g2:7.5+.9- c1:m7 g1:7.5+.9-
  c1:m7 c1:m7 d1:m7.5- g1:7.5+.9-
  c1:m7 gf1:13.11+ f1:m9 ef1:9
  d1:m7.5- g1:7.5+.9- af1:9 af1:9
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef

  \xTextMark \markup { \bold \box "Refrain" }

  \bar ".|:"
  \repeat volta 2 {
  g4.\repeatTie f8 \tuplet 3/2 { g16 af16 g16 } f8 ef8 f8~ |
  f4. ef8 \tuplet 3/2 { f16 g16 f16 } ef8 c8 ef8~ | ef1~ | ef4 r8 c8 ef8 f8-. r8 g8~ |
  \break
  g4. f8 \tuplet 3/2 { g16 af16 g16 } f8 ef8 f8~ |
  f4. g8 \tuplet 3/2 { bf16 c16 bf16 } g8 f8 g8~ | g1~ | g4 r8 g8 bf8 c8-. r8 ef8~ |
  \break
  ef4. c8 \tuplet 3/2 { ef16 f16 ef16 } c8 bf8 c8~ |
  c4. bf8 \tuplet 3/2 { c16 d16 c16 } bf8 g8 bf8~ |
  bf4. g8 \tuplet 3/2 { bf16 c16 bf16 } g8 f8 g8~ |
  g4. f8 \tuplet 3/2 { g16 af16 g16 } f8 ef8 f8~ |
  \break
  f4. ef8 \tuplet 3/2 { f16 g16 f16 } ef8 c8 ef8~ |
  ef4. c8 \tuplet 3/2 { ef16 f16 ef16 } c8 bf8 c8~ | c1 |
  r4 r8
    \override Parentheses.font-size = #5
  \startParenthesis \parenthesize
  c8 ef8 f8-. r8 
  \endParenthesis \parenthesize
  g8\laissezVibrer |
  }
  \break
  
  \xTextMark \markup { \bold \box "Solos" }

  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 

  \bar "|."
}

refrainKicksOverTime = \relative f' {
  s8*7 c8\laissezVibrer s8*7 c8\laissezVibrer s8*7 c8\laissezVibrer s8*7 c8\laissezVibrer 
  s8*7 c8\laissezVibrer s8*7 c8\laissezVibrer s8*7 c8\laissezVibrer s8*7 c8\laissezVibrer 
  s8*7 c8\laissezVibrer s8*7 c8\laissezVibrer s8*7 c8\laissezVibrer s8*7 c8\laissezVibrer 
  s8*7 c8\laissezVibrer s8*7 c8\laissezVibrer s8*15 c8\laissezVibrer 
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/intro.ily"

\include "../Include/refrain.ily"

\markup{ "Play head twice before and twice after solos." }
