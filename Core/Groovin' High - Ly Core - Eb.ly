%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Groovin' High"
  subtitle = \instrument
  poet = ""
  composer = "Dizzy Gillespie"
  copyright = "© 1944 MCA Music"
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  ef1:6 ef1:6 a1:m7 d1:7
  ef1:6 ef1:6 g1:m7 c1:7

  f1:7 f1:7 f1:m7 bf1:7
  g1:m7 fs1:m7 f1:m7 bf1:7.9-
  
  ef1:6 ef1:6 a1:m7 d1:7
  ef1:6 ef1:6 g1:m7 c1:7

  f1:7 f1:7 f1:m7 bf1:7
  f1:m7 df1:7 ef1:6
  \chordOpenParen{ f2:m7 }
  \chordCloseParen{ bf2:7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Up Swing" 4 = 162

  \xTextMark \markup{ \bold \box "A1" }
  
  bf8 g8 r4 r2 | bf8 g8 r4 r2 | r8 e8 a8 c8 b8 a8 gs8 e8 | g8 f8 fs8 d'8~ d4 c8 a8 |
  \break
  bf8 g8 r4 r2 | bf8 g8 r4 r2 | r8 d8 g8 bf8 a8 g8 fs8 d8 | f8 ef8 e8 c'8~ c4 bf8 gs8 |  
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  a8 f8 r4 r2 | \tuplet 3/2 { a16 bf16 a16 } f8 r4 r2 |
  r8 c8 f8 af8 g8 f8 e8 c8 | ef8 cs8 d8 bf'8~ bf4 af8 fs8 |
  \break
  g8 bf8 d8 f8~ f4 d8 bf8 | e8 cs8 r4 r4 r8 e,8 |
  f8 af8 c8 ef8~ ef4 c8 af8 |
  d8 b8 r4 r4 b8 a8 |
  
  \bar "||"
  \break
  
  \xTextMark \markup{ \bold \box "A2" }
  
  bf8 g8 r4 r2 | bf8 g8 r4 r2 | r8 e8 a8 c8 b8 a8 gs8 e8 | g8 f8 fs8 d'8~ d4 c8 a8 |
  \break
  bf8 g8 r4 r2 | bf8 g8 r4 r2 | r8 d8 g8 bf8 a8 g8 fs8 d8 | f8 ef8 e8 c'8~ c4 bf8 gs8 |  
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "C" }
  
  a8 f8 r4 r2 | \tuplet 3/2 { a16 bf16 a16 } f8 r4 r2 |
  r8 c8 f8 af8 g8 f8 e8 c8 | ef8 cs8 d8 bf'8~ bf4 af4 |
  \break
  f4-. f8 g8 af8 g8 f4-. | af4-. af8 bf8 cf8 bf8 af4-. | ef'4-. r4 r2 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
