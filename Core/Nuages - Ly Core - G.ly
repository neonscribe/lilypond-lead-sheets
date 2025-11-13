%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Nuages"
  subtitle = \instrument
  poet = "Jacques Larue"
  composer = "Django Reinhardt"
  copyright = \markup \small { \now " " "© 1940 Peter Maurice Music Ltd." }
}

refrainDFBChords = \chordmode {
  s2.
  
  ef1:7 d1:7 g1 g1
  ef1:7 d1:7 g1 g1
  fs1:m7.5- b1:7 e1:m e1:m
  a2:7 af2:7 a1:7 d2:7 ef2:7 d1:7
  
  ef1:7 d1:7 g1 g1
  af1:7 g1:7 c1 c1
  c1:m c1:m g1 g1
  ef1:7 d1:7 g2 c2:m g1
}

refrainHLChords = \chordmode {
  s2.
  bf2:m7 ef2:7 a2:m7.5- d2:7.9- g2:6 a2:m7 b1:m7
  bf2:m7 ef2:7 a2:m7.5- d2:7.9- g1:6 g1:6
  
  fs1:m7.5- b1:7 e1:m7 e1:m7
  a2:7 af2:7 a1:7 d2:7 a2:m7 d1:7

  bf2:m7 ef2:7 a2:m7.5- d2:7.9- g1:6 g1:6
  ef2:m7 af2:7 d2:m7.5- g2:7.9- c1:maj7 c1:maj7
  
  c2:m7 f2:7 c2:m7 f2:7 g2:6 a2:m7 b1:m7
  bf2:m7 ef2:7 a2:m7.5- d2:7.9- g2:6 c2:9 g1:6
}

refrainChords = \refrainHLChords

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Django Reinhardt 1940]" 4 = 116

  \partial 2. cs8 d8 a'8 af8 g8 gf8 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A" }
  
  f2~ f4. e8 | ef2 ef4. cs8 | d1 | r4 cs8 d8 a'8 af8 g8 gf8 |
  \break
  f2~ f4. e8 | ef2 ef4. cs8 | d1 | r4 as8 b8 b'8 a8 g8 fs8 |
  \break
  a1 | r4 as,8 b8 b'8 a8 g8 fs8 | g1 | r4 fs8 g8 b8 a8 g8 fs8 |
  \break
  e2 ef2 | e4 e8 fs8 g8 a8 \tuplet 3/2 { b8 d8 f8 } | d2 ef2 |
  d4 cs,8 d8 a'8 af8 g8 gf8 |
  
  \sect "B"
  
  f2~ f4. e8 | ef2 ef4. cs8 | d1 | r4 fs8 g8 d'8 ds8 c8 b8 |
  \break
  bf2. bf8 a8 | af2 af4. g8 | g1 | r4 fs8 g8 g'8 f8 ef8 f8 |
  \break
  g1 | r4 fs,8 g8 g'8 f8 ef8 f8 |
  g4 b,16 c16 b16 c16 d2 | r4 cs,8 d8 a'8 af8 g8 gf8 |
  \break
  f2~ f4. e8 | ef2 d4 b'4 | g1~ | g1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
