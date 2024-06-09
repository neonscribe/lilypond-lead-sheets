%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Right or Wrong"
  subtitle = \instrument
  poet = "Haven Gillespie"
  composer = "Arthur Sizemore and Paul Biese"
  copyright = "© 1921 Triangle Music Pub. Co."
}

refrainLyrics = \lyricmode {
  Right or wrong, I'll al -- ways love you.
  Tho' you're gone, I can't for -- get.
  Right or wrong, I'll keep on dream -- ing,
  Tho' I wake with the same old re -- gret.
  All a -- long I thought I'd lose you,
  Still I prayed that you'd be true.
  In your heart please just re -- mem -- ber,
  Right or wrong, I'm still in love with you.
}

refrainChords = \chordmode {
  s2
  
  e1:7 e1:7 a1:7 a1:7
  d1:7 d1:7 g1:6 g1:6
  b1:m bf1:dim7 a1:m7 d1:7
  a1:7 a1:7 d1:7 d1:7
  
  e1:7 e1:7 a1:7 a1:7
  d1:7 d1:7 b1:7 b1:7
  e1:7 e1:7 a1:7 a1:7
  g1:6 d1:7 g1:6 \chordInsideParens{ d1:7 }
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Western Swing" 4 = 180

  \partial 2 as4 b4 |
  \bar "||"

  \textMark \markup{ \bold \box "A1" }
  
  c1~ | c4 b4 gs4 e4 | b'2 a2~ | a2 gs4 a4 |
  \break
  b1~ | b4 a4 fs4 d4 | e1~ | e4 r4 cs4 d4 |
  
  \bar "||"
  \break

  \textMark \markup{ \bold \box "B" }
  
  a'1~ | a4 g4 fs4 e4 | fs2 a2~ | a2 fs4 a4 |
  \break
  fs2 e4 fs4 | e2 b'4 bf4 | a1~ | a4 r4 as4 b4 |
  
  \bar "||"
  \break

  \textMark \markup{ \bold \box "A2" }
  
  c1~ | c4 b4 gs4 e4 | b'2 a2~ | a2 gs4 a4 |
  \break
  b1~ | b4 a4 b4 c4 | b1~ | b2 as4 b4 |
  
  \bar "||"
  \break

  \textMark \markup{ \bold \box "C" }

  d1~ | d4 b4 b4 d4 | b2 a2~ | a2 g4 a4 |
  \break
  b2. as4 | b4 c4 a4 b4 | g1~ | g4 r4 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
