%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Anthropology"
  subtitle = \instrument
  poet = ""
  composer = "Charlie Parker and Dizzy Gillespie"
  copyright = "© 1946 Atlantic Music Corp."
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  bf1:6 c2:m7 f2:7 bf2:6 g2:m7 c2:m7 f2:7
  f2:m7 bf2:7 ef2:7 af2:7
  
  d2:m7 g2:7 c2:m7 f2:7
  
  c2:m7 f2:7 bf1:6
  
  d1:7 d1:7 g1:7 g1:7 c1:7 c1:7 f1:7 f1:7
  
  bf1:6 c2:m7 f2:7 bf2:6 g2:m7 c2:m7 f2:7
  f2:m7 bf2:7 ef2:7 af2:7 c2:m7 f2:7 bf1:6
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Fast Bop" 4 = 280

  \xTextMark \markup{ \bold \box "A1,A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  bf8 d8 c8 bf8 ef8 cs8 d8 f8 | r4 r8 ef8 r8 f8 ef4 |
  r8 d8 ef8 d8 c8 a8 bf8 d8 | c8 g8 bf8 a8 r4 r8 bf8~ |
  \break
  bf4 g8 bf8 d8 bf8 r8 e8 | r8 ef8 r8 g,8~ g8 bf8 c8 d8 |
  \break
  \alternative { \volta 1 {
  f4 r8 b,8 r8 af'4 fs8 | g8 ef8 bf8 g8 d'8 f8 r8 f,8 |
  } \volta 2 {
  ef'8 f16 ef16 d8 f8 r8 d8 ef8 g,8 | c8 g8 bf8 c8 r4 r8 fs8~ |
  } } }
  \sect "B"
  
  fs4 g8 gs8 a8 fs8 g8 a8 | fs8 d8 r4 r4 r8 e8 |
  f8 e8 d8 b8 e8 d8 b8 a8 | r4 r8 a'8 r8 a8 r8 a8~ |
  \break
  a8 g8 e8 d8~ d4. a8 | \tuplet 3/2 { c16 d16 c16 } g8 bf8 c8 r4 r8 ef8~ |
  ef4 d8 c8 b8 d8 c8 a8 | c4 bf8 a8 r4 r8 f8 |
  
  \sect "A3"
  
  bf8 d8 c8 bf8 ef8 cs8 d8 f8 | r4 r8 ef8 r8 f8 ef4 |
  r8 d8 ef8 d8 c8 a8 bf8 d8 | c8 g8 bf8 a8 r4 r8 bf8~ |
  \break
  bf4 g8 bf8 d8 bf8 r8 e8 | r8 ef8 r8 g,8~ g8 bf8 c8 d8 |
  ef8 f16 ef16 d8 f8 r8 d8 ef8 g,8 | c8 g8 bf8 c8 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
