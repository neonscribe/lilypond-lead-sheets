%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Look for the Silver Lining"
  subtitle = \instrument
  poet = "Bud DeSylva"
  composer = "Jerome Kern"
  copyright = \markup \small "© 1920 T.B. Harms Co."
}

refrainLyrics = \lyricmode {
Look for the sil -- ver lin -- ing when -- e'er a cloud ap -- pears in the blue.
Re -- mem -- ber some -- where the sun is shin -- ing
and so the right thing __ to do is make it shine for you.
A heart full of joy and glad -- ness 
will al -- ways ban -- ish sad -- ness and strife.
So al -- ways look for the sil -- ver lin -- ing 
and try to find the sun -- ny side of life.
}

refrainChords = \chordmode {
  ef1:maj7 f2:m7 bf2:7 ef1:maj7 f2:m7 bf2:7 
  ef1:maj7 af1:7 g1:m7 c1:m7

  f1:m7 bf1:7 ef1:maj7 d2:m7.5- g2:7.9+
  c1:m7 f2:7 fs2:dim7 g2:m7 c2:7 f2:m7 bf2:7

  ef1:maj7 f2:m7 bf2:7 ef1:maj7 f2:m7 bf2:7 
  bf1:m7 ef1:7 af1:maj7 af1:6

  f1:7 fs1:dim7 g1:m7 c1:7
  f1:m7 bf1:7 ef1:maj7
  \chordOpenParen{ f2:m7 }
  \chordCloseParen{ bf2:7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Chet Baker 1954]" 4 = 160

  \xTextMark \markup{ \bold \box "A1" }
  
  g2 g2 | r4 af4 f4 af4 | ef2 ef2 | r4 f4 g4 af4 |
  \break
  bf2 bf2 | ef4 d2 c4 | bf1 | r4 ef,4 f4 g4 |
  
  \sect "B"
  
  af2 af2 | r4 c,4 d4 f4 | bf2 bf2 | r4 g4 bf4 c4 |
  \break
  ef2 ef2~ | ef2 d2 | bf4. c8 bf4. c8 | bf4. c8 af4. bf8 |

  \sect "A2"
  
  g2 g2 | r4 af4 f4 af4 | ef2 ef2 | r4 f4 g4 af4 |
  \break
  bf2 bf2 | bf4 af2 g4 | c1 | r4 c4 b4 c4 |
  
  \sect "C"
  
  f2 d2 | r4 ef4 c4 d4 | bf2 bf2 | r4 g4 d'4 c4 |
  \break
  af2 af2 | af8 bf8 g2 f4 | ef1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
