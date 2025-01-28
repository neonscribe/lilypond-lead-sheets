%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Tin Roof Blues"
  subtitle = \instrument
  poet = "Walter Melrose"
  composer = "New Orleans Rhythm Kings"
  copyright = "© 1923 Melrose Bros. Music Company"
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  r4

  \chordSlash 2 bf2:7 ef1 bf1 bf1:7
  ef1:7 ef1:7 bf1 bf2. bf4:dim
  f1:7 f1:7 bf4 bf4:7 ef4 ef4:m bf2 f2:7
  
  bf1 bf1 bf1 bf2 bf2:7
  ef1:7 ef1:7 bf1 bf4:7 af4:7 g2:7
  c1:7 f1:7.5+ bf2 ef2:7 bf1

  bf1 bf1 bf1 bf2 bf2:7
  ef1:7 ef1:7 bf1 bf4:7 af4:7 g2:7
  c1:7 f1:7.5+ bf2 ef2:7 bf1
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [New Orleans Rhythm Kings 1923]" 4 = 108

  \partial 4 f8 g8 |
  \bar "||"
  
  \sectStart "Verse"
  
  bf1 | r8 f8 g8 af8 g8 f8 cs8 d8 | f2. cs8 d8 | af'1 |
  \break
  \tuplet 3/2 { g8 fs8 g8 } fs8 g8 f8 ef4. | \tuplet 3/2 { g8 fs8 g8 } fs8 g8 f8 cs8 d8 f8~ |
  f1~ | f4 cs8 d8 a'4 g4 |
  \break
  g4. f8~ f2~ | f8 cs8 d8 g8 f d4 bf8~ | bf1~ | bf4 r4 r4 f'4 |
  \break
  
  \sect "Refrain"
  
  f8 e8 ef8 d8 f8 e8 ef8 d8 | f4 bf,8 d8~ d2 | f8 e8 ef8 d8 f8 e8 ef8 d8 | f4 bf,8 d8~ d2 |
  \break
  bf'8 a8 af8 g8 bf8 a8 af8 g8 | bf4 ef,8 g8~ g2 | f8 e8 ef8 d8 f8 e8 ef8 d8 | f4 d8 g8~ g2 |
  \break
  bf1~ | bf8 cs,8 c8 d8 f4 cs4 | bf1~ | bf4 r4 r4 f'4 |

  \bar "||-||"
  \break
  
  f8 e8 ef8 d8 f8 e8 ef8 d8 | f4 bf,8 d8~ d2 | f8 e8 ef8 d8 f8 e8 ef8 d8 | f4 bf,8 d8~ d2 |
  \break
  bf'8 a8 af8 g8 bf8 a8 af8 g8 | bf4 ef,8 g8~ g2 | f8 e8 ef8 d8 f8 e8 ef8 d8 | f4 d8 g8~ g2 |
  \break
  bf1~ | bf8 cs,8 c8 d8 f4 cs4 | bf1~ | bf4 r4 r4 
  \override Parentheses.font-size = #5
  \parenthesize f'4
  |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
