%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  (set-global-staff-size 18))

\header {
  title = "Sleepwalk"
  subtitle = \instrument
  poet = ""
  composer = "Santo Farina, John Farina & Ann Farina"
  copyright = \markup \small { \now " " "© 1959 Carbert Music, Inc." }
}

straightEighths = ##t

refrainChords = \chordmode {
  c2 a2:m f2:m g2:7 c2 a2:m f2 g2:7
  
  c2 a2:m f2:m g2:7 c2 a2:m f2:m g2:7 
  c2 a2:m f2:m g2:7 c2 a2:m f2 g2:7

  c2 a2:m f2:m g2:7 c2 a2:m f2:m g2:7 
  c2 a2:m f2:m g2:7 c2 f2 c1
  
  f1 f1:m c1 c1:7
  f1 f1:m g2 bf2 g1:7.9+

  c2 a2:m f2:m g2:7 c2 a2:m f2:m g2:7 
  c2 a2:m f2:m g2:7 g2:7.9+ c4:6.9 g4:7.9-.5+ c2:6.9
}

refrainKey = c

refrainMelody = \relative f'' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Slowly [Santo & Johnny 1959]" 4 = 68

  \xTextMark \markup{ \bold \box "Intro" }
  
  \tuplet 3/2 { r8 e8 e8 } \tuplet 3/2 { e8 e8 e8 } \tuplet 3/2 { r8 a8 a8 } \tuplet 3/2 { a8 a8 a8 } |
  \tuplet 3/2 { r8 af,8 af8 } \tuplet 3/2 { af8 af8 af8 } bf4 \ottava #1 { \tuplet 3/2 { g''8 a8 e'8~ } |
  \tuplet 3/2 { e8 b4~ } b4~ b2 } \ottava #0 |
  \tuplet 3/2 { a,,4 a8~ } \tuplet 3/2 { a8 a8 a8 } b4. r8 |
  
  \sect "A1"
  
  c2 g2 | r4 \tuplet 3/2 { r8 f8 g8 } af8 g4 f8 | c'2 g2 | r4 \tuplet 3/2 { r8 f8 g8 } af8 g4 f8 |
  \break
  g4 e16 g16 e16 c16 a2 | r4 \tuplet 3/2 { r8 c8 c8 } e8 e4 e16 e16 |
  r4 \tuplet 3/2 { g8 a8 e'8 } b2 | r4 \tuplet 3/2 { c8 d8 a'8 } g2 |
  
  \sect "A2"
  
  c,2 g2 | r4 \tuplet 3/2 { r8 f8 g8 } af8 g4 f8 | c'2 g2 | r4 \tuplet 3/2 { r8 f8 g8 } af8 g4 f8 |
  \break
  g4 e16 g16 e16 c16 a2 | r4 \tuplet 3/2 { r8 c8 c8 } e8 e4 e16 e16 |
  c2 a8 a4 a16 a16 | c2~ c4. c8 |
  
  \sect "B"
  
  a'8 a4. e'4~ \tuplet 3/2 { e8 d8 c8 } | af2 e'4~ \tuplet 3/2 { e8 d8 c8 } | 
  g2 a4~ \tuplet 3/2 { a8 ds,8 e8 } | g2~ g4. c,8 |
  \break
  a'8 a4. e'4~ \tuplet 3/2 { e8 d8 c8 } | af2 e'4~ \tuplet 3/2 { e8 d8 c8 } |
  g4. g8 bf8 bf8 r8 bf8 | g4 bf'8 g8~ g4 r4 |
  
  \sect "A3"

  c,2 g2 | r4 \tuplet 3/2 { r8 f8 g8 } af8 g4 f8 | c'2 g2 | r4 \tuplet 3/2 { r8 f8 g8 } af8 g4 f8 |
  \break
  g4 e16 g16 e16 c16 a2 ^\markup \italic "rit." | r4 \tuplet 3/2 { r8 c8 c8 }
  e8 e4 ef8 |
  d4 \ottava #1 { \tuplet 3/2 { g''8 a8 e'8\fermata } b2 } \ottava #0 | r1\fermata |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
