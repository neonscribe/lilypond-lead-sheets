%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "I'll Remember April"
  subtitle = \instrument
  poet = "Patricia Johnston and Don Raye"
  composer = "Gene de Paul"
  copyright = \markup \small "© 1942 Leeds Music Corporation"
}

refrainLyrics = \lyricmode {
  This love -- ly day will length -- en in -- to eve -- ning,
  We'll sigh good -- bye to all we've ev -- er had. __
  A -- lone, where we have walked to -- geth -- er __
  I'll re -- mem -- ber A -- pril __ and be glad. __

  I'll be con -- tent __ you loved me once in A -- pril,
  Your lips were warm __ And love and spring were new. __
  But I'm not a -- fraid of au -- tumn and her sor -- row, __
  For I'll re -- mem -- ber __ A -- pril and you. __

  The fire will dwin -- dle in -- to glow -- ing ash -- es,
  For flames and love live such a lit -- tle while, __
  I won't for -- get, __ but I won't be lone -- ly, __
  I'll re -- mem -- ber A -- pril and I'll smile. __
}

refrainChords = \chordmode {
  g1:maj7 g1:6 g1:maj7 g1:6
  g1:m7 g1:m6 g1:m7 g1:m6

  a1:m7.5- d1:7 b1:m7.5- e1:7
  a1:m7 d1:7 g1:maj7 g1:7.9-

  c1:m7 f1:7 bf1:maj7 g1:m7
  c1:m7 f1:7 bf1:maj7 bf1:6
  
  a1:m7 d1:7 g1:maj7 g1:6
  fs1:m7 b1:7 e1:maj7 a2:m7 d2:7

  g1:maj7 g1:6 g1:maj7 g1:6
  g1:m7 g1:m6 g1:m7 g1:m6

  a1:m7.5- d1:7 b1:m7.5- e1:7
  a1:m7 d1:7 g1:6

  \chordOpenParen{ a2:m7 }
  \chordCloseParen{ d2:7 }
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Bing Crosby 1944]" 4 = 118

  \sectStart "A1"

  r4 b4 c4 d4 | c4 b4 a4 g4 | a2. g4 | fs4 e2. |
  \break
  r4 a4 bf4 c4 | bf4 a4 g4 f4 | g8 a8 g2.~ | g2 r8 g4. |
  \bar "||-||"
  \break
  
  \tempo "Swing"

  a2. a4 | a4 a4 b4 c4 | d4. d8~ d2~ | d2 e4. d8 |
  \break
  b4 c4 d4 c4~ | c2 b4 as4 | b1~ | b2 r8 b4. |

  \sect "B"
  
  g4 g4 g2~ | g4 a4 bf4 c4 | d2. c4 | bf4 g2 f4 |
  \break
  g4 g4 g2~ | g4 a4 bf4 c4 | d2 d4 d4~ | d4 d4 \tuplet 3/2 { d4 d4 d4 } |
  \break

  d2. d4 | e4 c4 d4. b8 | a4 b2.~ | b4 b4 d4 c4 |
  \break
  b4 b2.~ | b2 \tuplet 3/2 { b4 a4 gs4 } | b1~ | b1 |
  \bar "||"

  \xPageBreak
  \sectNoBarNoBreak "A2"

  \tempo "Latin"

  r4 b4 c4 d4 | c4 b4 a4 g4 | a2. g4 | fs4 e2. |
  \break
  r4 a4 bf4 c4 | bf2 \tuplet 3/2 { a4 g4 f4 } | g8 a8 g2.~ | g2 r8 g4. |
  \bar "||-||"
  \break

  \tempo "Swing"

  a4. a8 a2~ | a4 a4 \tuplet 3/2 { a4 b4 c4 } | d2 d2~ | d2 e4. d8 |
  \break
  b4 c4 d4 c4~ | c2 b4 b4 | g1~ | g4 r4 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
