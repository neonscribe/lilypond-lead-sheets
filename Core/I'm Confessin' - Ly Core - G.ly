%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "I'm Confessin' (That I Love You)"
  subtitle = \instrument
  poet = "Al J. Neiburg"
  composer = "Doc Dougherty and Ellis Reynolds"
  copyright = \markup \small { \now " " "© 1930 General Music Publications" }
}

refrainLyrics = \lyricmode {
  I'm con -- fess -- in' that I love you,
  Tell me, do you love me too?
  I'm con -- fess -- in' that I need you,
  hon -- est I do, Need you ev' ry mo -- ment.
  
  In your eyes I read such strange things,
  But your lips de -- ny they're true,
  Will your ans -- wer real -- ly change things mak -- ing me blue? __
  
  I a -- fraid some -- day you'll leave me,
  Say -- ing “Can't we still be friends?”
  If you go, you know you'll grieve me, All in life on you de -- pends.
  
  Am I guess -- in' that you love me,
  Dream -- ing dreams of you in vain,
  I'm con -- fess -in' that I love you o -- ver a -- gain. __
}

refrainRBSecondChords = \chordmode {
  g2:maj7 d2:7.5+ g2:maj7 d2:7.5+ g2:maj7 d2:7.5+ b2:m7 e2:7
  e2:m7 a2:7 a2:m7 d2:7 g2:6 e2:m7 a2:m7 d2:7

  g2:maj7 d2:7.5+ g2:maj7 d2:7.5+ g2:maj7 d2:7.5+ b2:m7 e2:7
  e2:m7 a2:7 a2:m7 d2:7 g2:6 c2:m g1:6

  d2:m7 g2:7 d2:m7 g2:7 c2:maj7 g2:7.5+ c2:6 b4:7 bf4:7
  a1:7 e2:m7 a2:7 a2:m7 d2:7 a2:m7 d2:7

  g2:maj7 d2:7.5+ g2:maj7 d2:7.5+ g2:maj7 d2:7.5+ b2:m7 e2:7
  e2:m7 a2:7 a2:m7 d2:7 g2:6 c2:m g1:6
}

refrainDFBChords = \chordmode {
  g1 fs1:7 f1:7 e1:7
  a1:7 d1:7 g2 bf2:dim7 a2:m7 d2:7

  g1 fs1:7 f1:7 e1:7
  a1:7 d1:7 g2 c2:m g1

  g1:7 g1:7 c1 c1
  a1:7 a1:7 d1:7 d1:7

  g1 fs1:7 g1 e1:7
  a1:7 d1:7 g2 \chordOpenParen{ c2:m } g2 \chordCloseParen{ d2:7 }
}

refrainChords = \refrainDFBChords

refrainKey = g

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
  \tempo "Medium [Django Reinhardt 1934]" 4 = 115

  \xTextMark \markup{ \bold \box "A1" }

  d8 e8 fs8 g8 fs4 d4 | fs4 fs2. | d8 e8 fs8 g8 fs4 d4 | fs1 |
  \break
  e8 fs8 g8 b8 a4 g4 | a4 a4 a8 g8 fs4 | g1 | e8 g8 e8 g8 b8 b4. |

  \sect "A2"
  
  d,8 e8 fs8 g8 fs4 d4 | fs4 fs2. | d8 e8 fs8 g8 fs4 d4 | fs1 |
  \break
  e8 fs8 g8 b8 a4 g4 | a4 a4 a8 g8 fs4 | g1~ | g4 r4 r2 |

  \sect "B"
  
  f8 g8 a8 c8 b4 f4 | a4 a2. | g8 a8 b8 c8 b4 g4 | a1 |
  \break
  a8 b8 cs8 d8 cs4 g4 | b4 b2. | a8 b8 c8 e8 c4 b4 | a1 |
  
  \sect "A3"

  d,8 e8 fs8 g8 fs4 d4 | fs4 fs2. | d8 e8 fs8 g8 fs4 d4 | fs1 |
  \break
  e8 fs8 g8 b8 a4 g4 | a4 a4 a8 g8 fs4 | g1~ | g4 r4 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
