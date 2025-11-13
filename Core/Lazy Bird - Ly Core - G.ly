%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Lazy Bird"
  subtitle = \instrument
  poet = ""
  composer = "John Coltrane"
  copyright = \markup \small { \now " " "© 1957 Jowcol Music" }
}

refrainChords = \chordmode {
  a2:m7 d2:7 c2:m7 f2:7 f1:m7 bf1:7
  ef1:maj7 a2:m7 d2:7 g1:maj7 b2:m7 bf2:7

  a2:m7 d2:7 c2:m7 f2:7 f1:m7 bf1:7
  ef1:maj7 a2:m7 d2:7 g1:maj7 a2:m7 bf2:dim7

  b1:m7 e1:7 a1:maj7 bf2:m7 ef2:7
  a1:m7 d1:7 g1:maj7 af2:m7 df2:7
  
  a2:m7 d2:7 c2:m7 f2:7 f1:m7 bf1:7
  ef1:maj7 a2:m7 d2:7 g1:maj7 b2:m7 bf2:7

  b1:m7 e1:7.9- a1:m7 d1:7.9-
  g1:maj7 c1:7.9- f1:maj7 bf1:7.9-
  a1:7.9- af1:maj7 df1:9.11+
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Up [John Coltrane 1957]" 4 = 250

  \sectStart "A1"
  
  b2. a4 | d2 c4. bf8~ | bf2~ bf4. f8~ | f2 g4 af8 bf8~ |
  \break
  bf2 g4 bf8 c8~ | c2 a4 c8 d8~ | d1~ | d2 r2 |

  \sect "A2"

  b2. a4 | d2 c4. bf8~ | bf2~ bf4. f8~ | f2 g4 af8 bf8~ |
  \break
  bf2 g4 bf8 c8~ | c2 a4 c8 d8~ | d1~ | d2 r4 b4 |

  \sect "B"
  
  d1~ | \tuplet 3/2 { d4 b4 cs4 } \tuplet 3/2 { d4 fs4 e4 } | cs1~ | cs1 |
  \break
  c1~ | \tuplet 3/2 { c4 a4 b4 } \tuplet 3/2 { c4 e4 d4 } | b1~ | b1 |

  \sect "A3"

  b2. a4 | d2 c4. bf8~ | bf2~ bf4. f8~ | f2 g4 af8 bf8~ |
  \break
  bf2 g4 bf8 c8~ | c2 a4 c8 d8~ \textToCodaLastTime | d1~ | d1 \daCapoAfterSolos |
  \bar "||-||"
  
  \xPageBreak
  
  \textCodaBreak
  
  d2. d8 f8~ | f2. e8 c8~ | c2. r4 | r4 ef2 d4 |
  \break
  b1_"Gradual ritardando to end" | bf1 | a1 | af1 |
  \break
  g1 | g2. r4 | g1\fermata |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
