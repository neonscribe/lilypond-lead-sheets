%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "I Remember Clifford"
  subtitle = \instrument
  poet = ""
  composer = "Benny Golson"
  copyright = \markup \small { \now " " "© 1957 Ibbob Music, Inc." }
}

refrainChords = \chordmode {
  af1:maj7 bf2:7 bf2:7/af g2:7 af2:dim7 c4:m7 bf4:m7 af4:m7 gf4:m7
  f1:m7 af2/bf af2:m/bf
  
  ef2:maj7 g2:7 af2:maj7 a2:dim7 bf2:13 b2:dim7 c2:m7 c2:m7/bf
  a2:m7.5- d2:7.9- g2:m7 g2:m7/f e2:m7.5- a2:7.9- f2:m7 bf2:7.9-

  ef2:maj7 g2:7 af2:maj7 a2:dim7 bf2:13 b2:dim7 c2:m7 c2:m7/bf
  a2:m7.5- d2:7.9- g2:m7.5- c2:7.9- f2:m7 bf2:7.5+ g2:m7 af2:maj7
  
  a2:m7.5- d2:7.9- g2:m7 c2:7.9- f2:m7 bf2:7 ef1:maj7
  d2:m7.5- g2:7.9- c2:m7 c2:m7/bf a2:m7.5- d2:7.9- g4:m7 c4:7 f4:m7 bf4:7
  
  ef2:maj7 g2:7 af2:maj7 a2:dim7 bf2:13 b2:dim7 c2:m7 c2:m7/bf
  a2:m7.5- d2:7.9- g2:m7.5- c2:7.9- f2:m7 bf2:7.5+ ef2:6 bf2:7.9-
  
  f2:m7 bf2:7.5+ g2:m7 b2/fs
  
  f1:m7 bf2:7 bf2:7/af g2:7 af2:dim7 c4:m7 bf4:m7 af4:m7 gf4:m7 f1:m7 af2/bf bf2:7.5+
  ef2:maj7 d2:7.9+ ef1:maj7
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad [Don Byrd - Gigi Gryce 1957]" 4 = 65

  \sectStart "Intro"
  
  r8 c8 ef8 g8 bf8 af8 ef8 f8 | g8 g4.~ g2 | r8 g8 b8 d8 f4. d8 |
  \break
  ef1 | r8 c,8 ef8 f8 g4 ef8 c8 | ef8 ef4. r4 bf'4 |
  
  \sect "A1"
  
  g2~ \tuplet 3/2 { g4 f4 d4 } | ef2 r8 f8 g8 af8 | bf4. bf8 b8 af8 d8 b8 | c2 r8 g8 c8 d8 |
  \break
  ef2~ \tuplet 3/2 { ef4 d4 c4 } | \tuplet 3/2 { bf8 c8 d8~ } d4 r8 d,8 g8 a8 |
  bf2~ \tuplet 3/2 { bf4 a4 g4 } | af2. bf4 |

  \sect "A2"

  g2~ \tuplet 3/2 { g4 f4 d4 } | ef2 r8 f8 g8 af8 | bf4. bf8 b8 af8 d8 b8 | c2 r8 g8 c8 d8 |
  \break
  ef2 r8 f,8 bf8 c8 | df2~ df4. c8 | f,4. c'8 fs,4. d'8 | g,4. ef'8 c4. d8 |
  \bar "||"
  
  \xPageBreak

  \sectNoBarNoBreak "B"
  
  ef2 d8 c8~ \tuplet 3/2 { c8 bf8 c8 } | d4 df4 r8 c,8 ef8 f8 | g8 c,8 ef8 f8 fs4 b4 | bf2. f8 g8 |
  \break
  af4. af8 bf8 af8 g8 f8 | g2 r8 g8 c8 d8 | ef4. ef 8 f8 ef8 d8 c8 | d8 g,8 bf8 d8 c4 bf4 |
  
  \sect "A3"
  
  g2~ \tuplet 3/2 { g4 f4 d4 } | ef2 r8 f8 g8 af8 | bf4. bf8 b8 af8 d8 b8 | c2 r8 g8 c8 d8 |
  \break
  ef2 r8 f,8 bf8 c8 | df2 r8 c,8 ef8 f8 | g8 c,8 ef8 f8 fs4 d4 | ef1 \textToCodaLastTime |
  \bar "||-|."

  \textCodaBreak
  
  g8 c,8 ef8 f8 fs4 b4 | bf2 b2 |
  
  \sect "D"

  r8 c,8 ef8 g8 bf8 af8 ef8 f8 | g8 g4.~ g2 | r8 g8 b8 d8 f4. d8 | ef1 |
  \break
  r8 c,8 ef8 f8 g4 ef8 c8 | ef8 ef4. \tuplet 3/2 { d4 fs4 b4 } | bf1~ | bf1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
