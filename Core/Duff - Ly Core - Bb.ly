%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Duff"
  subtitle = \instrument
  poet = ""
  composer = "Hampton Hawes"
  copyright = \markup \small { \now " " "© 1956 Fort Knox Music Inc." }
}

refrainChords = \chordmode {
  s2
  
  bf1:7 bf1:7 bf1:7 bf1:7
  ef1:7 ef1:7 bf1:7 bf1:7
  g1:m7.5-/c f1:7.9+ bf1:7
  \chordOpenParen{ c2:m7 }
  \chordCloseParen{ f2:7 }

  bf1:7 bf1:7 bf1:7 bf1:7
  ef1:7 ef1:7 bf1:7 bf1:7
  c1:m7 f1:7.9+ bf1:7
  c2:m7
  f2:7
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Up [Red Mitchell 1956]" 4 = 168

  \partial 2 f8 g8 bf8 \acciaccatura df8( d8~) |

  \sectNoBreak "Head"
  
  d4 bf8 g8 bf8 c8 bf8 g8 | bf8 c8 r4 f,8 g8 bf8 \acciaccatura df8( d8~) |
  d4 bf8 g8 bf8 c8 bf8 af8 | r2 f8 g8 bf8 \acciaccatura df8( d8~) |
  \break
  d4 bf8 g8 bf8 c8 bf8 g8 | bf8 c8 r4 f,8 g8 bf8 \acciaccatura df8( d8~) |
  d4 bf8 g8 bf8 c8 bf8 f8 | r2 f8 g8 bf8 \acciaccatura df8( d8~) |
  \break
  d8 df4 bf8 d4 bf4 | af4 f4 af4 a8 bf8_"FINE" | r1 |
  r2
  \override Parentheses.font-size = #5
  \startParenthesis \parenthesize
  f8 g8 bf8 \acciaccatura df8( 
  \endParenthesis \parenthesize d8)\laissezVibrer |

  \bar "||-|."

  \sectNoBar "Solos"
  
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup{ "Play head twice before and twice after solos." }
