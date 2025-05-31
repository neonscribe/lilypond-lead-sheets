%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Jordu"
  subtitle = \instrument
  poet = ""
  composer = "Duke Jordan"
  copyright = \markup \small "© 1959 You Look Good Music Publishing"
}

refrainChords = \chordmode {
  r1
  
  s8 d4.:7 g4.:7 c8:m r1 f2:7 bf4.:7 ef8:maj7 r1
  s8 d4.:7 g4.:7 c8*9:m
  
  af1:7 g8:7 r8*7
  
  af1:7 af2:7 g2:7
  
  g2:7 c2:7 f2:7 bf2:7 ef2:7 af2:7 df1:7
  f2:7 bf2:7 ef2:7 af2:7 df2:7 gf4.:7 g8:7 r1
  
  s8 d4.:7 g4.:7 c8:m r1 f2:7 bf4.:7 ef8:maj7 r1
  s8 d4.:7 g4.:7 c8*9:m af1:7 g1:7

  d2:7 g2:7 c1:m f2:7 bf2:7 ef1:maj7
  d2:7 g2:7 c1:m f1:7 g1:7

  g2:7 c2:7 f2:7 bf2:7 ef2:7 af2:7 df1:7
  f2:7 bf2:7 ef2:7 af2:7 df2:7 gf2:7 g1:7

  d2:7 g2:7 c1:m f2:7 bf2:7 ef1:maj7
  d2:7 g2:7 c1:m f1:7 g1:7

  af2:7 g2:7 gf2:7 b2:7 bf2:7 ef2:7 af2:7 g2:7
  af8*7:7 g8:7 r8*7 c8*9:m7+
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Swing" 4 = 140

  r8 g,8 c8 d8 ef8 f8 g8 ef8 |

  \xTextMark \markup{ \bold \box "A1,A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  fs2 f4. ef8 | r8 g,8 c8 d8 ef8 f8 g8 bf8 | a2 af4. g8 | r8 g,8 c8 d8 ef8 f8 g8 ef8 |
  \break
  fs2 f4. ef8 | r2 \tuplet 3/2 { ef16 f16 ef16 } c8 ef8 c8~ |
  \alternative { \volta 1 {
  c1 | r8 g8 c8 d8 ef8 f8 g8 ef8 |
  } \volta 2 {
  c1\repeatTie | r2 r8 g''4 g8~ |
  } } }
  \sect "B"
  
  g4 \tuplet 3/2 { b,16 c16 b16 } a8 bf4 g'8 e8 | 
  f4 \tuplet 3/2 { a,16 bf16 a16 } g8 af4 f'8 d8 |
  ef4 \tuplet 3/2 { g,16 af16 g16 } f8 gf4 e4 | f2 r8 f'4 f8~ |
  \break
  f4 \tuplet 3/2 { a,16 bf16 a16 } g8 af4 f'8 d8 |
  ef4 \tuplet 3/2 { g,16 af16 g16 } f8 gf4 ef'8 c8 |
  df4 \tuplet 3/2 { f,16 gf16 f16 } ef8 e4. ef8 |
  r8 g,8 c8 d8 ef8 f8 g8 ef8 |
  
  \sect "A3"
  
  fs2 f4. ef8 | r8 g,8 c8 d8 ef8 f8 g8 bf8 | a2 af4. g8 | r8 g,8 c8 d8 ef8 f8 g8 ef8 |
  \break
  fs2 f4. ef8 | r2 \tuplet 3/2 { ef16 f16 ef16 } c8 ef8 c8~ \textToCodaLastTime |
  c1 | r1 |
  \bar "||"
  
  \xPageBreak

  \xTextMark \markup{ \bold \box "Solos" }
  
  \bar ".|:-|."
  \repeat volta 2 {
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  }
  \break

  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |

  \bar "||-||"
  \break

  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |

  \bar "||-|."

  \textCodaBreak
  
  c1\repeatTie |
  r2 \tuplet 3/2 { ef16 f16 ef16 } c8 ef8 c8~ | c1 |
  \break
  r2 \tuplet 3/2 { ef16 f16 ef16 } c8 ef8 c8~ | c1 |
  r4 r8 g'8 \tuplet 3/2 { bf16 c16 bf16 } g8 bf8 b8~ | b1 |

}

refrainKicksOverTime = \relative f' {
  s1 
  r8 ef4. ef4. ef8 s1 s1 s1
  r8 ef4. ef4. ef8~ ef4 ef4 ef4 ef4
  
  s1 s1
  
  s1 s1
  
  s1 s1 s1 s1
  s1 s1 s1 s1

  r8 ef4. ef4. ef8 s1 s1 s1
  r8 ef4. ef4. ef8~ ef4 ef4 ef4 ef4
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
