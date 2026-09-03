%% -*- Mode: LilyPond -*-

songID = "2026-09-02T22:02:29.397721Z"

\include "../Include/lead-sheets.ily"

headerTitle = "East St. Louis Toodle-Oo"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Duke Ellington and Bub Miley"
headerCopyright = "© 1927 Mills Music, Inc."

leadingEighth = ##t

refrainChords = \chordmode {
  s4.
  
  c2:m c2:m/ef f2:m6/d f2:m6 c2:m/ef c2:m/g f2:m6 f2:m6/af
  c2:m/g c2:m/ef f2:m6 g2:7.9-/d c2:m af2:7 g1:7.9-

  c2:m c2:m/ef f2:m6/d f2:m6 c2:m/ef c2:m/g f2:m6 f2:m6/af
  c2:m/g c2:m/ef f2:m6 g2:7.9-/d c2:m b2:dim7 bf2:m7 ef2:7

  af1:6 bf2:m7 ef2:7 af1:6 af:m6
  ef2:6 g2:m7/d c1:7 b8:7 bf2:7 a2:7 af2:7 g4.:7

  c2:m c2:m/ef f2:m6/d f2:m6 c2:m/ef c2:m/g f2:m6 f2:m6/af
  c2:m/g c2:m/ef f2:m6 g2:7.9-/d c1:m

  \chordInsideParens{ g1:7.9- }
}

refrainKey = c

whatKey = #(or whatKey refrainKey)
isMinor = ##t

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempoFour "Medium Fast [Duke Ellington 1927]" 170

  \partial 4. c8 ef8 g8~ |

  \sectNoBreak "A"
  
  g2~ g4. c8 | r2 r8 c,8 ef8 g8~ | g8 gf4.~ gf4 ef8 c8 | r2 \tuplet 3/2 { r4 ef'4 ef4 } |
  \tuplet 3/2 { ef4 c4 c4 } c8 g8 af8 f8 | 
  g8 af8 g8 f8 \tuplet 3/2 { ef8 d8 ef8 } \tuplet 3/2 { r8 ef8 d8 } |
  \tuplet 3/2 { ef8 d8 c8 } r4 r2 | r2 r4 ef'8 f8 |
  
  \sect "B"
  
  ef4 c4 g4 c,8 ef8 | r2 r4 ef'8 f8 | ef4 c4 g4 c,8 ef8 | r2 \tuplet 3/2 { r4 ef'4 ef4 } |
  \tuplet 3/2 { ef4 c4 c4 } c8 g8 af8 f8 | 
  g8 af8 g8 f8 \tuplet 3/2 { ef8 d8 f8 } \tuplet 3/2 { r8 ef8 d8 } |
  \tuplet 3/2 { ef8 d8 c8 } r4 r2 | r4 ef'8 e8 f8 af8 ef4 |

  \sect "C"
  
  b4 bf8 af8~ af4 r4 | r4 ef'8 e8 f8 af8 ef4 | b4 bf8 af8~ af4 r4 | r4 ef'8 e8 f8 af8 ef4 |
  bf8 g8 bf8 g8 bf8 g8 r4 | d'8 cs8 d8 cs8 d8 c8 r4 |
  b8 bf8 r8 bf8 bf8 a8 r8 a8 | a8 af8 r8 af8 af8 g8 r8 gf8 |

  \sect "D"
  
  g2~ g4. c8 | r2 r8 c,8 ef8 g8~ | g8 gf4.~ gf4 ef8 c8 | r2 \tuplet 3/2 { r4 ef'4 ef4 } |
  \tuplet 3/2 { ef4 c4 c4 } c8 g8 af8 f8 | 
  g8 af8 g8 f8 \tuplet 3/2 { ef8 d8 ef8 } \tuplet 3/2 { r8 ef8 d8 } |
  \tuplet 3/2 { ef8 d8 c8 } r4 r2 | r1 |

  \bar "|."
}

\include "../Include/refrainonly.ily"
