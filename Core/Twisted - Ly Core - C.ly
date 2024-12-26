%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Twisted"
  subtitle = \instrument
  poet = "Annie Ross"
  composer = "Wardell Gray"
  copyright = "© 1949,1952 Prestige Music"
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  c2 bf4. g8*2:m bf4. c8 r4.
  
  r4. c8*5:7 f1:7 c1:7
  c1:7 c2:7 \chordInsideParens{ c2:7.5- } f1:9.11+ f1:9.11+
  c1:maj7 e2:m7 a2:7 d1:m7
  g1:7 c2:6 a2:7
  
  d2:m7 g2:7

  d2:m7 g2:7

  c1:7 f1:7 c1:7 c1:7
  f1:7 f1:7 c1:maj7 e2:m7 a2:7 d1:m7
  g1:7 e2:m7 a2:7 d1:m7

  g1:m7 c2:6 a2:7 d2:m7 g2:7

  c1:7 f1:7 c1:7 c1:7
  f1:7 f1:7 c1:maj7 e2:m7 ef2:m7 d1:m7
  g1:7 c2:6 ef2:dim7
  d2:m7 g2:7 c4:6 r4*7
  
  g1:7 c4:6 r4*5 c2:7
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Swing" 4 = 165

  \xTextMark \markup{ \bold \box "Intro" }
  
  e4-. e4-. d4. bf8 | r8 d8 r8 d8 e8 ds8 \tuplet 3/2 { e8 g8 a8 } |

  \bar ".|:-||"
  \break

  \xTextMark \markup{ \bold \box "A" }
  
  bf8 g8 r4 r8 gs8 \tuplet 3/2 { a8 c8 d8 } | ef8 c8 ef8 d8 r8 ds8 \tuplet 3/2 { e8 g8 a8 } |
  bf8 g8 r4 r8 fs8 \tuplet 3/2 { g8 bf8 c8 } | df4 c8 gf8~ gf4 e8 f8~ |
  f8 b8 b8 a8 b4 a8 f8 | b4 c8 a8~ a4 r8 b8 | g4 e8 f8 g4 
  
  
  \sect "B"
  
  \sect "C"
  
  \sect "D"
  
  \sect "C"

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
