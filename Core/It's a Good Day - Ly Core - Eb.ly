%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "It's a Good Day"
  subtitle = \instrument
  poet = ""
  composer = "Peggy Lee and Dave Barbour"
  copyright = \markup \small { \now " " "© 1946 Capitol Songs, Inc." }
}

refrainLyrics = \lyricmode {
Yes, it's a good day __ for sing -- in' a song, __ and it's a good day __ for mov -- in a -- long. __
Yes, it's a good day, __ how could an -- y -- thing go wrong, a good day from morn -- in' till night. __

Yes, it's a good day __ for shin -- in' your shoes, __ and it's a good day __ for los -- in' the blues. __
Ev -- 'ry -- thing to gain and noth -- in' to lose, __ 'cause it's a good day from morn -- in' till night. __

I said to the sun, __ “Good morn -- in' sun, __ rise and shine to -- day.” __
You know, you've got -- ta get go -- in' if you're gon -- na make a show -- in',
and you know you've got the right of way,

'cause it's a good day __ for pay -- in' your bills, __ and it's a good day __ for cur -- in' your ills. __
So take a deep breath __ and throw a -- way your pills, 'cause it's a good day from morn -- in' till night. __
}

refrainChords = \chordmode {
  s2.
  
  ef1:6 f1:m7 g1:m7 c1:m7 f1:m7 bf1:7 ef1:6 ef2:6 bf2:7.5+
  ef1:6 f1:m7 g1:m7 c1:m7 f1:m7 bf1:7 ef1:6 bf1:7.5+

  ef1:6 f1:m7 g1:m7 c1:m7 f1:m7 bf1:7 ef1:6 ef1:6
  ef2:6 bf2:7.5+ ef1:6 ef1:6 c1:m7 f1:m7 bf1:7 ef1:6 ef1:6

  ef1:7 ef1:7 af1 af1 f1:7 f1:7 bf1:7 bf2:7 bf2:7.5+
  ef1:6 e1:dim7 bf1:7/f e1:dim7 bf1:7 e1:dim7 bf1:7 bf2:7 bf2:7.5+

  ef1:6 f1:m7 g1:m7 c1:m7 f1:m7 bf1:7 ef1:6 ef2:6 bf2:7.5+
  ef1:6 f1:m7 g1:m7 c1:m7 f1:m7 bf1:7 ef1:6
  \chordOpenParen{ f2:m7 }
  \chordCloseParen{ bf2:7 }
}

refrainKey = ef

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Up [Peggy Lee 1946]" 4 = 248

  \partial 2. bf,4 c4 ef4 |
  \bar "||"

  \sectStart "A1"
  
  g2 g2~ | g2. fs4 | g4 f4 ef4 g4~ | g4 ef4 f4 ef4 |
  \break
  f2 f2~ | f2. ef4 | g4 ef4 c4 ef4~ | ef4 bf'4 c4 bf4 |
  \break
  c4 g2.~ | g4 g2 fs4 | g4 f4 ef4 c4 | ef2. c4 |
  \break
  f4 f2 ef4 | f4 ef4 c4 ef4~ | ef1 | r4 bf'4 c4 bf4 |
  
  \sect "A2"

  c2. c4~( | c4 g2) fs4 | g4 bf4 c4 g4~ | g4 ef4 f4 ef4 |
  \break
  f2 f2~ | f2. ef4 | g4 ef4 c4 ef4~ | ef1 |
  \break
  c'4 bf4 c4 bf4 | g2. fs4 | g4 bf4 c4 g4~ | g4 ef4 f4 ef4 |
  \break
  f4 f2 ef4 | f4 ef4 c4 ef4~ | ef1~ | ef2. ef4 |
  \bar "||"

  \xPageBreak

  \sectNoBar "B"
  
  f4 ef4 gf4 f4~ | f2. ef4 | ef'2 c2 | gf4( f2.) |
  \break
  r4 f2 ef4 | f2 ef4 f4~ | f1 | r4 bf4 c4 bf4 |
  \break
  c4 bf4 c2 | c4 bf4 c4 bf4 | c4 bf4 c4 bf4 | c4 bf2. | 
  \break
  c4 bf4 c4 bf4 | c4 bf4 df4 c4 | bf1 | r4 bf4 c4 bf4 |
  
  \sect "A3"
  
  c4 g2.~ | g2. fs4 | g4 bf4 c4 g4~ | g4 ef4 f4 ef4 | 
  \break
  f2 f2~ | f2. ef4 | g4 ef4 c4 ef4~ | ef4 bf'4 c4 bf4 |
  \break
  c2 g2~ | g2. fs4 | g4 f4 ef4 c4 | ef4 bf4 c4 ef4 |
  \break
  f4 f2 ef4 | f4 ef4 c4 ef4~ | ef1~ | ef2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
