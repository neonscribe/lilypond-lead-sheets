%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Moment's Notice"
  subtitle = \instrument
  poet = ""
  composer = "John Coltrane"
  copyright = \markup \small "© 1957 Jowcol Music"
}

refrainChords = \chordmode {
  e2:m7 a2:7 f2:m7 bf2:7 ef1:maj7 af2:m7 df2:7
  d2:m7 g2:7 ef2:m7 af2:7 df1:maj7 d2:m7 g2:7
  c1:m7 bf2:m7 ef2:7 af1:maj7 df1:7
  g2:m7 c2:m7 f2:m7 bf2:7 ef1/bf f1:m/bf
  g1/bf f1/bf ef2/bf f2:m/bf g2:m/bf f4.:m/bf ef8 r1*2
  
  e2:m7 a4.:7 f8*3:m7 bf2.:7 ef1:maj7 af2:m7 df2:7
  d2:m7 g4.:7 ef8*3:m7 af2.:7 df1:maj7 d2:m7 g2:7
  c1:m7 bf2:m7 ef2:7 af1:maj7 df1:7

  g2:m7 c2:7 af2:m7 df2:7 gf1:maj7 f2:m7 bf2:7


  g2:m7 c2:7 f2:m7 bf2:7 ef1/bf f1:m/bf
  g1:m/bf f1:/bf ef2/bf f2:m/bf g2:m/bf f2:m/bf
  ef4 r4*7
  
  ef1:7.9+
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Fast Swing [John Coltrane 1957]" 4 = 236

  \sectStart "Intro"
  
  r8 g4. g4 g4 | g4. f8 g8 f4 bf8~ | bf1 | r1 |
  \break
  r8 f4. f4 f4 | f4. ef8 f8 ef4 af8~ | af1 | g2 f4. ef8~ |
  \break
  ef1 | c'1 | bf2 g4. ef8~ | ef2 f4. g8~ |
  \break
  g2 ef4. f8~ | f4. ef8 d8 ef8 f8 g8 | ef1 | f1 |
  \break
  g1 | f1 | ef2 f2 | g2 f4. ef8 | r1^"(Fill)" | r1 |
  \bar "||"
  
  \xPageBreak
  
  \sectNoBarNoBreak "Head"
  
  \bar ".|:-||"
  \repeat volta 2 {
  r8 g4. g4 r8 g8~ | g4 g4 r8 g4 r8 | r8 g4. af4 bf4 | bf4. af8~ af2 |
  \break
  r8 f4. f4 r8 f8~ | f4 f4 r8 f4 r8 | r8 f4. g4 af4 | g2 f8 g4 f8 |
  \break
  ef2~ ef4. c'8~ | c2~ c4. bf8~ | bf2 g4. ef8~ | ef2 f2 |

  \alternative { \volta 1 {
  r8 g4. af4. bf8~ | bf2 cf4. df8~ | df4. bf8 gf8 ef8 gf8 ef8~ | ef4. f8 r2 |
  \break
  } \volta 2 {
  g2. ef4 | ef2 f4. ef8~ | ef2. g8 f8~ | f2. af8 g8~ |
  \break
  g2. ef8 f8~ | f2 d4 c8 bf8~ | bf1 | r1 \textToCodaLastTime | \rsq r4^"(Solo break)" r2 | r1 |
  } } }
  \bar "|."

  \textCoda

  r1\fermata

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup{ "Solo on " \box "Head" ", take repeat. Chords played on beat. After solos, D.S. al Coda." }
