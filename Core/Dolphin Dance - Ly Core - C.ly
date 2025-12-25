%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Dolphin Dance"
  subtitle = \instrument
  poet = ""
  composer = "Herbie Hancock"
  copyright = \markup \small { \now " " "© 1965 Hancock Music" }
}

refrainChords = \chordmode {
  ef1:maj7 df1:maj7/ef ef1:maj7 d2:m7.5- g2:7
  
  c1:m7 af1:7.5- c1:m7 a2:m7 d2:7
  g1:maj7 af2:m7 df2:7 f1:m7 bf1:7
  c1:m7 c1:m7/bf a1:m7 d1:7
  
  g1:maj7 d1:m7/g a1/g g1:sus7
  f1:sus7 f1:7.9- f1:sus7 e2:m7 a2:7
  ef1:7 a2:m7 d2:7 b1:m7 e2:7 d2:m7
  cs1:m7 fs1:7 d1:maj7/e c1:maj7/c d1:maj7/e c1:maj7/c
  df1:maj7/ef bf1:7.9-/ef c1:7.9+/ef d2:m7.5- g2:7.9-
}

refrainKey = c

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
  \tempo "Medium [Herbie Hancock 1965]" 4 = 116

  \sectStart "Intro"
  
  r2 g8 af8 bf8 f8~ | f1 | r2 g8 af8 bf8 f8~ | f1 |
  
  \sect "Head"
  
  r2 ef8 f4-. g8 | d4-. d2. | r2 ef8 f8 g8 d8~ | d2. c4 |
  \break
  b4. fs'8~ fs2 | gf4. gf8 af8 gf8 af8 bf8~ | bf1~ | bf1 |
  \break
  g4. bf8~ bf2 | bf4-. bf8 bf8 c8 bf8 c8 d8~ | d1~ | d1 |
  \break
  \bar "||"
  
  r2 b8 c8 d8 a8~ | a1 | r2 g8 a8 b8 f8~ | f1 |
  \break
  r2 ef8 f4-. g8 | d4-. d2. | r2 ef8 f8 g8 a8~ | a1 |
  \break
  a8 bf8 \tuplet 3/2 { r8 a8 gs8 } a4 a8 d8 | r8 b4.~ b2 | b8 cs8 \tuplet 3/2 { r8 b8 a8 } b4 b8 e8~ | e2 f2 |
  \break
  fs4. e8~ e8 b4-. gs8 | ds'2. fs,8 b8~ | b1~ | b1 | r1 | r1 |
  \break
  r2 c8 df8 ef8 bf8~ | bf1 | r2 g8 af8 bf8 f8~ | f1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
