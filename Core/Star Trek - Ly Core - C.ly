%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Star Trek Theme"
  subtitle = \instrument
  poet = "Gene Roddenberry"
  composer = "Alexander Courage"
  copyright = \markup \small "© 1966 Bruin Music Co."
}

bossaRhythm = ##t

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  c1 c1 af1:13 af1:13
  c1 c1 ef1:7.5+ ef2.:7.5+ ef4:9.5-
  d1:6 d1:6 df1:9.5- df1:9.5-
  ef1:6 ef1:6 g2:7.9+ g2:7 g1:7
  
  c1 c1 af1:13 af1:13
  c1 c1 f1:9.11+ e1:9
  f1 bf1:9 c1 a1:7.9-
  d1:m7 d2:m7 g2:7 c1 df1
  c1:6.9 c1:6.9
}

refrainKey = c

refrainMelody = \relative f {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Bright Galactic Beguine" 4 = 150

  \xTextMark \markup{ \bold \box "A1" }
  
  g2 f'2~ | f4 e4 \tuplet 3/2 { d4 c4 b4 } | bf2 bf2~ | bf1 |
  \break
  g2 g'2~ | g4 f4 \tuplet 3/2 { e4 d4 c4 } | b2 b2~ | b2. bf4 |
  
  \sect "B"
  
  a2. b4 | cs4 d4 \tuplet 3/2 { e4 fs4 g4 } | a2 bf2~ | bf1 |
  \break
  bf,2. c4 | d4 ef4 \tuplet 3/2 { f4 g4 af4 } | bf2 b2~ | b1 |
  
  \sect "A2"
  
  g,2 f'2~ | f4 e4 \tuplet 3/2 { d4 c4 b4 } | bf2 bf2~ | bf2. af4 |
  \break
  g2 g'2~ | g4 f4 \tuplet 3/2 { e4 d4 c4 } | b2 b2~ | b2. bf4 |
  
  \sect "C"
  
  a2. b4 | c4 d4 \tuplet 3/2 { e4 f4 e4 } | g2. g4 | bf2. a4 |
  \break
  g2 c,2~ | c2 \tuplet 3/2 { d4 d4 d4 } | c1~ | c1 | r1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
