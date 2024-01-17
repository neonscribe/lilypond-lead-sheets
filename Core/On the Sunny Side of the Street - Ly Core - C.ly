%% -*- Mode: LilyPond -*-

#(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "On the Sunny Side of the Street"
  subtitle = \instrument
  poet = "Dorothy Fields"
  composer = "Jimmy McHugh"
  copyright = "© 1930 Shapiro, Bernstein, & Co. Inc."
}

refrainLyrics = \lyricmode {
Grab your coat and get your hat, Leave your wor -- ry on the door -- step,
Just di -- rect your feet to the sun -- ny side of the street.
Can't you hear that pi -- tter pat? And that hap -- py tune is your step,
Life can be so sweet on the sun -- ny side of the street.

I used to walk in the shade with those blues on pa -- rade,
But I'm not a -- fraid, this ro -- ver, crossed o -- ver.

If I ne -- ver have a cent, I'll be rich as Rock -- e -- fel -- ler,
Gold dust at my feet on the sun -- ny side of the street.

sun -- ny side on the sun -- ny side on the sun -- ny side of the street.
}

refrainChords = \chordmode {
  s4.

  c1:6 e1:7 f1:maj7 c2:6/g e2:7.9-/gs
  a1:m7 d1:7 d2:m7 g2:7 e4:m7 a4:7 d4:m7 g4:7

  c1:6 e1:7 f1:maj7 c2:6/g e2:7.9-/gs
  a1:m7 d1:7 d2:m7 g2:7 c1:6
  
  g1:m7 c1:7 f1:maj7 f1:maj7
  a1:m7 d1:7 d1:m7 g1:7

  c1:6 e1:7 f1:maj7 c2:6/g e2:7.9-/gs
  a1:m7 d1:7 d2:m7 g2:7 c2:6 \chordInsideParens{ g2:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Easy Swing" 4 = 128
  
  \partial 4. e4 d8 |
  \bar "||"

  \mark \markup{ \box "A1" }
  
  c4 r8 d8 e8 g4 e'8~ | e2 r8 e4 ef8 | d8 c4. a4 f4 | e4. d8~ d2 |
  \break
  r8 c4 d8 e8 c'4 d8~ | d2. gs,8 a8 | c8 a4 f8~ f8 e8 d8 g8~ | g2 r8 e4 d8 |
  
  \bar "||"
  \break

  \mark \markup{ \box "A2" }
  
  c4 r8 d8 e8 g4 e'8~ | e2 r8 e4 ef8 | d8 c4. a4 f4 | e4. d8~ d2 |
  \break
  r8 c4 d8 e8 c'4 d8~ | d2. gs,8 a8 | c8 a4 f8~ f8 e8 d8 c8 | r8 c'4. c4 c4 |
  
  \bar "||"
  \break

  \mark \markup{ \box "B" }
  
  c2 d,8 f4 e8~ | e2 c'4 c4 | c2 e,8 g4 f8~ | f2. c'4 |
  \break
  c2 e,8 g4 fs8~ | fs2 r8 a4. | b8 d8 r4 r8 e,4. | f8 a8 r4 r8 e4 d8 |
  
  \bar "||"
  \break

  \mark \markup{ \box "A3" }

  c4 r8 d8 e8 g4 e'8~ | e2 r8 e4 ef8 | d8 c4. a4 f4 | e4. d8~ d2 |
  \break
  r8 c4 d8 e8 c'4 b8~ | b2. gs8 a8 | c8 a4 f8~ f8 e8 d8 c8~ | c2 r2 |
   
  \bar "|."
}

modulationCodaChords = \chordmode {
  d1:m7 g1:7 e1:m7 a1:7 d1:m7 g1:7 c1:6 c4:6
}

modulationCodaMelody = \relative f' {
  \break

  \textCoda
  
  c'8 a4 f8~ f2~ | f2. as8 b8 | d8 b4 fs8~ fs2~ | fs2. gs8 a8 |
  c8 a4 f8~ f2 | e'2 e2 | d8( c4.)~ c2~ | \partial 4 c4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
