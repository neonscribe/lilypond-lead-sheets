%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

#(set-global-staff-size 18)

\header {
  title = "Milestones (1947)"
  subtitle = \instrument
  poet = ""
  composer = "John Lewis (credited to Miles Davis)"
  copyright = \markup \small { \now " " "© 1948 Screen Gems Inc." }
}

refrainChords = \chordmode {
  f1:maj7 bf2:m7 ef2:7 af1:maj7 df2:m7 gf2:7
  c1:m7 f1:7 bf1:maj7 g1:7
  
  c1:m7 f1:7 bf2:maj7 ef2:7 af2:m7 df2:7
  c2:m7 df4:m7 gf4:7 cf2:m7 ff2:7 c2:m7 f2:7 bf2:maj7 cf4:m7 ff4:7

  c1:m7 f1:7 bf2:maj7 ef2:7 af2:m7 df2:7
  c2:m7 df4:m7 gf4:7 cf2:m7 ff2:7 c2:m7 f2:7 bf2:maj7 cf4:m7 ff4:7

  a1:maj7 a2:m7 d2:7 g2:maj7 a2:m7 b2:m7 e2:7
  a1:m7 d1:7 bf2:maj7 ef2:7 cf2:m7 ff2:7

  c1:m7 f1:7 bf2:maj7 ef2:7 af2:m7 df2:7
  c2:m7 df4:m7 gf4:7 cf2:m7 ff2:7 c2:m7 f2:7 bf2:maj7
  \chordOpenParen{ cf4:m7 }
  \chordCloseParen{ ff4:7 }
}

refrainKey = bf

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
  \tempo "Medium Swing [Miles Davis All Stars 1947]" 4 = 160

  \sectStart "Intro"
  
  r8 c8 d8 e8 g8 e8 f8 g8 | af8 c4 bf8~ bf2 | r8 ef,8 f8 g8 bf8 g8 af8 bf8 | cf8 ef4 df8~ df2 |
  f8 ef8 d8 c8 bf4 g8 gf8~ | gf2 r2 | f4 d8 ef8 f4 g4 | bf8 af8 g8 f8 ef4 df4 |

  \sect "A1"
  
  r8 d8 \tuplet 3/2 { ef8 g8 bf8 } f'8 ef4 gf,8~ | gf2 r4 r8 af8 |
  f8 g8 d8 ef8 f8 g8 \tuplet 3/2 { af8 a8 bf8 } | cf8 d4 bf8 \tuplet 3/2 { cf8 bf8 g8 } af4 |
  
  r8 f'8 \tuplet 3/2 { ef8 bf8 g8 } gf'8 ff8 gf8 ff8 | d4 \tuplet 3/2 { b8 gf8 d8 } df'8 bf4. |
  r8 d,8 \tuplet 3/2 { ef8 g8 bf8 } f'8 ef4 d8~ | d2 r2 |
  
  \sect "A2"

  r8 d,8 \tuplet 3/2 { ef8 g8 bf8 } f'8 ef4 gf,8~ | gf2 r4 r8 af8 |
  f8 g8 d8 ef8 f8 g8 \tuplet 3/2 { af8 a8 bf8 } | cf8 d4 bf8 \tuplet 3/2 { cf8 bf8 g8 } af4 |
  
  r8 f'8 \tuplet 3/2 { ef8 bf8 g8 } gf'8 ff8 gf8 ff8 | d4 \tuplet 3/2 { b8 gf8 d8 } df'8 bf4. |
  r8 d,8 \tuplet 3/2 { ef8 g8 bf8 } f'8 ef4 d8~ | d2 r2 |
  
  \sect "B"
  
  cs4. e8 a,8 b4 c8~ | c4 \tuplet 3/2 { a8 e8 c8 } b'4. a8 |
  c8 d8 b4 a8 b8 g8 fs8~ | fs4 b,8 d16 e16 f8 e8 r4 |
  
  d'8 c8 r8 b8 r8 a4. | gs16 b16 a4.~ a4 r4 |
  c4 \tuplet 3/2 { af8 f8 df8 } r8 a'8 bf4 | df4 \tuplet 3/2 { a8 gf8 d8 } df'16 d16 df16 bf16 b4 |
  
  \sect "A3"

  r8 d,8 \tuplet 3/2 { ef8 g8 bf8 } f'8 ef4 gf,8~ | gf2 r4 r8 af8 |
  f8 g8 d8 ef8 f8 g8 \tuplet 3/2 { af8 a8 bf8 } | cf8 d4 bf8 \tuplet 3/2 { cf8 bf8 g8 } af4 |
  
  r8 f'8 \tuplet 3/2 { ef8 bf8 g8 } gf'8 ff8 gf8 ff8 | d4 \tuplet 3/2 { b8 gf8 d8 } df'8 bf4. |
  r8 d,8 \tuplet 3/2 { ef8 g8 bf8 } f'8 ef4 d8~ | d2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
