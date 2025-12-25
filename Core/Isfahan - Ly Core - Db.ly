%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Isfahan"
  subtitle = \instrument
  poet = ""
  composer = "Duke Ellington/Billy Strayhorn"
  copyright = \markup \small { \now " " "© 1964 Famous Music LLC" }
}

refrainHLChords = \chordmode {
  s2
  
  df1:maj7 bf2:maj7 bf2:7.5+ ef1:7 ef1:7
  a1:maj7 af2:sus7 af2:7.9- df1:maj7 df1:maj7
  g2:m7.5- c2:7.9- f1:m6 a2:m7.5- d2:7.9- g1:m6
  g1:m7.5- c1:7.9- f2:maj7 e2:maj7 ef2:maj7 d2:maj7

  df1:maj7 bf2:maj7 bf2:7.5+ ef1:7 ef1:7
  a1:maj7 af2:sus7 af2:7.9-  df1:7.9- df1:7.9-
  
  gf1:maj7 c1:7.5+ f8*7:7.5- bf8*9:7
  ef1:7 af2:7.9- af2:7.5+ df1:6 df1:6
}

refrainNRTwoChords = \chordmode {
  s2
  
  df1:maj7 bf2:maj7 bf2:7.5+ ef1:9 ef1:9
  a1:maj7 df2:m6/af af2:13.9- df1:maj9 df1:maj9
  g2:m7.5- c2:7.9- f1:m6 a2:m7.5- d2:7.9- g1:m6
  g1:m9.5- c1:7.5+.9- f2:maj7 e2:maj7 ef2:maj7 d2:maj7

  df1:maj7 bf2:maj7 bf2:7.5+ ef1:9 ef1:9
  a1:maj7 df2:m6/af af2:13.9- df1:7.9-.11+ df1:7.9-.11+
  
  gf1:maj7 c1:7.5+.9- f8*7:7.9+.11+ bf8:7 r1
  ef1:13 af2:13.9- af2:7.5+ df1:maj13 
  \chordOpenParen{ f4:maj7 }
  e4:maj7 ef4:maj7
  \chordCloseParen{ d4:maj7 }
}

refrainChords = \refrainNRTwoChords

refrainKey = df

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
  \tempo "Medium [Joe Henderson 1992]" 4 = 114
  
  \partial 2 \invisEighth c'8 \tuplet 3/2 { af8 f8 df8 } |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  c2. df4 | a'2 bf2 | \tuplet 3/2 { bf8 c8 f,8~ } f2. | r2 r8 af8 \tuplet 3/2 { f8 df8 a8 } |
  \break
  gs2. a4 | e'2 f8 gf8~ \tuplet 3/2 { gf8 g8 af8 } | ef1 | r4 df4 f4 af8 a8 |

  \sect "B"
  
  bf4~ \tuplet 3/2 { bf8 c8 b8 } bf8 g8~ \tuplet 3/2 { g8 bf8 a8 } | af1 |
  c4~ \tuplet 3/2 { c8 d8 df8 } c8 a8~ \tuplet 3/2 { a8 c8 cf8 } | bf1 |
  \break
  df4. ef8 df8 bf8~ \tuplet 3/2 { bf8 b8 c8 } | df2 ef2 | c1 | r2 r8 c8 \tuplet 3/2 { af8 f8 df8 } |
  
  \sect "A2"
  
  c2. df4 | a'2 bf2 | \tuplet 3/2 { bf8 c8 f,8~ } f2. | r2 r8 af8 \tuplet 3/2 { f8 df8 a8 } |
  \break
  gs2. a4 | e'2 f4 gf4 | g1 | r2 r4 af4 |

  \sect "C"

  a4 bf4 a4 bf4 | ef2 df4. c8 | b2 af4. f8 | r2 r8 c'8 \tuplet 3/2 { af8 f8 df8 } |
  \break
  c2. df4 | a'2 bf2 | bf1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
