%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Tin Tin Deo"
  subtitle = \instrument
  poet = ""
  composer = "Walter Gil Fuller and Luciano Pozo Gonzales"
  copyright = \markup \small { \now " " "© 1948 Consolidated Music Publishers" }
}

refrainChords = \chordmode {
  s2
  
  f2:m6 ef2:m6 df2:maj9 c2:7.9+.5+ f2:m6 d2:7.9+ g2:m7.5- gf2:13
  f2:m6 ef2:m6 df2:maj9 c2:7.9-.5+ f2:m9 bf2:9 ef2:9 d2:7.9+.5-
  
  c1:7.9+ c1:7.9+ f1:m6 f1:m6 c1:7.9+ c1:7.9+
  
  f1:6 f1:6
  
  f1:6 f1:6
  
  bf1:m9 bf4:m9 ef8*5:13.9-.5- af8*4:maj7 df8*5:9.11+ c2:m7 f2:7.9-
  bf1:m9 bf4:m9 ef2.:13.9-.5- af2:maj7 d2:m7.5- g2:7.9-.5+ d2:m7.5-
  
  c1:7.9+ c1:7.9+ f1:m6 f1:m6 c1:7.9+ c1:7.9+ f1:6 f1:6
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium Latin [Art Pepper 1957]" 4 = 130

  \partial 2 \tuplet 3/2 { r4 f4 af4 } |

  \bar ".|:"
  \repeat volta 2 {

  \sectNoBarNoBreak "A1,A2"
  
  \tuplet 3/2 { c4 c4 bf4 } \tuplet 3/2 { c4 c4 bf4 } | c2 r8 bf8 c8 bf8 |
  \tuplet 3/2 { f4 f4 af4 } f2~ | f2 \tuplet 3/2 { r4 f4 af4 } |
  \break
  \tuplet 3/2 { c4 c4 bf4 } \tuplet 3/2 { c4 c4 bf4 } | c2 bf8 c4 bf8 |
  \tuplet 3/2 { f4 f4 af4 } f2~ | f2 \tuplet 3/2 { f4 af4 f4 } |

  \sect "B1,B2"
  
  ef8 ef4.~ ef2 | r2 \tuplet 3/2 { ef4 c4 ef4 } |
  f8 f4.~ f2 | r2 \tuplet 3/2 { f4 af4 f4 } |
  \break
  ef8 ef4.~ ef2 | r2 \tuplet 3/2 { ef4 c4 ef4 } |
  \alternative { \volta 1 {
  f8 f4.~ f2 | r2 \tuplet 3/2 { r4 f4 af4 } |
  } \volta 2 {
  f8 f4.~ f2 | r2 r4 f4 |
  } } }
  
  \sect "C"
  \tempo "Swing"
  
  c'4. bf8 r8 ef4 df8 | c16 df16 c16 bf16 c4 r8 bf8 af8 g8~ | g8 bf8 af8 g8~ g8 f8 g4 | r2 r4 f4 |
  \break
  c'4. bf8 r8 ef4 df8 | c16 df16 c16 bf16 c4 \tuplet 3/2 { r4 bf4 af4 } |
  \tuplet 3/2 { g4 ef4 f4 } \tuplet 3/2 { g4 ef4 f4 } | g4 r4 \tuplet 3/2 { f4 c4 f4 } |

  \sect "B3"
  \tempo "Latin"
  
  ef8 ef4.~ ef2 | r2 \tuplet 3/2 { ef4 c4 ef4 } |
  f8 f4.~ f2 | r2 \tuplet 3/2 { f4 af4 f4 } |
  \break
  ef8 ef4.~ ef2 | r2 \tuplet 3/2 { ef4 c4 ef4 } |
  f8 f4.~ f2~ | f2. r4 |
  

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup "On solos, chords are aligned on beats 1 and 3."
