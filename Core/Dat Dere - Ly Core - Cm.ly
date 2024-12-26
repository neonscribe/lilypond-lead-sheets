%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  (set-global-staff-size 18))

\header {
  title = "Dat Dere"
  subtitle = \instrument
  poet = ""
  composer = "Bobby Timmons"
  copyright = "© 1960 Upam Music Co."
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  \set chordChanges = ##t
  s8
  
  c2:m7 c2:m7/bf a2:m7.5- af2:maj7 a2:m7.5- d2:7.9+ d2:m7.5- g2:7.9-
  c2:m7 c2:m7/bf a2:m7.5- af2:maj7 d2:m7.5- g2:7.5+ c2:m7 g2:7.5+

  c2:m7 c2:m7/bf a2:m7.5- af2:maj7 a2:m7.5- d2:7.9+ d2:m7.5- g2:7.9-
  c2:m7 c2:m7/bf a2:m7.5- af2:maj7 d2:m7.5- g2:7.5+ c1:m7
  
  d4:m7.5- g4:7 c4:m7 c4:m7/bf a4:m7.5- d4:7 g2:m7
  a2:m7.5- d2:7.9+ d2:m7.5- g2:7.9-
  d4:m7.5- g4:7 c4:m7 c4:m7/bf a4:m7.5- d4:7 g2:m7
  d2:m7.5- g2:7.5+ c2:m7 g2:7.5+

  c2:m7 c2:m7/bf a2:m7.5- af2:maj7 a2:m7.5- d2:7.9+ d2:m7.5- g2:7.9-
  c2:m7 c2:m7/bf a2:m7.5- af2:maj7 d2:m7.5- g2:7.5+ c2:m7
  \chordInsideParens{ g2:7.5+ }
  \set chordChanges = ##f
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium Swing" 4 = 135

  \partial 8 c8 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  f8-. g8 \tuplet 3/2 { c,8 f8 ef8~ } ef4. c8 |
  f8-. g8 \tuplet 3/2 { c,8 f8 ef8~ } \tuplet 3/2 { ef8 c8 d8 } \tuplet 3/2 { ef8 g8 a8 } |
  d4 \tuplet 3/2 { c8 g8 ef8 } f8-. ef8 \tuplet 3/2 { f8 ef8 g8~ } | g2 r4 r8 c,8 |
  \break
  f8-. g8 \tuplet 3/2 { c,8 f8 ef8~ } ef4. c8 |
  f8-. g8 \tuplet 3/2 { c,8 f8 ef8~ } ef8 c8 \tuplet 3/2 { f8 ef8 f8 } |
  \tuplet 3/2 { ef8 f8 ef8 } bf'4 \tuplet 3/2 { gf16 f16 ef16 } c8 \tuplet 3/2 { bf8 g8 c8~ } |
  c2 r4 r8 c8 |

  \sect "A2"
  
  f8-. g8 \tuplet 3/2 { c,8 f8 ef8~ } ef4. c8 |
  f8-. g8 \tuplet 3/2 { c,8 f8 ef8~ } \tuplet 3/2 { ef8 c8 d8 } \tuplet 3/2 { ef8 g8 a8 } |
  d4 \tuplet 3/2 { c8 g8 ef8 } f8-. ef8 \tuplet 3/2 { f8 ef8 g8~ } | g2 r4 r8 c,8 |
  \break
  f8-. g8 \tuplet 3/2 { c,8 f8 ef8~ } ef4. c8 |
  f8-. g8 \tuplet 3/2 { c,8 f8 ef8~ } ef8 c8 \tuplet 3/2 { f8 ef8 f8 } |
  \tuplet 3/2 { ef8 f8 ef8 } bf'4 \tuplet 3/2 { gf16 f16 ef16 } c8 \tuplet 3/2 { bf8 g8 c8~ } |
  c2 r4 c'4 |
  
  \sect "B"
  
  g'16 f16 ef16 c16 f8 ef8~ \tuplet 3/2 { ef8 g,8 g8 } \tuplet 3/2 { g8 g8 g8 } |
  d'16 c16 bf16 g16 c8 bf8~ \tuplet 3/2 { bf8 c,8 d8 } \tuplet 3/2 { ef8 g8 a8 } |
  \tuplet 3/2 { d8 c8 g8 } ef8 f'8 \tuplet 3/2 { ef8 bf8 gf8 } \tuplet 3/2 { f8 ef8 g8~ } |
  g2 r4 c4 |
  \break
  g'16 f16 ef16 c16 f8 ef8~ \tuplet 3/2 { ef8 g,8 g8 } \tuplet 3/2 { g8 g8 g8 } |
  d'16 c16 bf16 g16 c8 bf8~ bf8 c,8 \tuplet 3/2 { f8 ef8 f8 } |
  \tuplet 3/2 { ef8 f8 ef8 } bf'4 \tuplet 3/2 { f8 ef8 c8 } \tuplet 3/2 { bf8 g8 c8~ } |
  c2 r4 r8 c8 |

  \sect "A3"

  f8-. g8 \tuplet 3/2 { c,8 f8 ef8~ } ef4. c8 |
  f8-. g8 \tuplet 3/2 { c,8 f8 ef8~ } \tuplet 3/2 { ef8 c8 d8 } \tuplet 3/2 { ef8 g8 a8 } |
  d4 \tuplet 3/2 { c8 g8 ef8 } f8-. ef8 \tuplet 3/2 { f8 ef8 g8~ } | g2 r4 r8 c,8 |
  \break
  f8-. g8 \tuplet 3/2 { c,8 f8 ef8~ } ef4. c8 |
  f8-. g8 \tuplet 3/2 { c,8 f8 ef8~ } ef8 c8 \tuplet 3/2 { f8 ef8 f8 } |
  \tuplet 3/2 { ef8 f8 ef8 } bf'4 \tuplet 3/2 { gf16 f16 ef16 } c8 \tuplet 3/2 { bf8 g8 c8~ } |
  c2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
