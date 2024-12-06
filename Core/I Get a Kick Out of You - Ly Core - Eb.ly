%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "I Get a Kick Out of You"
  subtitle = \instrument
  poet = ""
  composer = "Cole Porter"
  copyright = "© 1934 HARMS, Inc."
}

refrainLyrics = \lyricmode {
I get no kick from cham -- pagne. __
Mere al -- co -- hol does -- n't thrill me at all,
so tell me why should it be true __ that I get a kick __ out of you? __

Some get a kick from co -- caine. __
I'm sure that if I took ev -- en one sniff that would bore me ter -- rif -- ic -- 'ly too. __
Yet I get a kick __ out of you. __

I get a kick ev -- 'ry time I see you stand -- ing there be -- fore me.
I get a kick tho' it's clear to me you ob -- vious -- ly don't a -- dore me.

I get no kick in a plane. __
Fly -- ing too high with some guy in the sky is my i -- dea of noth -- ing to do. __
Yet I get a kick out of you.
}

refrainChords = \chordmode {
  f2:m7 f4:m6 f4:m7 bf1:7 ef1 g1:m
  f2:m7 f4:m6 f4:m7 bf1:7 ef1 g1:m
  f1:m7 bf1:7 ef1 g2.:m7 f4:m
  f1:m bf1:7 ef1 g1:m

  f2:m7 f4:m6 f4:m7 bf1:7 ef1 g1:m
  f2:m7 f4:m6 f4:m7 bf1:7 ef1 g1:m
  \tuplet 3/2 { f1:m7 f2:7 } \tuplet 3/2 { bf2 a2 af2 } ef1 g1:m
  f1:m bf1:7 ef1 g1:m
  
  ef1:7 \tuplet 3/2 { af2 ef1:7 } df2./af af4 df2./af af4
  c2.:m/ef ef4:7 c2.:m/ef ef4:7 e1:dim7 c1:7/e
  f1:m f1:m bf2.:m6/f f4:m bf2.:m6/f f4:m
  f1:7 f1:7 f1:m7/bf bf1:7

  f2:m7 f4:m6 f4:m7 bf1:7 ef1 g1:m
  f2:m7 f4:m6 f4:m7 bf1:7 ef1 g1:m
  f1:m7 bf1:7 c1:7 c1:7
  f1:m bf1:7 ef1 
  \chordInsideParens{ g1:m }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 135

  \xTextMark \markup{ \bold \box "A1" }
  
  r4 c4 d4 ef4 | \tuplet 3/2 { f2 g2 af2 } | bf1~ | bf1 |
  \break
  r4 c,4 d4 ef4 | \tuplet 3/2 { f2 g2 af2 } | \tuplet 3/2 { bf2 af2 g2 } | g2. g4 |
  \break
  \tuplet 3/2 { af2 g2 f2 } | \tuplet 3/2 { f2 ef2 f2 } | g1~ | g2 r4 c,4 |
  \break
  f4 g4 af4 bf4~ | bf4 af2 g4 | ef1~ | ef4 r4 r2 |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  r4 c4 d4 ef4 | \tuplet 3/2 { f2 g2 af2 } | bf1~ | bf1 |
  \break
  r4 c,4 d4 ef4 | \tuplet 3/2 { f2 g2 af2 } | \tuplet 3/2 { bf2 c2 a2 } | \tuplet 3/2 { bf2 c2 a2 } |
  \break
  \tuplet 3/2 { bf2 c2 a2 } | \tuplet 3/2 { bf2 a2 af2 } | g1~ | g2 r4 c,4 |
  \break
  f4 g4 af4 bf4~ | bf4 af2 g4 | ef1~ | ef4 r4 r2 |

  \bar "||"

  \xPageBreak

  \xTextMark \markup{ \bold \box "B" }
  
  r4 ef4 f4 g4 | \tuplet 3/2 { af2 bf2 c2 } | df2. c4 | df2. c4 |
  \break
  c2. bf4 | c2. bf4 | bf1 | c,1 |
  \break
  r4 c4 d4 e4 | \tuplet 3/2 { f2 g2 af2 } | bf2. af4 | bf2 r4 af4 |
  \break
  g2. f4 | f4 c'2 f,4 | ef1 | d1 |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "A3" }
  
  r4 c4 d4 ef4 | \tuplet 3/2 { f2 g2 af2 } | bf1~ | bf1 |
  \break
  r4 c,4 d4 ef4 | \tuplet 3/2 { f2 g2 af2 } | \tuplet 3/2 { bf2 c2 d2 } | \tuplet 3/2 { ef2 f2 d2 } |
  \break
  \tuplet 3/2 { ef2 d2 c2 } | \tuplet 3/2 { d2 c2 bf2 } | g1~ | g2 r4 c,4 |
  \break
  \tuplet 3/2 { f2 g2 af2 } | bf4 c2 d4 | ef1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
