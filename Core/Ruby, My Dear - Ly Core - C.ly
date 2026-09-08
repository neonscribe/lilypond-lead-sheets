%% -*- Mode: LilyPond -*-

songID = "2026-09-07T18:32:20.878585Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Ruby, My Dear"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Thelonious Monk"
headerCopyright = "© 1945 Music Sales Corporation"

%% chordSize = #-1

refrainChords = \chordmode {
  f2:m9 bf2:7.9-
  ef4.:maj7 f8:m7 fs8:m7 g8:m7 af8:6 a8:6
  g2:m7 c2:7.9-
  f4:maj7 g4:m7 af4:m7 a4:m7
  bf2:m7 ef2:7.9-
  af4.:maj7 bf16:m7 b16:m7 c2:m7
  bf2:m7 a2:1.3.5.9

  b2:m7 bf4:7.5- bf4:7.5+
  
  b2:m7 bf2:7.5-

  a1:maj7 b2:m7 e2:7.9- a1:6.9 bf4:6 b2.:dim7
  c4:m c4:m7+ c2:m7 c2:1.3-.5.7.8- d2:m7 ef1:m7 af2:9.5- ef4 a4:9

  f2:m9 bf2:7.9-
  ef4.:maj7 f8:m7 fs8:m7 g8:m7 af8:6 a8:6
  g2:m7 c2:7.9-
  f4:maj7 g4:m7 af4:m7 a4:m7
  bf2:m7 ef2:7.9-
  af4.:maj7 bf16:m7 b16:m7 c2:m7
  bf2:m7 e2:9.11
  gf4:6.9 \chordSlash 1 b4:7.9- bf4:7.9-

  gf4.:6.9 b8:7.9- bf2:7.9- a1:7.5- af1:7.5- df1:6.9
}

refrainKey = c

whatKey = #(or whatKey refrainKey)


refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Ballad [Monk and Trane 1957]" 66

  \sectNoBar "A1,A2"
  
  \bar ".|:"
  \repeat volta 2 {

  r4 g'4~ g8 f4 b,8 | bf2 r2 | r4 af'4~ af8 g8 df4 | c2. r4 |
  c'2 bf4. e,8 | ef2 r8 f8 c8 d8 | ef2 r8 fs8 cs8 d8 |
  \alternative { \volta 1 {
  e2 r4 fs4 |
  } \volta 2 {
  e2. r4 |
  } } }
  \sect "B"
  
  e2 fs4 cs4 | b2 f4 cs'4 | fs,4 fs2 gs4 | g4 g2. |
  c2. d8 c8 | g2 r4 a4 | ef'2 f4 ef4 | bf8 f'4. r4 fs4 |

  \sectPageBreak "A3"

  r4 g4~ g8 f4 b,8 | bf2 r2 | r4 af'4~ af8 g8 df4 | c2. r4 |
  c'2 bf4. e,8 | ef2 r8 f8 c8 d8 |
  ef2 r8 fs8 \tuplet 3/2 { e8 cs8 a8 } \textToCodaLastTime | af1 \daCapoAfterSolos |

  \bar "||-||"

  \textCodaBreak
  
  af2 r8 e'8 \tuplet 3/2 { d8 b8 af8 } | a1^"(whole tone fill)" | af4. gf8 c8 d8 f8 c8 | ef1\fermata |

  \bar "|."
}

refrainKicksOverTime = \relative f' {
  s1 b4. b8 b8 b8 b8 b8 s1 s1
  s1 b4. b16 b16 b2 s1
  
  s1
  
  s1
  
  s1 s1 s1 s1 s1 s1 s1 s1

  s1 b4. b8 b8 b8 b8 b8 s1 s1
  s1 b4. b16 b16 b2 s1 s1
  
  b4. b8 b2 s1 s1 s1
}

\include "../Include/refrainonly.ily"
