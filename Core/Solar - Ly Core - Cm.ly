%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Solar"
  subtitle = \instrument
  poet = ""
  composer = "Miles Davis/Chuck Wayne"
  copyright = "© 1954 Prestige Music"
}

refrainLyrics = \lyricmode {
}

refrainRealBookSixthChords = \chordmode {
  c1:m c1:m g1:m7 c1:7
  f1:maj7 f1:maj7 f1:m7 bf1:7
  ef1:maj7 ef2:m7 af2:7 df1:maj7 d2:m7.5-  g2:7.9-

  c1:m c1:m g1:m7 c1:7
  f1:maj7 f1:maj7 f1:m7 bf1:7
  ef1:maj7 ef2:m7 af2:7 df1:maj7
  \chordOpenParen{ d2:m7.5- }
  \chordCloseParen{ g2:7.9- }
}

refrainNewRealOneChords = \chordmode {
  c1:m7+ c1:m7+ c1:m7 g2:m7 c2:7
  f1:maj7 f1:maj7 f1:m7 bf1:7
  ef1:maj7 ef2:m7 af2:7 df1:maj7 d2:m7.5- g2:7.9-

  c1:m7+ c1:m7+ c1:m7 g2:m7 c2:7
  f1:maj7 f1:maj7 f1:m7 bf1:7
  ef1:maj7 ef2:m7 af2:7 df1:maj7 df1:maj7
}

refrainMixedChords = \chordmode {
  c1:m7+ c1:m7+ g1:m7 c1:7
  f1:maj7 f1:maj7 f1:m7 bf1:7
  ef1:maj7 ef2:m7 af2:7 df1:maj7 d2:m7.5-  g2:7.9-

  c1:m7+ c1:m7+ g1:m7 c1:7
  f1:maj7 f1:maj7 f1:m7 bf1:7
  ef1:maj7 ef2:m7 af2:7 df1:maj7
  \chordOpenParen{ d2:m7.5- }
  \chordCloseParen{ g2:7.9- }
}

refrainChords = \refrainMixedChords

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium" 4 = 165

  r4 r8 c'8 b4-. d8 c8 | r8 g4.~ g4. a8 | bf4-. bf4 a4 c8 bf8~ | bf1 |
  \break
  r8 a4. gs4-. bf8 a8 | r8 c,4.~ c4 f8 g8 | af4-. af4 g4 bf8 af8~ | af2 r2 |
  \break
  r8 g8 f8 ef8 d4 c4-. | gf'4 f8 ef8 df4 c4-. | f2 r2 | r8 d8 d8 e8 f8 g8 af8 bf8 |
  \bar "$"
  \break

  b4 c4 d4. c8 | r8 c,4. f4. g8 | af4 af4 g4 bf8 af8~ | af2 r2 |
  \break
  r8 a4. gs4 bf8 a8 | r8 c,4.~ c4 f8 g8 | af4 af4 g4 bf8 af8~ | af2 r2 |
  \break
  r8 g8 f8 ef8 d4 c4-. | gf'4 f8 ef8 df4 c4-. | f1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
