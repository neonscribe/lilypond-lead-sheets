%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Just Friends"
  subtitle = \instrument
  poet = "Sam M. Lewis"
  composer = "John Klenner"
  copyright = "© 1931 Metro-Goldwyn-Mayer, Inc."
}

refrainLyrics = \lyricmode {
  Just friends, __ lov -- ers no more. __
  Just friends, __ but not like be -- fore. __
  To think of what we've been and 
  not to kiss a -- gain seems like pre -- tend -- ing. __
  It is -- n't the end -- ing.
  
  Two friends __ drift -- ing a -- part,
  Two friends __ but one bro -- ken heart. __
  We loved, we laughed, we cried and sud -- den -- ly love died.
  The sto -- ry ends and we're just friends. __
}

refrainNRChords = \chordmode {
  s2
  
  c1:maj7 c2:maj7 c2:6 c1:m7 f1:7
  g1:maj7 g1:maj7 bf1:m7 ef1:7
  a1:m7 d1:7 g1:maj7 e1:m7
  a1:9 a1:9 a1:m7 d2:7 g2:7
  
  c1:maj7 c2:maj7 c2:6 c1:m7 f1:7
  g1:maj7 g1:maj7 bf1:m7 ef1:7
  a1:m7 d1:7 fs2:m7.5- b2:7 e1:m7
  a1:9 a2:m7 d2:7 g1:6

  \chordOpenParen{ d2:sus7 }
  \chordCloseParen{ g2:7 }
}

refrainHLChords = \chordmode {
  s2
  
  c1:maj7 c1:maj7 c1:m7 f1:7
  g1:maj7 g1:maj7 bf1:m7 ef1:7
  a1:m7 d1:7 fs2:m7.5- b2:7.9+ e1:m7
  a1:7 a1:7 a2:m7 d2:7 d2:m7 g2:7
  
  c1:maj7 c1:maj7 c1:m7 f1:7
  g1:maj7 g1:maj7 bf1:m7 ef1:7
  a1:m7 d1:7 fs2:m7.5- b2:7.9+ e1:m7
  a1:7 a2:m7 d2:7 g1:6
  \chordOpenParen{ d2:m7 }
  \chordCloseParen{ g2:7 }
}

refrainChords = \refrainHLChords

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 140

  \partial 2 b2 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  b1~ | b2 \tuplet 3/2 { a4 b4 a4 } | ef1~ | ef2 a2 |
  \break
  a1~ | a4 a4 \tuplet 3/2 { g4 a4 g4 } | df1~ | df2. g4 |
  
  \sect "B"
  
  g4. e8 g4. e8 | fs2. fs4 | fs4. d8 fs4. d8 | e4 fs4 g4 b4 |
  \break
  e2 b2~ | b4 e,4 \tuplet 3/2 { e4 fs4 g4 } | b2 a2~ | a2 b2 |
  
  \sect "A2"
  
  b1~ | b2 \tuplet 3/2 { a4 b4 a4 } | ef1~ | ef2 a2 |
  \break
  a1~ | a4 a4 \tuplet 3/2 { g4 a4 g4 } | df1~ | df2. g4 |
  
  \sect "C"

  g4. e8 g4. e8 | fs2. a4 | a4. fs8 a4. fs8 | g4 a4 b4 d4 |
  \break
  e2. e,4 | d'2 b2 | g1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
