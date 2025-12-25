%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Night Train"
  subtitle = \instrument
  poet = "Oscar Washington, Lewis C. Simpkins"
  composer = "Jimmy Forrest"
  copyright = \markup \small { \now " " "© 1952 Pamlee Music Co." }
}

refrainChords = \chordmode {
  bf1:7 bf1:7 bf1:7 bf1:7 
  ef2:7 \chordInsideParens{ e2:7 } ef1:7 bf1:7 bf1:7
  gf1:7 f1:7 bf1:7 bf1:7
  
  bf1:7 bf1:7 bf1:7 bf1:7 
  ef1:7 ef1:7 bf1:7 bf1:7
  c1:m7 f1:7 bf1:7 bf8*5:7 f4:7 bf8:6
  
  r2.. f8:7 bf8:6 r2. f8:7
  bf8:6 r8*15
  
  ef1:7 ef1:7 bf1:7 d2:m7 g2:7
  c1:m7 f1:7 bf1:7 f1:7
  
  c1:m7 f1:7 af1:7 g1:7
  c1:m7 f1:7 bf1:7 bf1:7
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
  \tempo "Medium Swing [Oscar Peterson 1962]" 4 = 100

  \sectStart "A"
  
  d'2~ d4. d8~ | d2 r4 r8 bf8 | d8 c8 bf8 af8 f8 ef8 df8 c8~ | c2. r4 |
  \break
  df'2~ df4. df8~ | df2 r4 r8 bf8 | d8 c8 bf8 af8 f8 ef8 df8 c8~ | c2. r4 \textToCodaLastTime |
  \break
  df'2~ df4. df8~ | df2 r4 r8 bf8 | d8 c8 bf8 af8 f8 ef8 df8 c8~ | c2. r8 f8 |
  
  \sect "B"
  
  bf8 bf8 df8 df8 bf8 bf8 g8 f8 | bf8 bf8 df8 df8 bf8 bf8 g8 f8 | bf8 bf8 r4
  \magnifyMusic 0.63 { bf,8 r8 r4 | bf8 r8 r8 bf8 } r4 r8 f'8 |
  \break
  bf8 bf8 df8 df8 bf8 bf8 g8 f8 | bf8 bf8 df8 df8 bf8 bf8 g8 f8 | bf8 bf8 r4
  \magnifyMusic 0.63 { bf,8 r8 r4 | bf8 r8 r8 bf8 } r4 r8 f'8 |
  \break
  bf8 bf8 df8 df8 bf8 bf8 g8 f8 | bf8 bf8 df8 df8 bf8 bf8 g8 f8 | bf8 bf8 r4
  \magnifyMusic 0.63 { bf,8 r8 r4 | bf8 r8 r8 bf8 } r8 
  \override Staff.NoteHead.style = #'slash
  bf'4 bf8
  \override Staff.NoteHead.style = #'default
  |
  
  \sect "C"
  
  \tuplet 3/2 { r8 bf8 df8 } \tuplet 3/2 { d8 ef8 e8 } \tuplet 3/2 { f8 e8 f8 } \tuplet 3/2 { df8 d8 r8 } |
  \tuplet 3/2 { r8 bf8 df8 } \tuplet 3/2 { d8 ef8 e8 } \tuplet 3/2 { f8 e8 f8 } \tuplet 3/2 { df8 d8 r8 } |
  \break
  \tuplet 3/2 { r8 bf8 df8 } \tuplet 3/2 { d8 ef8 e8 } \tuplet 3/2 { f8 e8 f8 } \tuplet 3/2 { e8 f8 g8 } |
  \tuplet 3/2 { af8 bf8 cf8 } \tuplet 3/2 { bf8 af8 f8 } \tuplet 3/2 { e8 ef8 df8 } \tuplet 3/2 { bf8 af8 f8 } |

  \sect "Solo"
  
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq

  \bar "||"

  \xPageBreak
  \textCodaBreak
  
  bf8 bf8 df8 df8 bf8 bf8 g8 f8 | bf8 bf8 df8 df8 bf8 bf8 g8 f8 |
  bf8 bf8 df8 df8 bf8 bf8 g8 f8 | bf8 bf8 df8 df8 bf8 bf8 g8 f8 |
  \break
  bf8 bf8 df8 df8 bf8 bf8 g8 f8 | bf8 bf8 df8 df8 bf8 bf8 g8 f8 |
  bf8 bf8 r4
  \set Staff.ottavationMarkups = #ottavation-ordinals
  \ottava 1 <bf' d g>2 | <bf d gs>4. <bf d a'>8~ <bf d a'>2 \ottava 0 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup "Additional solos 12-bar blues. After solos, D.C. al Coda"
