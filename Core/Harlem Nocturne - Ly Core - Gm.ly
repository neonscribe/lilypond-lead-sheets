%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Harlem Nocturne"
  subtitle = \instrument
  poet = "Dick Rogers"
  composer = "Earle Hagen"
  copyright = \markup \small { \now " " "© 1940 Shapiro, Bernstein & Co." }
}

refrainChords = \chordmode {
  s1
  
  g1:m7+ g1:m7 c1:m7 c1:m7 c1:m7+ ef2:13 a4:7 d4:7.9-
  
  g1:m6 r1
  
  g1:m6 g2:m6 f2:7

  bf2:7 f2:m7 bf2:7 f2:m7 bf2:7 f2:m7 bf1:7
  ef2:7 bf2:m7 ef2:7 bf2:m7 ef4:9 df4:9 b4:9 a4:9
  
  g4:9 c4:9 f2:7
  
  g4:9 c4:9 ef4:9 df4:9 g1:m6 r1

  g1:m7+ g1:m7 c1:m7 c1:m7 c1:m7+ ef2:13 a4:7 d4:7.9- g1:m6 g1:m6
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium Slow [Earl Bostic 1956]" 4 = 100
  
  r8 g,8 d'8 g8 a4 bf8 fs8~ |

  \sectStart "A1,A2"
  
  \repeat volta 2 {
  fs1~ | fs8 g8 d8 bf8 g4 bf8 d8~ |
  \break
  d8 c4.~ c2~ | c8 c8 g'8 c8 d4 ef8 b8~ |
  \break
  b1~ | b8 c8 \tuplet 3/2 { bf8 g8 ef8 } df4 a'8 g8~ |
  \break
  \alternative { \volta 1 {
  g1 | r8 g,8 d'8 g8 a4 bf8 fs8\laissezVibrer |
  } \volta 2 {
  g1~\repeatTie | g4 r4 r4 r8 c8 |
  } } }

  \sect "B1,B2"
  
  \repeat volta 2 {
  bf8 f8 g8 af8~ af4. c8 | bf8 f8 g8 af8~ af4. c8 | bf8 f8 g8 af8~ af4 g8 f8 | d8 f4.~ f4 r8 f8 |
  \break
  ef8 bf8 c8 df8~ df4. f8 | ef8 bf8 c8 df8~ df4. ef'8 | f8 bf,8 ef8 af,8 df8 gf,8 b8 e,8 |
  \break
  \alternative { \volta 1 {
  a8 d,8 g8 c,8 f4. c'8 |
  } \volta 2 {
  a8 d,8 g8 c,8 f8 bf,8 ef8 af,8 | d2. r4 | r8 g,8 d'8 g8 a4 bf8 fs8~ |
  } } }
  \sect "A3"

  fs1~ | fs8 g8 d8 bf8 g4 bf8 d8~ | d8 c4.~ c2~ | c8 c8 g'8 c8 d4 ef8 b8~ |
  \break
  b1~ | b8 c8 \tuplet 3/2 { bf8 g8 ef8 } df8 bf'8 a8 g8~ | g1~ | g2. r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
