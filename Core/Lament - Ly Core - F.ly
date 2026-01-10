%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "Lament"
  subtitle = \instrument
  poet = ""
  composer = "J.J. Johnson"
  copyright = \markup \small { \now " " "© 1954 Screen Gems Inc." }
}

refrainChords = \chordmode {
  f1:m9 ef2:m7 af2:7 df1:maj7 g2:m7.5- c2:7
  f1:maj7 d1:m9 g1:m7 e2:m7.5-/a a2:7.9+
  
  d2:m d4:m7/c bf4:maj7 a2:m7 d2:m7 g1:m7 c1:7.9-
  f2:m7 bf2:7 ef2:m7 af2:7 g1:m7.5- c1:7.9-

  f1:m9 ef2:m7 af2:7 df1:maj7 g2:m7.5- c2:7
  f1:maj7 d1:m9 g1:m7 e2:m7.5-/a a2:7.9+
  
  d2:m d4:m7/c bf4:maj7 a2:m7 d2:m7 b1:m7.5- bf2:m7 ef2:7
  f2:maj7 d2:m7 g2:m7 c2:7 f2:6
  \chordOpenParen{d2:m7 }
  g2:m7.5-
  \chordCloseParen{ c2:7.9- }
}

refrainKey = f

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
  \tempo "Ballad [J.J. Johnson - Kai Winding 1954]" 4 = 70

  \sectStart "A1"
  
  r4 r8 c'8 c4~ \tuplet 3/2 { c8 af8 c8 } | f8 f4.~ f4~ \tuplet 3/2 { f8 ef8 df8 } |
  c2. \tuplet 3/2 { r8 ef8 df8 } | \tuplet 3/2 { c8 df8 bf8~ } bf2. |
  \break
  r4 r8 a8 a4~ \tuplet 3/2 { a8 bf8 c8 } | c2. a4 | g1~ | g1 |
  
  \sect "B"
  
  r4 f8 g8 a4. bf8 | c4 d4 e4 f4 | g2. d4 | e1 |
  \break
  r4 f4 f4. f8 | f4~ \tuplet 3/2 { f8 df8 bf8 } ef2 | r4 c4 c4. c8 | c8 df4-. ef8 ef8 df4. |

  \sect "A2"

  r4 r8 c8 c4~ \tuplet 3/2 { c8 af8 c8 } | f8 f4.~ f4~ \tuplet 3/2 { f8 ef8 df8 } |
  c2. \tuplet 3/2 { r8 ef8 df8 } | \tuplet 3/2 { c8 df8 bf8~ } bf2. |
  \break
  r4 r8 a8 a4~ \tuplet 3/2 { a8 bf8 c8 } | c2. a4 | g1~ | g1 |
  
  \sect "C"
  
  r4 f8 g8 a4. bf8 | c4 d4 e4 f4 | a2. g8 f8 | ef8 df8 r8 af16 f16 c'8 bf4. |
  \break
  r4 r8 a8 a4~ \tuplet 3/2 { a8 c8 f8 } | f4 g,2 a4 | f1~ | f1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
