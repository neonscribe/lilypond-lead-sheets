%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 18) #}
)

\header {
  title = "Cherokee"
  subtitle = \instrument
  poet = ""
  composer = "Ray Noble"
  copyright = "© 1938 The Peter Maurice Music Co. Ltd."
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  bf1:maj7 bf2:maj7 f2:7.5+ f1:m7 bf1:7
  ef1:maj7 ef1:maj7 af1:9 af1:9
  bf1:6 bf2:6 d2:m7 c1:7 c1:7
  
  c1:m7 d2:m7.5- g2:7.9- c1:m7 f1:7.5+

  bf1:maj7 bf2:maj7 f2:7.5+ f1:m7 bf1:7
  ef1:maj7 ef1:maj7 af1:9 af1:9
  bf1:6 bf2:6 d2:m7 c1:7 c1:7
  
  c1:m7 f1:7 bf1:6 bf1:6
  
  cs1:m7 fs1:7 b1:maj7 b1:maj7
  b1:m7 e1:7 a1:maj7 a1:6
  a1:m7 d1:7 g1:maj7 g1:maj7
  g1:m7 c1:7 c1:m7 f1:7.5+

  bf1:maj7 bf2:maj7 f2:7.5+ f1:m7 bf1:7
  ef1:maj7 ef1:maj7 af1:9 af1:9
  bf1:6 bf2:6 d2:m7 c1:7 c1:7
  
  c1:m7 f1:7 bf1:6
  \chordOpenParen{ c2:m7 }
  \chordCloseParen{ f2:7.5+ }
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Fast" 4 = 300
  
  \textMark \markup{ \bold \box "A1" }
  
  d1 | f2 g2 | bf1 | g1 |
  f1 | d2 f2 | d1 | c1 |
  \break
  bf1 | d2 f2 | d'1 | bf1 |
  g1 | f2 d2 | c1 | cs1 |

  \bar "||"
  \break

  \textMark \markup{ \bold \box "A2" }
  
  d1 | f2 g2 | bf1 | g1 |
  f1 | d2 f2 | d1 | c1 |
  \break
  bf1 | d2 f2 | d'1 | bf1 |
  g1 | d1 | bf1~ | bf1 |

  \bar "||"
  \break

  \textMark \markup{ \bold \box "B" }
  
  ds'1~ | ds2 cs2 | cs4 as4 fs2~ | fs2 cs'2 |
  \break
  cs4 a4 fs2~ | fs2 b2 | e,1~ | e1 |
  \break
  b'1~ | b2 a2 | a4 fs4 d2~ | d2 a'2 |
  \break
  a4 f4 d2~ | d2 g2 | c,1 | cs1 |
  
  \bar "||"
  \break

  \textMark \markup{ \bold \box "A3" }

  d1 | f2 g2 | bf1 | g1 |
  f1 | d2 f2 | d1 | c1 |
  \break
  bf1 | d2 f2 | d'1 | bf1 |
  g1 | d1 | bf1~ | bf1 |

  \bar "|."    
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

cliffordBrownCoda = \relative f' {
  r8 cs8 d8 f8 c8 bf8 g8 f8 | bf4-. bf8 af8 r8 af8 f4-. |
  r8 cs'8 d8 f8 c8 bf8 g8 f8 | bf4-. bf8 af8 r8 af8 <e' g,>4\fermata |
}