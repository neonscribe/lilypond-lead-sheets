%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "I'm Getting Sentimental Over You"
  subtitle = \instrument
  poet = "Ned Washington"
  composer = "George Bassman"
  copyright = \markup \small { \now " " "© 1932 Mills Music, Inc." }
}

refrainLyrics = \lyricmode {
Nev -- er thought I'd fall, but now I hear love call.
I'm get -- tin' sen -- ti -- men -- tal o -- ver you.

Things you say and do, just thrill me through and through,
I'm get -- tin' sen -- ti -- men -- tal o -- ver you.

I thought I was hap -- py, I could live with -- out love.
Now I must ad -- mit love is all I'm think -- ing of.

Won't you please be kind, and just make up your mind
that you'll be sweet and gen -- tle, be gen -- tle with me.
Be -- cause I'm sen -- ti -- men -- tal o -- ver you.
}

refrainChords = \chordmode {
  f1:maj7 b2:m7 e2:7 a1:m7.5- d2:sus7 d2:7
  g1:7 c1:7 f2:6 d2:7 g2:m7 c2:7

  f1:maj7 b2:m7 e2:7 a1:m7.5- d2:sus7 d2:7
  g1:7 c1:7.5+ bf2:m7 b2:dim7 f2:6/c e2:7
  
  a1:m a1:m b1:7 e1:7 b1:m7 e1:7 a2:m7 d2:7 g2:m7 c2:7

  f1:maj7 b2:m7 e2:7 a1:m7.5- d2:sus7 d2:7
  g1:7 c1:7 f4:6 e4:7.5- ef4:7 d4:7 d1:7
  g1:7 c1:7.5+ bf2:m7 b2:dim7 f2:6/c
  \chordInsideParens{ c2:7 }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad [Dorsey Brothers 1932]" 4 = 75

  \sectStart "A1"
  
  e4 f4 a4 c4 | e2. d4 | c4 g4 ef4 c4 | d2. c4 |
  \break
  b4 a'4 f4 d4 | bf4 g'4 e4 c4 | d1 | r1 |
  
  \sect "A2"
  
  e4 f4 a4 c4 | e2. d4 | c4 g4 ef4 c4 | d2. c4 |
  \break
  b4 a'4 f4 d4 | bf4 af'4 af4 g4 | f1 | r1 |
  
  \sect "B"
  
  e4 a4 b4 c4 | b4 a4 b4 c4 | ds2 ds4 b4 | d1 |
  \break
  e,4 fs4 gs4 b4 | e2 e4 d4 | c4 d4 c4 d4 | c2. r4 |

  \sect "A3"

  e,4 f4 a4 c4 | e2. d4 | c4 g4 ef4 c4 | d2. c4 |
  \break
  b4 a'4 f4 d4 | bf4 g'2 gs4 | a4 bf4 c4 d4~ | d2. c,4 |
  \break
  b4 a'4 f4 d4 | bf4 af'4 af4 g4 | f1~ | f2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
