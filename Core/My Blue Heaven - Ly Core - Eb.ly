%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "My Blue Heaven"
  subtitle = \instrument
  poet = "George Whiting"
  composer = "Walter Donaldson"
  copyright = "© 1927 Leo Feist Inc."
}

refrainLyrics = \lyricmode {
When whip -- poor -- wills call, and eve -- ning is nigh,
I hur -- ry to my blue hea -- ven. __
A turn to the right, a lit -- tle white light,
Will lead you to my blue hea -- ven. __

You'll see a smi -- ling face, a fi -- re -- place, a co -- zy room, __
A lit -- tle nest that's nest -- led where the ro -- ses bloom;
Just Mol -- ly and me, and ba -- by makes three,
We're hap -- py in my blue hea -- ven. __
}

refrainChords = \chordmode {
  s2.
  
  ef1 ef1 ef1 c1:7
  f1:7 bf1:7 ef1 f2:m7 bf2:7

  ef1 ef1 ef1 c1:7
  f1:7 bf1:7 ef1 bf2:m7 ef2:7
  
  af1 c1:7 f1:m f1:m
  bf1:7 bf1:7 ef2 e2:dim7 f2:m7 bf2:7

  ef1 ef1 ef1 c1:7
  f1:7 bf1:7 ef2 
  \chordOpenParen{ af2 }
  ef2
  \chordCloseParen{ bf2:7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Swing" 4 = 180
  
  \partial 2. g4 bf8 c8 ef4 |
  \bar "||"

  \textMark \markup{ \bold \box "A1" }
  
  c1 | r4 ef,4 g8 bf8 c4 | bf1 | r4 bf,4 c8 ef8 g4 |
  \break
  f1 | g1 | f4 ef4~ ef2 | r4 g4 bf8 c8 ef4 |
  
  \bar "||"
  \break

  \textMark \markup{ \bold \box "A2" }
  
  c1 | r4 ef,4 g8 bf8 c4 | bf1 | r4 bf,4 c8 ef8 g4 |
  \break
  f1 | g1 | f4 ef4~ ef2 | r4 ef'4 ef4 ef4 |
  
  \bar "||"
  \break

  \textMark \markup{ \bold \box "B" }
  
  ef4 d4 d4 c4 | c4 bf4 bf4 c4 | bf4 af4 c2~ | c2. d4 |
  \break
  d4 c4 c4 bf4 bf4 af4 af4 bf4 | af4 g4 bf2 | r4 g4 bf8 c8 ef4 |
  
  \bar "||"
  \break

  \textMark \markup{ \bold \box "A3" }

  c1 | r4 ef,4 g8 bf8 c4 | bf1 | r4 bf,4 c8 ef8 g4 |
  \break
  f1 | g1 | f4 ef4~ ef2 | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
