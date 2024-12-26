%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Sandu"
  subtitle = \instrument
  poet = ""
  composer = "Clifford Brown"
  copyright = "© 1955 Second Floor Music"
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  s8*5
  
  ef1:7 af1:7 ef1:7 ef1:7
  af1:7 af1:7 ef1:7 ef1:7
  s4 <bf>8*13 ef8
  
  s4. f2:m7 e8:7.9+.11+ r1

  r1 r1
  
  ef1:7 af1:7 ef1:7 ef1:7
  af1:7 af1:7 ef1:7 g2:m7 c2:7
  f1:m7 bf1:7 ef2:7
  \chordOpenParen{ c2:m7 }
  f2:m7
  \chordCloseParen{ bf2:7 }

  s4 <bf>8*5 ef8*9:9.11+
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Swing" 4 = 138

  \partial 8*5 ef8 g8 bf8 \tuplet 3/2 { c8 bf8 ef8 } |

  \xTextMark \markup{ \bold \box "Head"  \musicglyph #"scripts.segno" }
  
  \bar ".|:"
  \repeat volta 2 {
  r4 r8 ef,8 g4 bf8 af8 | r4 r8 ef'8~ ef4 gf,8 ef8 |
  ef'4 r8 ef,8 g4 bf8 ef8 | r4 r8 df8~ df8 bf8 af8 ef8 |
  \break
  gf16 ef16  af4.~ af4 gf4 | r8 ef'4 df8 bf8 af8 gf8 ef8 |
  af16 ef16 g4.~ g4 ef4 | r8 ef'4 df8 bf8 af8 gf8 ef8 |
  \break
  <a fs>8 <a fs>8  <af f>8 <af f>8 <gf ef>4 <ef c>8 bf8 \textToCodaLastTime |
  df4 bf8 bf8 \tuplet 3/2 { df16 ef16 df16} bf8 d8 ef8 |
  \break
  \alternative { \volta 1 {
  r8 <g bf,>8 <gf a,>8 <f af>8 r8 <g bf,>8 <af c,>8 <bf d,>8 |
  r4 r8 ef,8 g8 bf8 \tuplet 3/2 { c8 bf8 ef8 } |
  } \volta 2 {
  r1^"Solo break" | r1 |
  } } }

  \sect "Solos"
  
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \override Parentheses.font-size = #5
  \startParenthesis \parenthesize
  r4 r8 ef,8 g8 bf8 \tuplet 3/2 { c8 bf8 
  \endParenthesis \parenthesize ef8 } \dalSegnoAfterSolosWithRepeats |

  \bar "|."

  \textCodaBreak
  
  df,4 bf8 bf8 df8 ef8 r8 <a f,>8~ | <a f,>1\fermata |
  
  \sect "C"

  \bar "|."
}

refrainKicksOverTime = \relative f' {
  s8*5
  
  s1*8
  
  r4 ef4 r4 ef4 r4 ef4 r4 ef8 ef8
  
  r4 r8 ef8 r4 r8 e8 s1
  
  s1*2
  
  s1*12
  
  r4 bf4 r4 r8 ef8~ ef1
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-with-kicks.ily"
