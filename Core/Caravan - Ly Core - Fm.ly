%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 16) #}
)

\header {
  title = "Caravan"
  subtitle = \instrument
  poet = "Irving Mills"
  composer = "Duke Ellington and Juan Tizol"
  copyright = \markup \small { \now " " "© 1937 American Academy of Music, Inc." }
}

refrainLyrics = \lyricmode {
Night __ and stars a -- bove that shine so bright __
The mys -- t'ry of their fad -- ing light __
That shines up -- on our car -- a -- van. __

Sleep __ up -- on my shoul -- der as we creep __
A -- cross the sands so I may keep __
This mem -- 'ry of our car -- a -- van.

This __ is so ex -- cit -- ing,
you __ are so in -- vit -- ing
Rest -- ing in my arms as I thrill to the mag -- ic charms __ of

you, __ be -- side me here be -- neath the blue __
my dream of love is com -- ing true __
with -- in our de -- sert car -- a -- van. __

}

refrainChords = \chordmode {
  c1:7 df1:7 c1:7 c1:7
  c1:7 df1:7 c1:7 c1:7
  c1:7 df1:7 c1:7 c1:7
  f1:m6 f1:m6 f1:m6 f1:m6

  c1:7 df1:7 c1:7 c1:7
  c1:7 df1:7 c1:7 c1:7
  c1:7 df1:7 c1:7 c1:7
  f1:m6 f1:m6 f1:m6 f1:m6

  f1:7 f1:7 f1:7 f1:7
  bf1:7 bf1:7 bf1:7 bf1:7
  ef1:7 ef1:7 ef1:7 ef1:7
  af1:6 af1:6 c1:7 c1:7

  c1:7 df1:7 c1:7 c1:7
  c1:7 df1:7 c1:7 c1:7
  c1:7 df1:7 c1:7 c1:7
  f1:m6 f1:m6 f1:m6 f1:m6

  f1:7 f1:7 f1:7 f1:7
  bf1:7 bf1:7 bf1:7 bf1:7
  ef1:7 ef1:7 ef1:7 ef1:7
  af1:6 af1:6 c1:7 c1:7

}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Fast Latin [Duke Ellington 1937]" 4 = 208

  \xTextMark \markup{ \bold \box "A1" }
  
  c'1~ | c1~ | c4 df4 c4 g4 | bf4 c4 e4 g,4 |
  bf1~ | bf1~ | bf4 c4 df4 c4 | df4 c4 b4 g4 |
  \break
  bf1~ | bf1~ | bf4 c4 b4 bf4 | a4 af4 gf4 e4 |
  f1~ | f1~ | f1~ | f2. r4 |
  
  \sect "A2"
  
  c'1~ | c1~ | c4 df4 c4 g4 | bf4 c4 e4 g,4 |
  bf1~ | bf1~ | bf4 c4 df4 c4 | df4 c4 b4 g4 |
  \break
  bf1~ | bf1~ | bf4 c4 b4 bf4 | a4 af4 gf4 e4 |
  f1~ | f1~ | f1~ | f2. r4 |

  \sect "B"
  
  %% Vocal bridge
  f'1~ | f4 gf4 f4 c4 | ef1 | df1 |
  f1~ | f4 g4 f4 c4 | ef1 | d1 |
  \break
  ef1~ | ef4 f4 ef4 c4 | bf1 | f'2 e2 |
  ef2. f,4~ | f4 g4 af4 bf4 | c1~ | c2 c2 |
  
  \sect "A3"

  c1~ | c1~ | c4 df4 c4 g4 | bf4 c4 e4 g,4 |
  bf1~ | bf1~ | bf4 c4 df4 c4 | df4 c4 b4 g4 |
  \break
  bf1~ | bf1~ | bf4 c4 b4 bf4 | a4 af4 gf4 e4 |
  f1~ | f1~ | f1~ | f2. r4 |
  
  \bar "|."

  \xPageBreak

  \xTextMark \markup{Instrumental alternative bridge \bold \box "B" }
  %% Instrumental bridge
  f'1 | e2 c4. g8~ | g1~ | g4. f8 e4 f4 |
  c'1 | g2 f4. c8~ | c1 | r2 bf'8 c8 df8 d8 |
  \break
  ef1 | c2 bf4. f8~ | f1~ | f2 g4 ef4 |
  c'4. af8~ af2~ | af2 bf4 af4 | g2 g4. g8~ | g2 r2 |
  \bar "||"
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
