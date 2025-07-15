%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  (set-global-staff-size 18))

\header {
  title = "Come Rain or Come Shine"
  subtitle = \instrument
  poet = "Johnny Mercer"
  composer = "Harold Arlen"
  copyright = \markup \small "© 1946 A-M Music Corporation"
}

refrainLyrics = \lyricmode {
I'm gon -- na love you like no -- bod -- y's loved you, come rain or come shine. __
High as a moun -- tain and deep as a riv -- er, come rain or come shine. __
I guess when you met me it was just one of those things.
But don't ev -- er bet me, 'cause I'm gon -- na be true if you let me.
You're gon -- na love me like no -- bod -- y's loved me, come rain or come shine. __
Hap -- py to -- geth -- er, un -- hap -- py to -- geth -- er
and won't it be fine. __
Days may be cloud -- y or sun -- ny, we're in or we're out of the mon -- ey.
But I'm with you al -- ways, I'm with you rain or shine! __
}

refrainChords = \chordmode {
  f1:maj7 e2:m7 a2:7.5+ d2:m7 a2:7.5+ d1:m7
  g2:13 g2:7.5+ g2:m7/c c2:7.9- f1:maj7 c2:m7 b2:7.5-
  
  bf1:m7  f1:m7 bf2:m7 bf2:m7/af g2:m7.5- c2:7.9-
  b2:m7.5- e2:7.9- a2:m7.5- d2:7.9- a2:m7.5- d2:7.9- g4:13 g4:7.5+ c4:9 c4:7.9-

  f1:maj7 e2:m7 a2:7.5+ d2:m7 a2:7.5+ d1:m7
  b1:m7.5- e1:7  a2:13 a2:7.5+ e2:m7 a2:7
  
  a1:m7 d1:7 d1:m7 g1:7
  d2:m7 b2:m7.5- b2:7 a2:7 d1:7.9+ g4:13 g4:7.5+ c4:9 c4:7.9-
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Ballad [Ella Fitzgerald 1961]" 4 = 90

  \xTextMark \markup{ \bold \box "A1" }
  
  a4 a8 a8 a8 a4 a8 | a4 a8 a8 a8 a4 a8 | a8 f8 f8 f8~ f2~ | f1 |
  \break
  a4 a8 a8 a8 a4 a8 | c4 a8 a8 a8 a4 a8 | a8 f8 f8 f8~ f2~ | f1 |
  
  \sect "B"
  
  bf2 bf4 af8 bf8 | c4 f,2 f8 f8 | bf2 bf4 af8 bf8 | c1 |
  \break
  d2 d4 c8 d8 | ef4 c2 c8 d8 | ef8 c8 d4 c4 bf8 g8 | a4 g2. |
  
  \sect "A2"
  
  a4 a8 a8 a8 a4 a8 | a4 a8 a8 a8 a4 a8 | a8 f8 f8 f8~ f2~ | f1 |
  \break
  b4 b8 b8 b8 b4 b8 | b4 b8 b8 b8 b4 b8 | cs8 a8 a8 a8~ a2~ | a1 |

  \sect "C"
  
  d4 d8 d8 d8 d4 d8 | d4 d,2 d4 | d'4 d8 d8 d8 d4 d8 | d4 d,2 e4 | 
  \break
  a4 a8 bf8 b8 d4. | e4 e8 d8 e8( d8) e4 | f16( e16 d8~ d2.) | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
