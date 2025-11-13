%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "Songe d'Automne (1947 Hubert Rostaing Clarinet Melody)"
  subtitle = \instrument
  poet = ""
  composer = "Archibald Joyce"
  copyright = \markup \small { \now " " "© 1908 Francis, Day & Hunter" }
}

refrainChords = \chordmode {
  c1:m c1:m/b c1:m/bf c1:m/a
  af1 f1:m fs1:dim7 g1:7

  c1:m g1:7.5+ c1:m ef2 e2:dim7
  f1:m7 bf1:7 ef1 g1:7

  c1:m g1:7 g1:7 c1:m
  bf1:m7 ef1:7 af1 g1:7

  c1:m/g gf1:dim7 c1:m/g af4:7 r2.
  d1:7 g1:7 c1:m c1:7
  
  f1:m f1:m c1:m c1:m
  d1:7 g1:7 c1:m c1:m

  f1:m f1:m c1:m c1:m
  d1:7 g1:7 c1:m c1:m
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Swing [Django Reinhardt & Hubert Rostaing 1947]" 4 = 202

  \xTextMark \markup{ \bold \box "A" }
  
  g,1 | c1 | ef1 | g1 |
  g1 | f2. c4 | ef1 | d2. g,4 |
  
  
  \sect "B"
  
  c2. d4 | ef2. \tuplet 3/2 { e8 f8 gf8 } | g2. g4 | bf2 bf,8 d8 f8 af8 |
  \break
  bf4 f8 bf8~ bf2 | r2 af8 bf8 af8 bf8 | g4 bf,8 g'8~ g2 | r4 r8 g8 a8 b8 c8 d8 |
  
  
  \sect "C"
  
  ef2.~ ef8 d16 ef16 | d1 | r4 d4 ef4 b4 | d2 c4 c,16 d16 ef16 g16 |
  \break
  c1 | bf8 bf,8 df8 f8 bf8 r8 df8 f8 | bf8 f8 df8 bf8 f8 df8 bf8 r8 | ef2. d4 |
  
  \sect "D"
  
  g1 | gf1 | g1 | af4 r8 c,8 d8 f8 af8 c8 |
  \break
  ef1 | d2.~ d8 g,8 | d'8 c8~ c2. | r4 g8 g8 af8 g8 f8 e8 |
  
  \sect "E1"
  
  f8 r8 f8 c'8~ c4 r4 | r4 f,8 r8 g8 f8 ef8 d8 |
  ef8 d8 ef8 c'8~ c4 r4 | r4 ef,8 f8~ f8 ef8 d8 c8 |
  \break
  ef4. gf,8 a8 c8 ef8 d8 | ef4. g,8 a8 c8 ef4 | d8 c8~ c4 c2 | r2 g'8 af8 g8 f8 |
  
  \sect "E2"
  
  e8 f8~ f4 c'4 c4~ | c2. f,8 g8 |
  \tuplet 3/2 { ef4 d4 ef4 } c'2 | r8 d8 ef8 d8 f8 ef8 d8 ef8 |
  \break
  gf8 f8 ef8 d8 c8 b8 af8 g8 | d'8 c8 b8 af8 f8 d8 b8 g8 |
  ef'8 d8 c8 g8 c2 | r1 |
  
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
