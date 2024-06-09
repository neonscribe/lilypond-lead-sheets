%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  (set-global-staff-size 18))

\header {
  title = "The Song Is You"
  subtitle = \instrument
  poet = "Oscar Hammerstein II"
  composer = "Jerome Kern"
  copyright = "© 1932 T.B. Harms Co."
}

refrainLyrics = \lyricmode {
I hear mu -- sic when I look at you, __
A beau -- ti -- ful theme of ev -- 'ry dream I ev -- er knew, __
Down deep in my heart __ I hear it play, __
I feel it start, __ then melt a -- way. __

I hear mu -- sic when I touch your hand, __
A beau -- ti -- ful mel -- o -- dy from some en -- chant -- ed land, __
Down deep in my heart __ I hear it say, __ “Is this the day?” __

I a -- lone __ have heard this love -- ly strain, __
I a -- lone __ have heard this glad re -- frain, __
Must it be __ for -- ev -- er in -- side of me, __
why can't I let it go, __ why can't I let you know, __

Why can't I let you know the song my heart would sing? __
That beau -- ti -- ful rhap -- so -- dy of love and youth and spring. __
The mu -- sic is sweet, __ the words are true, __ The song is you.
}

refrainChords = \chordmode {
  c1:maj7 ef1:dim7 d1:m7 g1:7
  c1:maj7 a1:7 d1:m7 g1:7
  e1:m7 a1:7 d1:m7 g1:7
  f1:7 bf1:7 e2:m7 a2:7 d2:m7 g2:7

  c1:maj7 ef1:dim7 d1:m7 g1:7
  c1:maj7 a1:7 d1:m7 g1:7
  e1:m7 a1:7 d1:m7 g1:7
  c1:6 f1:7 c1:6 f2:m7.5- b2:7
  
  e1:maj7 e1:maj7 fs1:m7 b1:7
  e1:maj7 e1:maj7 as1:m7.5- ds1:7
  gs1:m7 gs1:m7 cs1:7 cs1:7
  fs1:7 c1:7.11+ b1:7 g1:7

  c1:maj7 ef1:dim7 d1:m7 g1:7
  c1:maj7 g2:m7 c2:7 f1:maj7 bf1:9
  e1:m7 a1:7 d1:m7 g1:7
  c1:6
  \chordOpenParen{ f1:7 }
  c1:6 d2:m7
  \chordCloseParen{ g2:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Up" 4 = 180

  \textMark \markup{ \bold \box "A1" }
  
  b4 c4 c4 b4 | b4 c4 c4 b4 | f1~ | f4 a4 \tuplet 3/2 { a4 af4 g4 } |
  g4 a4 a4 g4 | g4 a4 a4 g4 | d1~ | d4 f4 \tuplet 3/2 { f4 ds4 e4 } |
  %\break
  g1~ | g4 e4 f4 e4 | g1~ | g4 d4 e4 d4 |
  f1~ | f4 c4 d4 c4 | e1~ | e2 r2 |
  
  \bar "||"
  %\break

  \textMark \markup{ \bold \box "A2" }
  
  b'4 c4 c4 b4 | b4 c4 c4 b4 | f1~ | f4 a4 \tuplet 3/2 { a4 af4 g4 } |
  g4 a4 a4 g4 | g4 a4 a4 g4 | d1~ | d4 f4 \tuplet 3/2 { f4 ds4 e4 } |
  %\break
  g1~ | g4 e4 f4 e4 | a1~ | a4 g4 a4 g4 |
  c1~ | c1 | r1 | r1 |

  \bar "||"
  %\break

  \textMark \markup{ \bold \box "B" }
  
  e,4 b'4 b2~ | b4 b4 b4 b4 | b4 a4 a2~ | a1 |
  e4 ds'4 ds2~ | ds4 ds4 ds4 ds4 | ds4 cs4 cs2~ | cs1 |
  %\break
  ds,4 b'4 gs2~ | gs4 ds4 \tuplet 3/2 { fs4 f4 e4 } | ds4 b'4 gs2~ | gs4 ds4 ds4 ds4 |
  ds4 fs4 fs2~ | fs4 fs4 fs4 fs4 | gs4 b4 b2~ | b4 b4 b4 b4 |
  
  \bar "||"
  %\break

  \textMark \markup{ \bold \box "A3" }
  
  b4 c4 c4 b4 | b4 c4 c4 b4 | f'1~ | f4 a,4 \tuplet 3/2 { a4 af4 g4 } |
  g4 a4 a4 g4 | g4 a4 a4 g4 | c1~ | c4 f,4 \tuplet 3/2 { f4 ds4 e4 } |
  %\break
  g1~ | g4 e4 f4 e4 | a1~ | a4 g4 a4 g4 |
  c1 | r1 | r1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
