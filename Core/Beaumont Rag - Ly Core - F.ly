%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Beaumont Rag"
  subtitle = \instrument
  poet = ""
  composer = "Traditional"
  copyright = ""
}

straightEighths = ##t

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  s2.

  c1:7 c1:7 f1 f1
  c1:7 c1:7 f1 f1
  
  c1:7 c1:7 f1 f1
  bf2 b2:dim7 f2/c d2:7 g2:7 c2:7 f1

  c1:7 c1:7 f1 f1
  c1:7 c1:7 f4 r4*7
  
  c1:7 c1:7 f1 f1
  bf2 b2:dim7 f2/c d2:7 g2:7 c2:7 f1
}

refrainKey = f

refrainMelody =  \relative f' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo 2 = 80

  \partial 2. c'4 b4 c4 |
  \bar "$"
  
  \xTextMark \markup{ \bold \box "A" }
  
  bf'4 bf4 g2 | e8 g8 e8 c8~ c2 | a'4 a4 f8 g8 f8 c8 | d8 c8 a8 d8 c2 |
  \break
  c8 d8 e8 g8~ g8 a8 g8 e8 | a8 g8 e8 c8~ c8 d8 c8 a8 |
  f8 g8 a8 c8~ c8 d8 c8 a8 | d8 c8 a8 d8 c2 |
  \break
  bf'4 bf4 g2 | e8 g8 e8 c8~ c2 | a'4 a4 f8 g8 f8 c8 | d8 c8 a8 d8 c2 |
  \break
  bf8 c8 d8 f8~ f4 g8 f8 | a8 g8 f8 d8 c2 | e8 d8 c8 d8~ d8 c8 a4 | f1 |
  \break
  \bar "$"

  \xTextMark \markup{ \bold \box "B" }
  
  e4 c'8 d8 c2 | e8 d8 c8 e8 d8 c8 a8 g8 | g4 f'8 g8 f2 | a8 g8 f8 a8 g8 f8 d8 c8 |
  \break
  e,4 c'8 d8 c2 | e8 d8 c8 e8 d8 c8 d8 e8 | 
  f8 d8 c8 f8 d8 c8 a8 bf8 | c8 d8 c8 a8 g8 f8 d8 ef8 |
  \break
  e4 c'8 d8 c2 | e8 d8 c8 e8 d8 c8 a8 g8 | g4 f'8 g8 f2 | a8 g8 f8 a8 g8 f8 d8 c8 |
  \break
  bf8 c8 d8 f8~ f4 g8 f8 | a8 g8 f8 d8 c2 | e8 d8 c8 d8~ d8 c8 a4 | f1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

