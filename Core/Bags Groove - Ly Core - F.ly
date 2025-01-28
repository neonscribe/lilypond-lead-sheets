%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Bags' Groove"
  subtitle = \instrument
  poet = ""
  composer = "Milt Jackson"
  copyright = "© 1953 Reecie Music"
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  s4
  
  f1:7 bf2:7 b2:dim7 f1:7 f1:7
  bf1:7 bf2:7 b2:dim7 f1:7 f2:7 d2:7 
  g1:m7 c1:7 f2:7
  \chordOpenParen{ d2:7 }
  g2:7
  \chordCloseParen{ c2:7 }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Miles Davis 1955]" 4 = 144

  \partial 4 f4-^ |

  \bar ".|:"
  \repeat volta 2 {
  c'2. \tuplet 3/2 { bf16 c16 bf16 } af8 |
  bf4 \tuplet 3/2 { af16 bf16 af16 } f8 af4 \tuplet 3/2 { f16 bf16 af16 } ef8 |
  f4. ef8~ ef2~ | ef2. f4-^ | 
  \break
  c'2. \tuplet 3/2 { bf16 c16 bf16 } af8 |
  bf4 \tuplet 3/2 { af16 bf16 af16 } f8 af4 \tuplet 3/2 { f16 bf16 af16 } ef8 |
  f4. ef8~ ef2~ | ef2. f4-^ | 
  \break
  c'2. \tuplet 3/2 { bf16 c16 bf16 } af8 |
  bf4 \tuplet 3/2 { af16 bf16 af16 } f8 af4 \tuplet 3/2 { f16 bf16 af16 } ef8 |
  f4. ef8~ ef2~ | ef2. 
  \override Parentheses.font-size = #5
  \parenthesize f4-^ | 
  }
}

refrainBass = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef bass

  \partial 4 r4 |
  f,2 c2 | bf2 b2 | c2 bf2 | a2 f'4 cf4 | bf2 f2 | bf2 b2 | c2 bf2 | a2 d4 fs4 |
  g2 f2 | e2 c2 | f2 d2 | g2 r8 c,8 e4 |
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-with-bass.ily"

\markup "Play head twice before and twice after solos. Bass walks in four on solos."
