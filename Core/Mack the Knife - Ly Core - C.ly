%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Mack the Knife"
  subtitle = \instrument
  poet = "Bertolt Brecht/Marc Blitzstein"
  composer = "Kurt Weill"
  copyright = \markup \small "© 1928 Universal Edition AG Wien"
}

refrainChords = \chordmode {
  s2
  
  c1:6 c1:6 d1:m7 d1:m7
  g1:9 g1:9 c1:6 c2:6 c2
  a1:m a2:m a2:m7 d1:m7 d1:m7
  f1:6/g f2.:6/g g4:7 c1:6 c2:6 g2:9
  
  c1:6 c1:6 d1:m7 d1:m7
  g1:9 g1:9 c1:6 c2:6 c2
  a1:m a2:m a2:m7 d1:m7 d1:m7
  f1:6/g f2.:6/g g4:7 c1:6 c2:6 \chordInsideParens{ g2:9 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 166

  \partial 2 e4. g8 |
  \bar "||"
  
  a2 a2~ | a2 e4. g8 | a2 a2~ | a2 d,4. f8 |
  \break
  a2 a2~ | a2 d,4. f8 | a1~ | a2 g4. b8 |
  
  \break

  d2 c2~ | c2 b4. a8 | c2  d,2~ | d2 e4. f8 |
  \break
  c'2 d,2~ | d2 c'4 b4 | a1~ | a2 e4. g8 |
  
  \break
  \bar "||-||"

  a2 a2~ | a2 e4. g8 | a2 a2~ | a2 d,4. f8 |
  \break
  a2 a2~ | a2 d,4. f8 | a1~ | a2 g4. b8 |
  
  \break

  d2 c2~ | c2 b4. a8 | c2  d,2~ | d2 e4. f8 |
  \break
  c'2 d,2~ | d2 c'4 b4 | a1~ | a2
  \override Parentheses.font-size = #5
  \startParenthesis \parenthesize
  e4.
  \endParenthesis \parenthesize
  g8 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
