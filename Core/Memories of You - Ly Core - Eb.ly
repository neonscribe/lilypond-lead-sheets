%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

$(if (and (defined? 'printNoteNames) printNoteNames)
   (set-global-staff-size 18))

\header {
  title = "Memories of You"
  subtitle = \instrument
  poet = "Andy Razaf"
  composer = "Eubie Blake"
  copyright = \markup \small { \now " " "© 1930 Shapiro, Berstein & Co." }
}

refrainLyrics = \lyricmode {
Walk -- ing skies at sun -- rise, ev -- 'ry sun -- set, too,
Seems to be bring -- ing me mem -- o -- ries of you.
Here and there, ev -- 'ry -- where, scenes that we once knew,
And they all just re -- call mem -- o -- ries of you.
How I wish I could for -- get those hap -- by yes -- ter -- years
that have left a ro -- sa -- ry -- of tears. __
Your face beams in my dreams, spite of all I do,
Ev -- 'ry -- thing seems to bring mem -- o -- ries of you.
}

refrainChords = \chordmode {
  ef2:maj7 e2:dim7 f2:m7 fs2:dim7 ef2/g c2:m7 a2:m7.5- af2:m6
  ef2:maj7 d2:7.9- g2:m7 c2:7.9- f2:m7 bf2:7 ef2:6 f4:m7 bf4:7

  ef2:maj7 e2:dim7 f2:m7 fs2:dim7 ef2/g c2:m7 a2:m7.5- af2:m6
  ef2:maj7 d2:7.9- g2:m7 c2:7.9- f2:m7 bf2:7 ef2:6 d4:m7.5- g4:7

  c1:m7 af1:7 c1:m7 f2:7 g2:7
  c2:m7 g2/b c2:m/bf a2:m7.5- g2:m7 c2:7 f2:m7 bf2:7

  ef2:maj7 e2:dim7 f2:m7 fs2:dim7 ef2/g c2:m7 a2:m7.5- af2:m6
  ef2:maj7 d2:7.9- g2:m7 c2:7.9- f2:m7 bf2:7 ef2:6
  \chordOpenParen{ f4:m7 }
  \chordCloseParen{ bf4:7 }
}

refrainKey = ef

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
  \tempo "Swing [Duke Ellington 1930]" 4 = 182

  \xTextMark \markup{ \bold \box "A1" }
  
  bf,4 c4 c2 | c4 d4 d2 | d4 ef4 g4 bf4 | f'2. r4 |
  \break
  ef4 c4 c2 | bf4 g4 g2 | f4 c4 c4 c4 | ef2 r2 |

  \sect "A2"
  
  bf4 c4 c2 | c4 d4 d2 | d4 ef4 g4 bf4 | f'2. r4 |
  \break
  ef4 c4 c2 | bf4 g4 g2 | f4 c4 c4 c4 | ef2 r2 |

  \sect "B"
  
  g4 c4 d4 ef4 | af,4 c4 d4 ef4 | g,4 c4 d4 ef4 | g,1 |
  \break
  g4 c4 d4 ef4 | ef4 c4 c4 g4 | bf1 | r1 |
  
  \sect "A3"

  bf,4 c4 c2 | c4 d4 d2 | d4 ef4 g4 bf4 | f'2. r4 |
  \break
  ef4 c4 c2 | bf4 g4 g2 | f4 c4 c4 c4 | ef2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
