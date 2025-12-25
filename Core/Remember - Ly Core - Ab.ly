%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Remember (4/4)"
  subtitle = \instrument
  poet = ""
  composer = "Irving Berlin (arranged by Hank Mobley)"
  copyright = \markup \small { \now " " "© 1925 Irving Berlin, Inc." }
}

refrainChords = \chordmode {
  s4
  
  df1:maj7 c1:7 b1:7 bf1:7
  bf1:m7 ef1:7 af1:maj7 ef2:m7 af2:7

  df1:maj7 c1:7 b1:7 bf1:7
  bf1:m7 ef1:7 af1:maj7 ef2:m7 af2:7

  df1:maj7 df1:maj7 df1:m7 gf1:7
  af1:maj7 af1:maj7 g1:m7.5- c1:7.9-

  df1:maj7 c1:7 b1:7 bf1:7
  bf1:m7 ef1:7 af1:maj7
  \chordOpenParen{ ef2:m7 }
  \chordCloseParen{ af2:7 }
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
  \tempo "Medium-Up [Hank Mobley 1960]" 4 = 168
  
  \partial 4 \invisEighth af8 |
  \bar "||"

  \sectStart "A1"
  
  f8 af8 r4 r4 f8 c'8 | r2 r8 bf4. | af4 r4 af8 f8 af8 c8 | r2 r8 af4. |
  \break
  f4 r4 r4 r8 af8 | e4 r4 r4 r8 ef8 | c'8 ef8 r4 r2 | r2 r4 r8 af,8 |
  
  \sect "A2"
  
  f2 af4 f8 c'8 | r2 r8 bf4. | af4 r4 af8 f8 af8 c8 | r2 r4 r8 af8 |
  \break
  f2.~ f8 af8 | e4 r4 r4 r8 ef8 | c'8 ef8~ ef4~ ef4 r4 | r2 r4 df4 |
  
  \sect "B"
  
  f2 af4 f8 af8~ | af2 r4 df,4 | f4 r4 ef4 af,8 df8 | r4 ef16 e16 ef16 df16 af8 e8 ef8 df8 |
  \break
  c4 r8 c'8 ef4 c8 ef8~ | ef2. c8 bf8 | r2 bf8 af8 bf8 c8 | r2 r4 r8 af8 |

  \sect "A3"
  
  f8 af8 r4 r4 f8 c'8 | r2 r8 bf4. | af4 r4 af8 f8 af8 c8 | r2 r8 af4. |
  \break
  f4 r4 r4 r8 af8 | e4 r4 r4 r8 ef8 | c'8 af8 r4 r2 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
