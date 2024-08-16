%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "'S Wonderful"
  subtitle = \instrument
  poet = "Ira Gershwin"
  composer = "George Gershwin"
  copyright = "© 1927 New World Music Corporation"
}

refrainLyrics = \lyricmode {
'S_won -- der -- ful! __ 'S_mar -- vel -- lous! __
You should care __ for me! __
'S_aw -- ful nice! __ 'S_par -- a -- dise! __
'S_what I love __ to see! __
You've made my life so glam -- or -- rous, __
You can't blame me for feel -- ing am -- o -- rous. __
Oh! 'S_won -- der -- ful! __ 'S_mar -- vel -- lous! __
That you should care for me!
}

refrainChords = \chordmode {
  ef1:6 ef1:6 e1:dim7 e1:dim7
  f1:m7 bf1:7 ef2:6 c2:m7 f2:m7 bf2:7

  ef1:6 ef1:6 e1:dim7 e1:dim7
  f1:m7 bf1:7 ef1:6 a2:m7 d2:7.9-

  g2:maj7 \chordInsideParens{ e2:m7 } a2:m7 d2:7
  g2:maj7 \chordInsideParens{ e2:m7 } a2:m7 d2:7
  g1:7 c1:7 f1:7 bf2:7 bf2:7.9-

  ef1:6 ef1:6 gf1:dim7 gf1:dim7
  f1:m7 bf1:7 ef2:6
  \chordOpenParen{ c2:m7 }
  f2:m7
  \chordCloseParen{ bf2:7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 132

  \xTextMark \markup{ \bold \box "A1" }
  
  bf4. bf8 g2~ | g1 | bf4. bf8 g2~ | g1 | 
  \break
  bf4. bf8 g2~ | g2 bf2 | ef,1~ | ef2 r2 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  bf'4. bf8 g2~ | g1 | bf4. bf8 g2~ | g1 | 
  \break
  bf4. bf8 g2~ | g2 bf2 | c1~ | c2 ef2 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  d1 | r4 d4 d4 d4 | e4. d8 d2~ | d1 |
  \break
  r4 d4 d4 d4 | d4 d4 d4 d4 | d4. c8 c2~ | c2 cf2 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A3" }

  bf4. bf8 g2~ | g1 | ef'4. ef8 c2~ | c1 | 
  \break
  r8 ef4. af,4 g4 | bf2 g2 | ef1 | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
