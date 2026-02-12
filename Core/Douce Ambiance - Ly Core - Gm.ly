%% -*- Mode: LilyPond -*-

#(set-global-staff-size 18)

$(if (and (defined? 'printNoteNames) printNoteNames)
  (set-global-staff-size 16))

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "Douce Ambiance"
  subtitle = \instrument
  poet = ""
  composer = "Django Reinhardt"
  copyright = \markup \small { \now " " "© 1944 Publications Francis-Day (S.A.)" }
}

refrainChords = \chordmode {
  d1:7 ef1:maj7 e1:7 f1:6
  bf1:6 ef1:maj7 d1:7sus d1:7
  
  g1:m d1:7 g2:m f2:7 bf2 b2:dim7
  c1:m g1:m af1:7 d1:7

  g1:m d1:7 g2:m f2:7 bf2 b2:dim7
  c1:m g1:m af2:7 d2:7 g1:m
  
  af1:m af1:m af1:m af1:m
  a1:m a1:m f2:7 e4:7 ef4:7 s4 cs4:7 d2:7

  g1:m d1:7 g2:m f2:7 bf2 b2:dim7
  c1:m g1:m af2:7 d2:7 g1:m
  
  ef1:maj7 d8:7 r8*13 g4:m
}

refrainKey = g

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f'' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Fast Swing [Django Reinhardt 1943]" 4 = 198

  \xTextMark \markup{ \bold \box "Intro/Outro" \musicglyph #"scripts.segno" }
  
  d8 d8 d8 d8~ d2 | d8 d8 d8 d8~ d2 | d8 d8 d8 d8~ d2 | d8 d8 d8 d8~ d2 | 
  \break
  d8 d8 d8 d8~ d2 \textToCodaLastTime | d8 d8 d8 d8~ d2 | d8 d8 d8 d8~ d2 | d1 |
  
  \bar ".|:-||"
  \break

  \xTextMark \markup{ \bold \box "A1" }
  
  \repeat volta 2 {

  d8 d8 d8 d8~ d2 | d8 d8 d8 d8~ d2 | \tuplet 3/2 { d8 ef8 d8 } cs8 d8 f8 ef8 bf8 c8 | d2 r2 |
  \break
  c8 c4 c8 c8 cs8 d4 | bf4. g8~ g2 | \tuplet 3/2 { af4 af4 af4 } ef'4 ef8 d8~ | d2 r2 |

  \sect "A2"
  
  d8 d8 d8 d8~ d2 | d8 d8 d8 d8~ d2 | \tuplet 3/2 { d8 ef8 d8 } cs8 d8 f8 ef8 bf8 c8 | d2 r2 |
  \break
  c8 c4 c8 c8 cs8 d4 | bf4. g8~ g2 | \tuplet 3/2 { af4 af4 af4 } af8 bf4 g8~ | g2 r2 |

  \sect "B"
  
  af4. bf8 cf8 df8 ef8 f8 | gf4. f8~ f4 r8 ef8~ | ef8 cf8 af8 gf8 f4 \tuplet 3/2 { gf8 af8 gf8 } | f1 |
  \break
  a4. b8 c8 d8 e8 fs8 | g4. fs8~ fs4 r4 | f4 r4 e4 ef4 | r4 cs4 d4 r4 |
  
  \sect "A3"
  
  d8 d8 d8 d8~ d2 | d8 d8 d8 d8~ d2 | \tuplet 3/2 { d8 ef8 d8 } cs8 d8 f8 ef8 bf8 c8 | d2 r2 |
  \break
  c8 c4 c8 c8 cs8 d4 | bf4. g8~ g2 | \tuplet 3/2 { af4 af4 af4 } af8 bf4 g8~ | g2 r2 \dalSegnoLastTime |
  }

  \textCodaBreak
  
  d'8 d8 d8 d8~ d2 | r8 d8 df4 c4 b4 | bf8 a8 af8 g8 r8 d'8 g,4 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
