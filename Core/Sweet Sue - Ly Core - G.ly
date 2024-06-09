%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Sweet Sue - Just You"
  subtitle = \instrument
  poet = "Will J. Harris"
  composer = "Victor Young"
  copyright = "© 1928 Shapiro, Bernstein & Co."
}

refrainLyrics = \lyricmode {
  Ev' -- ry star a -- bove __ knows the one I love, __
  Sweet Sue, __ just you. __
  And the moon up high __ knows the rea -- son why __ Sweet Sue, __ it's you. __
  No one else it seems __ ev -- er shares my dreams, __ 
  and with -- out you dear, I don't know what I'd do.
  In this heart of mine __ you live all the time, __ Sweet Sue, __ just you. __
}

refrainChords = \chordmode {
  s2
  a1:m7 d1:7 a1:m7 d1:7
  g1:6 a2:m7 d2:7 g1:6 g2/b bf2:dim7

  a1:m7 d1:7 a1:m7 d1:7
  g1:6 a2:m7 d2:7 g1:6 g1:6

  g1 fs1:7 f1:7 e1:7
  a1:m7 a1:m7 c1:m6 c1:m6

  a1:m7 d1:7 a1:m7 d1:7
  g1:6 a2:m7 d2:7 g1:6
  \chordOpenParen{ g2/b } \chordCloseParen{ bf2:dim7 }
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Fast Swing" 4 = 180

  \partial 2 d4 e4 |

  \bar "||"
  \textMark \markup{ \bold \box "A1" }
  
  a4 a4 a2~ | a2 d,4 e4 | a4 a4 a2~ | a2 b2 | 
  \break
  e,1~ | e2 b'2 | e,1~ | e2 d4 e4 |
  
  \bar "||"
  \break

  \textMark \markup{ \bold \box "A2" }
  
  a4 a4 a2~ | a2 d,4 e4 | a4 a4 a2~ | a2 b2 | 
  \break
  e,1~ | e2 b'2 | e,1~ | e2 b'4 c4 |
  
  \bar "||"
  \break

  \textMark \markup{ \bold \box "B" }
  
  d4 d4 d2~ | d2 b4 c4 | d4 d4 d2~ | d2 ds,4 e4 |
  \break
  c'4 c4 c4 c4 | c4 c4 b4 a4 | c1~ | c2 d,4 e4 |

  \bar "||"
  \break

  \textMark \markup{ \bold \box "A3" }

  a4 a4 a2~ | a2 d,4 e4 | a4 a4 a2~ | a2 b2 | 
  \break
  e,1~ | e2 b'2 | e,1~ | e4 r4 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
