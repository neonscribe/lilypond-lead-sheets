%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Lady Bird"
  subtitle = \instrument
  poet = ""
  composer = "Tadd Dameron"
  copyright = "© 1947 Consolidated Music Publishers, Inc."
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  c1:maj7 c1:maj7 f1:m7 bf1:7
  c1:maj7 c1:maj7 bf1:m7 ef1:7
  af1:maj7 af1:maj7 a1:m7 d1:7
  d1:m7 g1:7 c2:maj7 
  \chordOpenParen{ ef2:maj7 }
  af2:maj7
  \chordCloseParen{ df2:maj7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 174

  r8 g4. g4-. g4-. | g4. g8~ g4 g4-. | bf2 \tuplet 3/2 { af4 c,4 ef4 } | g4. e8~ e4 r4 |
  \break
  r8 g4. g4-. g4-. | g4. g8~ g4 g4-. | c2 \tuplet 3/2 { bf4 df,4 f4 } | c'4. a8~ a4 r4 |
  \break
  r8 bf4. a4-. af4-. | bf4-- a8 af8 r2 | r8 b4. bf4-. a4-. | b4-- bf8 a8 r2 |
  \break
  c2~ c8 a8 f8 e8~ | e2  cs4 d8 g8~ | g1~ | g2. r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
