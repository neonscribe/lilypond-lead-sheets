%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Ceora"
  subtitle = \instrument
  poet = ""
  composer = "Lee Morgan"
  copyright = \markup \small { \now " " "© 1965 Conrad Music" }
}

bossaRhythm = ##t

refrainChords = \chordmode {
  af1:maj7 bf2:m7 ef2:7.9- af1:maj7 ef2:m7 af2:13
  df1:maj7 d2:m9 g2:13 af1:maj7 f4:7.9+.5+ r2.
  
  bf1:m9 ef1:9 c1:m9 f1:9
  d1:m9 g1:9 c2:m7 f2:7.5+ bf2:m7 ef2:7.9-

  af1:maj7 bf2:m7 ef2:7.9- af1:maj7 ef2:m7 af2:13
  df1:maj7 d2:m9 g2:13 af1:maj7 f4:7.9+.5+ r2.
  
  bf1:m9 ef1:9 c1:m7.5- f1:7.9+.5+
  bf1:m7 ef2:sus9 ef2:9 af1:maj7 bf2:m7 ef2:7.9-
  
  af1:maj7 bf2:m7 ef2:7.9- af1:maj7 ef2:m7 af2:13
  df1:maj7 d2:m9 g2:13 c1:m7 f1:7.5+.9+

  bf1:m7 ef1:9 c1:m9 f1:9
  d1:m9 g1:9 c2:m7 f2:7.5+ bf2:m7 ef2:7.9-

  af1:maj7 bf2:m7 ef2:7.9- af1:maj7 ef2:m7 af2:13
  df1:maj7 d2:m9 g2:13 c1:m7 f1:7.5+.9+

  bf1:m7 ef1:9 c1:m7.5- f1:7.9+
  bf1:m7 ef2:sus9 ef2:9 af1:maj7 bf2:m7 ef2:7.9-
  
  af1:maj7 bf2:m7 ef2:7.9- af1:maj7

}

refrainKey = af

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
  \tempo "Medium Bossa Nova [Lee Morgan 1965]" 4 = 126

  \sectStart "A1"
  
  r8 ef8 d'8 ef8 r8 ef,8 r8 ef'16 d16 | df2. r4 | r8 ef,8 b'8 c8 r8 ef,8 r8 \scoop bf'8~ | bf2. r4 |
  \break
  r8 af,8 g'8 af8 r8 af,8 r8 af'8 | g2. r8 g16 af16 | ef2 r4 r8 c16 ef16 |
  \trillDoubleFlat af4.\startTrillSpan gf8\stopTrillSpan \tuplet 3/2 { b16 c16 b16 } a8 af8 gf8 |
  
  \sect "B"
  
  f8 af8 r8 c8 r8 df8 r8 ef16 c16 | bf2 r4 bf16 af16 g16 f16 |
  g8 bf8 r8 d8 r8 ef8 r8 f16 df16 | c2 r4 c16 d16 bf16 c16 |
  \break
  a8 c8 r8 e8 r8 f8 e16 d16 c16 a16 | d4. e8 r8 d8 \tuplet 3/2 { c16 d16 c16 } b8 |
  c4. f8 \tuplet 3/2 { df16 ef16 df16 } f,8 a8 c8 | bf4. df8 r8 e16 gf16 ef8 df8 |
  
  \sect "A2"
  
  \scoop c8-. ef,8 d'8 ef8 r8 ef,8 r8 ef'16 d16 | df2. r4 | r8 ef,8 b'8 c8 r8 ef,8 r8 \scoop bf'8~ | bf2. r4 |
  \break
  r8 af,8 g'8 af8 r8 af,8 r8 af'8 | g2. r8 g16 af16 | ef2 r4 r8 c16 ef16 |
  \trillDoubleFlat af4.\startTrillSpan gf8\stopTrillSpan \tuplet 3/2 { b16 c16 b16 } a8 af8 gf8 |

  \sect "C"
  
  f8 af8 r8 c8 r8 df8 r8 ef16 f16 | bf,2 r4 bf16 af16 g16 f16 |
  gf2 \tuplet 3/2 { gf16 af16 gf16 } f8 e8 f8 | \scoop f'4. \scoop c8 \tuplet 3/2 { r8 f,8 af8 } df8 \scoop c8 |
  \break
  af2 r8 f8-. af16 bf16 af8~ | af2 r8 af16 g16 bf16 af16 ef16 f16 \textToCodaLastTime |
  g2 r4 c,16 ef16 g16 gf16 | f4. e8 r8 e8-. \tuplet 3/2 { fs16 g16 fs16 } ef8 |

  \bar "||"
  
  \xPageBreak
  
  \sectNoBarNoBreak "Solos"
  
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \bar "||" \break

  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \bar "||" \break
  \break

  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \bar "||" \break
  \break

  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq \daCapoAfterSolos | 

  \textCodaBreak

  \bar ".|:-||"
  \repeat volta 3 {
  g2 r4 c,16 ef16 g16 gf16 | f4. e8 r8 e8-. \tuplet 3/2 { fs16 g16 fs16 } e8 \xTextEndMark "play 3x" |
  }
  <ef g>1\fermata |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
