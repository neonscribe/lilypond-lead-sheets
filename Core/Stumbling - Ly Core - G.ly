%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Stumbling"
  subtitle = \instrument
  poet = ""
  composer = "Zez Confrey"
  copyright = \markup \small "© 1922 Leo Feist, Inc."
}

refrainLyrics = \lyricmode {
Stum -- bling all a -- round, stum -- bling all a -- round,
stum -- bling all a -- round so fun -- ny.
Stum -- bling here and there, stum -- bling ev -- 'ry -- where,
And I must de -- clare:
I stepped right on her toes, and when she bumped my nose,
I fell and when I rose, I felt a -- shamed.
And told her:
That's the la -- test step, that's the la -- test step,
that's the la -- test step, my hon -- ey.
No -- tice all the pep, no -- tice all the pep,
no -- tice all the pep. She said:
Stop mum -- bling, tho' you are stum -- bling, I like it
just a lit -- tle bit, just a lit -- tle bit, quite a lit -- tle bit.
}

refrainChords = \chordmode {
  g1 g1 g2 g2:7 f2:7 e2:7
  a1:7 a1:7 a1:7 a1:7
  d1:7 b1:7 e1:m e1:m
  a1:7 a1:7 d1:7 d1:7

  g1 g1 g2 g2:7 f2:7 e2:7
  a1:7 a1:7 a1:7 a1:7
  c1:m c1:m g1 e1:7
  a1:m7 d1:7 g2
  \chordOpenParen{ bf2:dim7 }
  a2:m7
  \chordCloseParen{ d2:7 }
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Lively [Paul Whiteman 1922]" 4 = 184

  \xTextMark \markup{ \bold \box "A1" }
  
  d8 e8 g8 a8 b4-. d,8 e8 | g8 a8 b4-. d,8 e8 g8 a8 |
  b4-. r4 d2-> | c2-> b2-> |
  \break
  a8 af8 g8 fs8 e4-. a8 af8 | g8 fs8 e4-. a8 af8 g8 fs8 | e1 | r4 e4 g4 e4 |
  
  \sect "B"
  
  e8 fs4 fs8~ fs2 | r4 fs4 a4 fs4 | fs8 g4 g8~ g2 | r4 g4 b4 g4 |
  \break
  g8 a4 a8~ a2 | r4 a4 cs4 a4 | d1 | r4 c4 a4 fs4 |

  \sect "A2"
  
  d8 e8 g8 a8 b4-. d,8 e8 | g8 a8 b4-. d,8 e8 g8 a8 |
  b4-. r4 d2-> | c2-> b2-> |
  \break
  a8 af8 g8 fs8 e4-. a8 af8 | g8 fs8 e4-. a8 af8 g8 fs8 | e1 | r4 b'4 b4 a4 |
  
  \sect "C"
  
  c2 ef,2 | r4 c'4 c4 c4 | b2 d,2 | r4 d4 e4 g4 |
  \break
  b8 a8 g8 fs8 e4-. c'8 b8 | a8 g8 fs4-. d'8 c8 b8 a8 | g1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
