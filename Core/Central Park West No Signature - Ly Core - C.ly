%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "Central Park West"
  subtitle = \instrument
  poet = ""
  composer = "John Coltrane"
  copyright = \markup \small { \now " " "© 1964 Jowcol Music" }
}

refrainChords = \chordmode {
  cs4:m7 fs4:7
  
  b4:maj7 \chordSlash 1 e4:m7 a4:7 d2:maj7 bf4:m7 ef4:7 af2:maj7 g4:m7 c4:7
  f2:maj7 cs4:m7 fs4:7 b4:maj7 \chordSlash 1 e4:m7 a4:7 d2:maj7 cs4:m7 fs4:7
  b1:maj7 cs1:m7/b b1:maj7 cs2:m7/b cs4:m7 fs4:7

  b4:maj7 \chordSlash 1 e4:m7 a4:7 d2:maj7 bf4:m7 ef4:7 af2:maj7 g4:m7 c4:7
  f2:maj7 cs4:m7 fs4:7 b4:maj7 \chordSlash 1 e4:m7 a4:7 d2:maj7 cs4:m7 fs4:7
  b1:maj7 cs1:m7/b b1:maj7 cs2:m7/b cs4:m7 fs4:7

  b2:maj7 e4:m7 a4:7 d2:maj7 bf4:m7 ef4:7 af2:maj7 g4:m7 c4:7
  f2:maj7 cs4:m7 fs4:7 b2:maj7 e4:m7 a4:7 d2:maj7 cs4:m7 fs4:7
  b1:maj7 cs1:m7/b b1:maj7 cs2:m7/b cs4:m7 fs4:7

  b1:maj7 cs1:m7/b b1:maj7 cs2:m7/b b1:maj7 cs1:m7/b b1:maj7 cs2:m7/b
  b1:maj7
}

refrainKey = c

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
  \clef \whatClef
  \tempo "Medium Ballad [John Coltrane 1964]" 4 = 72

  \partial 2 ds4_"(soprano saxophone)" cs4 |

  \sectNoBreak "Refrain 1"

  fs1~ | fs2 af4 bf4 | c4 c4 c4 c4 | a2 ds,4 cs4 | fs1~ | fs2 ds4. cs8 \textToCodaLastTime |
  ds2 r4 r16 gs16 fs16 ds16 | cs2.. b16 cs16 |
  ds2 r4 r16 as'16 fs16 ds16 | cs2 ds4 cs4 |

  \sect "Refrain 2"

  fs4. fs8 d4 cs4 | e2 af4 bf4 | c4~ \tuplet 3/2 { c8 e,8 c'8 } c8 e,8 \tuplet 3/2 { e8 c'8 a8~ } |
  a2 ds,4 \glissando fs4 \glissando | as,4. b16 ds16 fs4-. ds8 cs8 | a'4. fs16 a16 b,4 as4 |
  as2 r4 \tuplet 3/2 { ds8 as8 ds8 } | \tuplet 3/2 { as8 gs4~ } gs2~ gs8 ds'8 |
  as2_"(sample fill)" r4 r8 ds8 | cs2
  \override Parentheses.font-size = #5
  \startParenthesis \parenthesize
  ds4
  \endParenthesis \parenthesize cs4 |
  
  \bar "||"
  
  \xPageBreak

  \sectNoBar "Solos"
  
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |

  \bar "|."
  
  \textCodaBreak
  
  ds4-._"(sample fill)" r4 r4 \tuplet 3/2 { r8 ds8 fs8 } | cs2.~ \tuplet 3/2 { cs8 cs8 fs8 } |
  fs8 ds8~ ds2 \tuplet 3/2 { r8 ds8 fs8 } | \tuplet 3/2 { fs8 cs4~ } cs4 r4 \tuplet 3/2 { r8 cs8 fs8 } |
  ds2.~ \tuplet 3/2 { ds8 ds8 fs8 } | cs2 r4 \tuplet 3/2 { r8 cs8 fs8 } | ds2 r4 cs8 a8 | gs2.. fs'8 |
  ds1\fermata

  \bar "|."
}

refrainKicksOverTime = \relative f' {
  s2 s1*6 r4 r8 b8~ b2 r4 r8 b8~ b2 r4 r8 b8~ b2 r4 r8 b8 cs4 fs4
  s1*6 r4 r8 b8~ b2 r4 r8 b8~ b2 r4 r8 b8~ b2 r4 r8 b8 cs4 fs4
  s1*6 r4 r8 b8~ b2 r4 r8 b8~ b2 r4 r8 b8~ b2 r4 r8 b8 cs4 fs4
  r4 r8 b8~ b2 r4 r8 b8~ b2 r4 r8 b8~ b2 r4 r8 b8~ b2
  r4 r8 b8~ b2 r4 r8 b8~ b2 r4 r8 b8~ b2 r4 r8 b8~ b2
}



\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
