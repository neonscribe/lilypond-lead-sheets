%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Invitation"
  subtitle = \instrument
  poet = "Paul Francis Webster"
  composer = "Bronislau Kaper"
  copyright = "© 1944 EMI Feist Catalog, Inc."
}

refrainLyrics = \lyricmode {
You and your smile __ hold a strange in -- vi -- ta -- tion. __
Some -- how it seems we've shared our dreams, but where? __
Time af -- ter time __ in a room full of stran -- gers, __
out of the blue sud -- den -- ly you are there. __
Wher -- ev -- er I go __ you're the glow of temp -- ta -- tion, __
glan -- cing my way __ in the gray of the dawn. __
And al -- ways your eyes __ smile that strange in -- vi -- ta -- tion. __
Then you are gone. Where, oh, where have you gone? __
How long must I stay __ in a world of il -- lu -- sion, __
be where you are, so near yet so far a -- part. __
Hop -- ing you'll say, __ with a warm in -- vi -- ta -- tion, __
“Where have you been? Dar -- ling come in, come in -- to my heart.”
}

refrainChords = \chordmode {
  c1:m9 c1:m9 c1:m9 c1:m9 
  c1:m9 f1:13 bf1:13 bf1:13
  
  ef1:9 ef1:9 ef1:9 ef1:9 
  ef1:9 af1:13 df1:13 df1:13
  
  cs1:m9 cs2:m9 fs2:7.9-.5+ b1:m9 b1:m9
  b1:m9 b2:m9 e2:7.9-.5+ a1:m9 a1:m9
  
  a1:m9 a2:m9 d2:7.9-.5+ g1:m9 g1:m9
  ef1:9.11+ ef1:9.11+ d1:7.9- g2:7.5+ g2:7
  
  c1:m9 c1:m9 c1:m9 c1:m9 
  c1:m9 f1:13 bf1:13 bf1:13
  
  ef1:m9 ef1:m9 b1:9.11+ b1:9.11+
  f1:7.9+ bf1:7.9+ ef1:m7+

  \chordOpenParen{ d2:7 }
  \chordCloseParen{ g2:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium" 4 = 137

  \xTextMark \markup{ \bold \box "A1" }
  
  \tuplet 3/2 { d4 ef4 d'4 } a2~ | a4 g8 bf8 a8 g4 c,8 |
  d2 d2~ | d2 \tuplet 3/2 { d4 c4 g'4 } |
  \break
  d2 \tuplet 3/2 { d4 c4 g'4 } | d2. c4 |
  g'1~ | g2 r2 |
  
  \sect "B1"
  
  \tuplet 3/2 { f4 gf4 f'4 } c2~ | c4 bf8 df8 c8 bf4 ef,8 |
  f2 f2~ | f2 \tuplet 3/2 { f4 ef4 bf'4 } |
  \break
  f2 \tuplet 3/2 { f4 ef4 bf'4 } | f2. ef4 | bf'1~ | bf2 r4 a4 |
  
  \sect "C1"
  
  \tuplet 3/2 { gs4 b4 cs4 } ds2~ | ds4 gs,8 ds'8 d4 g,8 d'8 |
  cs2 cs2~ | cs2 r2 |
  \break
  \tuplet 3/2 { fs,4 a4 b4 } cs2~ | cs4 fs,8 cs'8 c4 f,8 c'8 |
  b1~ | b2 r4 e,4 |
  
  \sect "C2"
  
  \tuplet 3/2 { e4 g4 a4 } b2~ | b4 e,8 b'8 bf4 ef,8 bf'8 |
  a2 a2~ | a4 g4 a4 bf4 |
  \break
  a1 | \tuplet 3/2 { r4 c4 a4 } \tuplet 3/2 { c4 a4 c,4 } | ef1~ | ef2 r4 f4 |
  
  \bar "||"

  \xPageBreak

  \xTextMark \markup{ \bold \box "A2" }
  
  \tuplet 3/2 { d4 ef4 d'4 } a2~ | a4 g8 bf8 a8 g4 c,8 |
  d2 d2~ | d2 \tuplet 3/2 { d4 c4 g'4 } |
  \break
  d4. d8 \tuplet 3/2 { d4 c4 g'4 } | d2. c4 |
  g'1~ | g2 r2 |
  
  \sect "B2"
  
  \tuplet 3/2 { f4 gf4 f'4 } c2~ | c4 bf8 df8 \tuplet 3/2 { c4 bf4 ef,4 } |
  f2 f2~ | f2 \tuplet 3/2 { ef4 f4 ef4 } |
  \break
  af2 \tuplet 3/2 { gf4 af4 gf4 } | df'4. cf8 \tuplet 3/2 { cf4 df4 cf4 } | d1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
