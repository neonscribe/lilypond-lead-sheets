%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "My Foolish Heart"
  subtitle = \instrument
  poet = "Ned Washington"
  composer = "Victor Young"
  copyright = \markup \small "© 1949 Joy Music, Inc., 1619 Broadway, New York, N.Y."
}

refrainLyricsM = \lyricmode {
The night __ is like a love -- ly tune,
be -- ware __ My Fool -- ish Heart!
How white __ the ev -- er con -- stant moon;
take care __ My Fool -- ish Heart!
There's a line be -- tween love and fas -- ci -- na -- tion __
that's hard to see on an eve -- niing such as this,
for they both give the ver -- y same sen -- sa -- tion
when you're lost in the mag -- ic of a kiss.
Her lips __ are much too close to mine,
be -- ware My Fool -- ish Heart
but should __ our ea -- ger lips com -- bine
then let __ the fi -- re start
for this time it is -- n't fas -- ci -- na -- tion,
or a dream that will fade and fall a -- part,
It's love __ this time, it's love,
My Fool -- ish Heart.
}

refrainLyricsF = \lyricmode {
The night __ is like a love -- ly tune,
be -- ware __ My Fool -- ish Heart!
How white __ the ev -- er con -- stant moon;
take care __ My Fool -- ish Heart!
There's a line be -- tween love and fas -- ci -- na -- tion __
that's hard to see on an eve -- niing such as this,
for they both give the ver -- y same sen -- sa -- tion
when you're lost in the mag -- ic of a kiss.
His lips __ are much too close to mine,
be -- ware My Fool -- ish Heart
but should __ our ea -- ger lips com -- bine
then let __ the fi -- re start
for this time it is -- n't fas -- ci -- na -- tion,
or a dream that will fade and fall a -- part,
It's love __ this time, it's love,
My Fool -- ish Heart.
}

refrainLyrics = #(if (and (defined? 'objectGenderMale) objectGenderMale)
		  refrainLyricsF
		  refrainLyricsM)

refrainChords = \chordmode {
  s4

  bf2:maj7 ef2:maj7 d2:m7 g2:7 c2:m7 c2:m7/bf e2:m7/a a2:7
  d2:m7 d2:7.9+ g2:m7 df2:7 c1:m7 c2:m7.5- f2:7.9-
  
  bf1:maj7 f2:m7 bf2:7 ef1:maj7 a2:m7.5- d2:7
  g2:m7 g2:m7/f e2:m7.5- a2:7.9- d2:m7 g2:7.5+ c2:m7 f2:7

  bf2:maj7 ef2:maj7 d2:m7 g2:7 c2:m7 c2:m7/bf e2:m7/a a2:7
  d2:m7 d2:7.9+ g2:m7 df2:7 c2:m7 c2:m7/bf a2:m7.5- d2:7
  
  g1:m7 ef2:m7 af2:7 bf2:maj7 ef2:maj7 af2:7.5- g2:7
  c2:m7 g2:7.9+ c4:7 c4:7.5+ f4:sus7 f4:7 bf2:6
  
  \chordOpenParen{ g2:m7 }
  gf2:maj7
  \chordCloseParen{ f2:7 }
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad [Carmen McRae 1956]" 4 = 72

  \partial 4 f4 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  f2~ f8 bf,8 d8 f8 | g8 a8 g2 g4 | g2~ g8 c,8 ef8 g8 | a2. a4 |
  a2~ a8 d,8 f8 a8 | bf8 c8 bf2 bf4 | bf2~ bf8 ef,8 g8 bf8 | c2. bf8 c8 |
  
  \sect "B"
  
  d4. d16 d16 d8 d8 c8 bf8 | d4 d4. d8 c8 bf8 | c4 c8 c8 c8 d8 c8 bf8 | c2. bf8 a8 |
  bf8 bf4 bf8 bf8 a8 g8 a8 | bf4 bf2 a8 g8 | a4 a8 a8 a8 f8 g8 f8 | a2. g4 |
  
  \sect "A2"
  
  f2~ f8 bf,8 d8 f8 | g8 a8 g2 g4 | g2~ g8 c,8 ef8 g8 | a2. a4 |
  a2~ a8 d,8 f8 a8 | bf8 c8 bf2 bf4 | bf2~ bf8 ef,8 g8 bf8 | d2. c4 |

  \sect "C"
  
  bf4 bf8 bf8 bf8 a8 g8 a8 | bf4 bf2 bf8 c8 | d4 d8 d8 d8 d8 c8 bf8 | d,2. g4 |
  bf2~ bf8 ef,8 g8 bf8 | c4 d4 bf4 c4 | bf1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
