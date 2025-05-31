%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Stablemates"
  subtitle = \instrument
  poet = ""
  composer = "Benny Golson"
  copyright = \markup \small "© 1955 Ibbob Music, Inc."
}

refrainChords = \chordmode {
  s2
  
  e2:m7 a2:7 ef2:m7 af2:7 df1:maj7 c1:7.5+
  af1:m7 df1:7 gf1:maj7 g2:m7.5- c2:7.5+ f8*7:m7 
  bf8:7 r1 ef1:m7 af1:7.5+ df1:maj7 df1:maj7
  
  f1:m7 gf1:7 g1:7.5+ c1:7
  b1:7 bf1:7 a8*7:7 af8:7 r1
  
  e2:m7 a2:7 ef2:m7 af2:7 df1:maj7 c1:7.5+
  af1:m7 df1:7 gf1:maj7 g2:m7.5- c2:7.5+ f8*7:m7 
  bf8:7 r1 ef1:m7 af1:7.5+ df1:maj7 df1:maj7
}

refrainKey = df

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Swing [Miles Davis 1955]" 4 = 162

  \partial 2 \invisEighth d8 f8 gf8~ |
  \bar "||"

  \sectStart "A1"
  
  gf2. d8 f8 | r8 ef4. b'4 df8 af8~ | af2. b8 af8~ | af2. b8 af8~ | af2~ \tuplet 3/2 { af4 g4 af4 } |
  \break
  bf2 af4. df8~ | df2 \tuplet 3/2 { r4 bf4 b4 } | c4 f,8 e8~ e4 bf'8 af8~ | af1 | r2 bf4 gf8 f8~ |
  \break
  f2~^"(Latin)" \tuplet 3/2 { f4 d4 ef4 } | e2 c2 | ef1~ | ef2 r2 |
  
  \sect "B"
  
  af4.^"(Swing)" c8 r8 af8 r8 f8 | af2. af4 | ef'4. b8 r8 g8 r8 b8 | c2. af4 |
  \break
  b2~ b4. af8 | r2 r4 af4 | cs4. a8~ a4 cs8 c8 | r2 r8 d,8 f8 gf8~ |

  \sect "A2"

  gf2. d8 f8 | r8 ef4. b'4 df8 af8~ | af2. b8 af8~ | af2. b8 af8~ | af2~ \tuplet 3/2 { af4 g4 af4 } |
  \break
  bf2 af4. df8~ | df2 \tuplet 3/2 { r4 bf4 b4 } | c4 f,8 e8~ e4 bf'8 af8~ | af1 | r2 bf4 gf8 f8~ |
  \break
  f2~^"(Latin)" \tuplet 3/2 { f4 d4 ef4 } | e2 c2 | ef1~ | ef2 r2 |
  
  \bar "|."
}

refrainKicksOverTime = \relative f' {
  s2 s1*8 s8*7 df8 s1*11 s8*7 df8 s1*9 s8*7 df8
}


\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup{ "Solos swing only, chords on beat, no breaks." }
