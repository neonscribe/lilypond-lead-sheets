%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Hot House"
  subtitle = \instrument
  poet = ""
  composer = "Tadd Dameron"
  copyright = \markup \small { \now " " "© 1945 Redwood Music Ltd." }
}

refrainChords = \chordmode {
  s4

  g1:m7.5- c1:7.9-.5- f1:m7+ f1:m7+
  d1:m7.5- g1:7.9-.5- c1:maj7 c1:maj7

  g1:m7.5- c1:7.9-.5- f1:m7+ f1:m7+
  d1:m7.5- g1:7.9-.5- c1:maj7 c1:maj7

  c1:m7 f1:7.9- bf1:maj7 bf1:maj7
  af1:13.9-.5- af1:13.9-.5- g1:13.9-.5- g1:13.9-.5-

  g1:m7.5- c1:7.9-.5- f1:m7+ f1:m7+
  d1:m7.5- g1:7.9-.5- c1:maj7 c1:maj7
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Bop [Dizzy Gillespie 1945]" 4 = 165
  
  \partial 4 \invisEighth bf8~ |
  \bar "||"

  \sectStart "A1"
  
  \set melismaBusyProperties = #'()
  \slurDashed
  bf8( bf8)
  \slurSolid
  \unset melismaBusyProperties
  a8 af8
  \set melismaBusyProperties = #'()
  \slurDashed
  g8( g8)
  \slurSolid
  \unset melismaBusyProperties
  gf8 f8 | e8 f8 gf8 bf8 g4 r8 af8~-> | 
  \set melismaBusyProperties = #'()
  \slurDashed
  af8( af8)
  \slurSolid
  \unset melismaBusyProperties
  g8 gf8 
  \set melismaBusyProperties = #'()
  \slurDashed
  f8( f8)
  \slurSolid
  \unset melismaBusyProperties
  e8 ef8 | d8 ef8 e8 af8 e4 r4 |

  \break
  r8 g8 af8 bf8 \tuplet 3/2 { af8 bf8 af8 } g8 b8-> | r8 bf8 r8 af8 g8 f8 ef8 df8 |
  c8 gf'8 f4~ f4. \acciaccatura ds8 e8-> | r8 c8-> r4 r8 c8-> r4 |
  
  \sectStart "A2"
  
  r8 g'8 af8 bf8 c8 bf8 fs8 g8 | \tuplet 3/2 { bf8 d8 g8 } fs8 d8 r2 |
  r8 f,8 g8 af8 bf8 af8 e8 f8 | \tuplet 3/2 { af8 c8 f8 } e8 c8 r2 |
  \break
  g8-. g8 f8 g8 bf8 af8 g8 f8 | b8-. b8 a8 b8 d8 c8 bf8 af8 |
  g4 d'8\glissando b8 c4 a'8\glissando fs8 | g4 r4 r4 r8 f,8-> |
  
  \sect "B"
  
  r8 c8 r8 d8 ef8 f8 fs8 a8 | d8 a8 fs8 ef8 d'4 \tuplet 3/2 { a8 fs8 ef8 } |
  a8\glissando fs8 g8 a8 c8\glissando a8 bf8 c8 | ef8\glissando cs8 d8 g8 f8 \parenthesize f,8 r4 |
  \break
  r8 gf4 a16 \parenthesize d16 f8 d8 a8 gf8 | f'4 d8 a8~ a4 r4 |
  r8 f4 af16 \parenthesize df16 e8 df8 af8 f8 | e'4 df8 af8~ af4  r8 bf8~-> |

  \sect "A3"

  \set melismaBusyProperties = #'()
  \slurDashed
  bf8( bf8)
  \slurSolid
  \unset melismaBusyProperties
  a8 af8
  \set melismaBusyProperties = #'()
  \slurDashed
  g8( g8)
  \slurSolid
  \unset melismaBusyProperties
  gf8 f8 | e8 f8 gf8 bf8 g4 r8 af8~-> | 
  \set melismaBusyProperties = #'()
  \slurDashed
  af8( af8)
  \slurSolid
  \unset melismaBusyProperties
  g8 gf8 
  \set melismaBusyProperties = #'()
  \slurDashed
  f8( f8)
  \slurSolid
  \unset melismaBusyProperties
  e8 ef8 | d8 ef8 e8 af8 e4 r4 |

  \break
  r8 g8 af8 bf8 \tuplet 3/2 { af8 bf8 af8 } g8 b8-> | r8 bf8 r8 af8 g8 f8 ef8 df8 |
  c8 gf'8 f4 f4. \acciaccatura ds8 e8-> | r8 c8->
  \override Parentheses.font-size = #5
  \startParenthesis \parenthesize
  r8_"(all rhythm)" \acciaccatura ds8 e8 r8 c8
  \endParenthesis \parenthesize r4 |  

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
