%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Solitude"
  subtitle = \instrument
  poet = "Eddie de Lange & Irving Mills"
  composer = "Duke Ellington"
  copyright = "© 1934 Milsons Music Publishing Corp."
}

refrainLyrics = \lyricmode {
In my sol -- i -- tude __ you haunt me with re -- ver -- ies __
of days gone by. __
In my sol -- i -- tude __ you taunt me with mem -- o -- ries __
that nev -- er die. __
I sit in my chair, I'm filled with des -- pair.
Thre's no -- one could be so sad.
With gloom ev -- 'ry -- where, I sit and I stare.
I know that I'll soon go mad.
In my sol -- i -- tude __ I'm pray -- ing,
“Dear Lord a -- bove, __ send back my love.”
}

refrainChords = \chordmode {
  s2
  
  ef1:maj7 ef2:maj7 c2:m7 f1:7 f1:7
  f1:m7 bf1:7 ef1:maj7 f2:m7 bf2:7.5+

  ef1:maj7 ef2:maj7 c2:m7 f1:7 f1:7
  f1:m7 bf1:7 ef1:maj7 ff2:maj7 ef2:7
  
  af1:maj7 a1:dim7 ef1:6/bf bf2:m7 ef2:7
  af1:maj7 a1:dim7 ef2:6/bf g4:m7 c4:7 f2:m7 bf2:7.5+

  ef1:maj7 ef2:maj7 c2:m7 f1:7 f1:7
  f1:m7 bf1:7 ef1:maj7
  \chordOpenParen{ f2:m7 }
  \chordCloseParen{ bf2:7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad" 4 = 70

  \partial 2 bf4 c4 |
  \bar "||"

  \mark \markup{ \box "A1" }
  
  d4 d4 d2~ | d2 ef2 | ef1 | g,2. c4 |
  \break
  c4 bf4 bf2~ | bf4 af4 af4 g4 | g1~ | g2 bf4 c4 |
  
  \bar "||"
  \break

  \mark \markup{ \box "A2" }
  
  d4 d4 d2~ | d2 ef2 | ef1 | g,2. c4 |
  \break
  c4 bf4 bf2~ | bf4 af4 af4 g4 | g1~ | g2 r4 r8 c8 |
  
  \bar "||"
  \break

  \mark \markup{ \box "B" }
  
  ef8 c8 ef4 ef,4. c'8 | ef8 c8 ef4 ef,4. c'8 | ef8 c8 ef4 c4 g4 | f2. r8 c'8 |
  \break
  ef8 c8 ef4 ef,4. c'8 | ef8 c8 ef4 ef,4. c'8 | ef8 c8 ef4 c4 c4 | c2 bf4 c4 |

  \bar "||"
  \break

  \mark \markup{ \box "A3" }

  d4 d4 d2~ | d2 ef2 | ef1 | g,2. c4 |
  \break
  c4 bf4 bf2~ | bf4 af4 af4 af4 | g1 | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
