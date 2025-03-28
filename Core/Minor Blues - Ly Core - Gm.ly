%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  (set-global-staff-size 18))

\header {
  title = "Minor Blues (Blues en Mineur)"
  subtitle = "Transcribed from Rome 1949 recording"
  subsubtitle = \instrument
  poet = ""
  composer = "Django Reinhardt"
  copyright = \markup \small "© 1941 Publications Francis Day S.A."
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  
  g2:m ef2:7/bf d1:7/a g2:m ef2:7/bf d1:7/a
  
  g1:m g1:m g1:m g1:m
  c1:m6/g c1:m6/g g1:m g1:m
  d1:7 ef2:7/bf d2:7 g1:m d1:7

  g1:m g1:m g1:m g1:m
  c1:m c1:m g1:m g1:m
  d2.:7 ef4 d1:7 g2:m d2:7 g2:m \chordInsideParens{ d2:7 }
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Fast Swing" 4 = 200

  \xTextMark \markup{ \bold \box "Intro" }
  
  g,4 r4 bf4 r4 | a4. d8~ d8 c8 bf8 a8 | g4 r4 bf4 r4 | a4. d8~ d8 c8 bf8 a8 |
  
  \sect "Chorus 1"
  
  g4-> r4 r8 bf8 d8 g8 | a2 g4-. fs,8 g8~ | g8 r8 r4 r8 bf8 d8 g8 | a2 g4-. fs,8 g8~ |
  \break
  g8 r8 \tuplet 3/2 { a''8 af8 g8 } \tuplet 3/2 { e8 c8 a8 } \tuplet 3/2 { g8 e8 c8 } |
  \tuplet 3/2 { a8 g8 a8 } \tuplet 3/2 { c8 e8 g8 } 
  \tuplet 3/2 { a8 c8 e8 } \tuplet 3/2 { g8 af8 a8 } |
  \break
  bf4-.-> r4 \tuplet 3/2 { fs8 a8 g8 } \tuplet 3/2 { e8 d8 bf8 } |
  g4 e'8 \tuplet 3/2 { d16 e16 d16~ } d8 bf8 g8 d8 |
  \break
  c'4 \tuplet 3/2 { bf8 c8 bf8 } a8 d,8 r8 d8 |
  c'4 \tuplet 3/2 { bf8 c8 bf8 } <g g,>4. <g g,>8~ |
  <g g,>4 <g g,>2. |
  r2 r8 g8 bf8 df8 |
  
  
  \sect "Chorus 2"
  
  \tuplet 3/2 { c16( df16 c8) g8 } bf8 df8 \tuplet 3/2 { c16( df16 c8) g8 } bf8 df8 |
  \pitchedTrill c2\startTrillSpan df bf4\stopTrillSpan g4 | 
  e'4. g'8^\flageolet~ g2^\flageolet~ | g4^\flageolet r4 r2 |
  \break
  \tuplet 3/2 { d,,8 e8 d'8 } \tuplet 3/2 { c8 a8 g8 } 
  \tuplet 3/2 { ef8 c8 b8 } \tuplet 3/2 { bf8 a8 c8 } |
  \tuplet 3/2 { ef8 f8 g8 } \tuplet 3/2 { a8 c8 ef8 } 
  \tuplet 3/2 { g8 ef8 c8 } \tuplet 3/2 { g8 ef8 c8 } |
  \break
  d2 r2 |
  r4 \tuplet 3/2 { d'8 ef8 e8 } f8 ef8 bf8 c8 |
  \break
  d2 r4 bf8 c8 | df4 c8 bf8 c4 bf8 g8~ |
  g8 g8 \tuplet 3/2 { f16 g16 f8 d8 } f4 fs8 g8~ | g2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
