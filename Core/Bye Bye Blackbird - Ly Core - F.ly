%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Bye Bye Blackbird"
  subtitle = \instrument
  poet = "Mort Dixon"
  composer = "Ray Henderson"
  copyright = "© 1926 Jerome H. Remick & Co."
}

refrainLyrics = \lyricmode {
Pack up all my care and woe, here I go sing -- ing low.
Bye, bye, black -- bird. __
Where some -- bod -- y waits for me, Sug -- ar's sweet, so is she,
Bye, bye, black -- bird. __
No one here can love and un -- der -- stand me,
Oh, what hard luck sto -- ries they all hand me.
Make my bed and light the light, I'll ar -- rive late to -- night
black -- bird, __ bye bye.
}

refrainChords = \chordmode {
  f1:maj7 f1:maj7 g2:m7 c2:7 f1:6
  f1/a af1:dim7 g2:m7 c2:7 c1:7
  
  g1:m g1:m7+ g1:m7 g1:m6
  g1:m7 c1:7 f1:6 f1:6
  
  f1:7 e1:9 ef1:9 d1:7
  g1:m7 g1:m7 g1:m7.5- c1:7
  
  f1:maj7 f1:maj7 ef1:7 d1:7
  g1:m7 g2:m7 c2:7 f1:6
  \chordOpenParen{ g2:m7 }
  \chordCloseParen{ c2:7 }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Fast Swing"

  \xTextMark \markup{ \bold \box "A1" }
  
  a4 a4 a4 a4 | bf4 a4 a2 | a4 g4 g2 | g4 f4 f2 |
  \break
  f1 | g1 | f2 e2~ | e1 |
  
  \sect "A2"
  
  bf'4 bf4 bf4 bf4 | c4 bf4 bf2 | bf4 a4 a2 | a4 g4 g2 |
  \break
  g1 | a1 | g2 f2~ | f1 |

  \sect "B"
  
  f4 c'4 c4 c4 | c4 bf4 a4 g4 | g1 | fs1 |
  \break
  d4 bf'4 bf4 bf4 | bf4 a4 g4 f4 | f1 | e1 |
  
  \sect "A3"

  a4 a4 a4 a4 | bf4 a4 a2 | a4 g4 g2 | g4 fs4 f2 |
  \break
  g2 bf2~ | bf2 e,2 | f1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
