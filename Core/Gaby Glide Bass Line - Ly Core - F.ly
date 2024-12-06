%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "The Gaby Glide"
  subtitle = \instrument
  composer = "Louis H. Hirsch"
  copyright = ""
}

refrainLyrics = \lyricmode {
}

refrainMaybeChords = \chordmode {
  f1 f1 f1 f1
  d1:m d1:m d1: d1:m
  f1 f1 f1 f1
  g1:7 g1:7 g1:7 g1:7
  c1:7 c1:7 c1:7 c1:7

  f1 f1 f1 f1
  d1:m d1:m d1: d1:m
  c1 c1 c1:dim c1:dim
  g1:7 g1:7 c1 c1
  
  
  g1:m7 g1:m7 c1:7 c2:7 c2
  g1:m7 g1:m7 c1:7 c2:7 c2


  f1 f1 f1 f1 f1 f1 f1 f1
  bf1 bf1 bf1 bf1 f1:dim f1:dim f1:dim f1:dim

  f1 f1 f1 f1 f1 f1 f1 f1
  g1:7 g1:7 g1:7 g1:7 g1:m7 g1:m7 c1:7 c1

  f1 f1 f1 f1 f1 f1 f1 f1
  bf1 bf1 bf1 bf1 f1:dim f1:dim f1:dim f1:dim

  f1 f1 f1 f1 f1 f1 f1 f1
  d1:7 d1:7 g2:7 g2:m7 g2:m7 c2:7
  
  f1 f1 f1 f1

  f1 f1 f2 c2:7 f1
}

refrainChords = \chordmode {
}

refrainKey = f

refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Moderato" 2 = 120

  \xTextMark \markup{ \bold \box "A" }
  
  f4\mf r4 c4 r4 | f4 r4 c4 r4 | f4 r4 c4 r4 | f4 r4 c4 r4 |
  \break
  d4 r4 a4 r4 | d4 r4 a4 r4 | d4 r4 a4 r4 | d4 r4 a4 r4 |
  \break
  f'4 r4 d4 r4 | f4 r4 d4 r4 | f4 r4 d4 r4 | f4 r4 d4 r4 |
  \break
  g4 r4 c,4 r4 | g'4 r4 c,4 r4 |
  c4 r4 c2 | c2 c2 |
  \break
  f4 r4 c4 r4 | f4 r4 c4 r4 | f4 r4 c4 r4 | f4 r4 c4 r4 |
  \break
  d4 r4 a4 r4 | d4 r4 a4 r4 | d4 r4 a4 r4 | d4 r4 a4 r4 |
  \break
  e'4 r4 g4 r4 | c,4 r4 e4 r4 | ef4 r4 a4 r4 | c,4 r4 ef4 r4 |

  \bar "$"
  \break
  \xTextMark \markup{ \bold \box "B" }
  
  d4 r4 g4 r4 | d4 r4 g4 r4 | c4 a4 g4 e4 | c4 r4 c4\sfz r4 | 
  \break
  d4 r4 d4 r4 | d4 r4 d4 r4 | c4 g'4 af4 a4 | bf,4 r4 c4\sfz r4 |
  \break
  c'4 r4 c4 r4 | c4 r4 c4 r4 | c4 a4 g4 e4 | c4 r4 c4\sfz r4 |

  \xPageBreak

  \repeat volta 2 {
  \bar ".|:-||"
  
  \xTextMark \markup{ \bold \box "C" }
  
  f4\mf r4 c4\ff r4 | f4 r4 c4 r4 | f4 r4 c4 r4 | f4 r4 c4 r4 |
  f4 r4 c4 r4 | f4 r4 c4 r4 | f4 r4 c4 r4 | f4 r4 c4 r4 |
  \break
  bf4 r4 f'4 r4 | bf,4 r4 f'4 r4 | bf,4 r4 f'4 r4 | bf,4 r4 f'4 r4 |
  \break
  b,4 r4 f'4 r4 | b,4 r4 f'4 r4 | b,4 r4 f'4 r4 | b,4 r4 f'4 r4 |
  \break
  f1 | e1 | d1 | c4 r4 c4\sfz r4 | f1 | e1 | d1 | c4 r4 c4\sfz r4 |
  \break
  d4 r4 g,4 r4 | d'4 r4 g,4 r4 | d'4 r4 g,4 r4 | d'4 r4 g,4 r4 |
  \break
  d'4 r4 g,4 r4 | d'4 r4 g4 r4 | c4 bf4 g4 e4 | c4 r4 c4\sfz r4 |
  
  \bar "$"
  \break
  \xTextMark \markup{ \bold \box "D" }
  
  f4 r4 c4 r4 | f4 r4 c4 r4 | f4 r4 c4 r4 | f4 r4 c4 r4 |
  f4 r4 c4 r4 | f4 r4 c4 r4 | f4 r4 c4 r4 | f4 r4 c4 r4 |
  \break
  bf4 r4 f'4 r4 | bf,4 r4 f'4 r4 | bf,4 r4 f'4 r4 | bf,4 r4 f'4 r4 |
  \break
  b,4 r4 f'4 r4 | b,4 r4 f'4 r4 | b,4 r4 f'4 r4 | b,4 r4 f'4 r4 |
  \break
  f1 | e1 | d1 | c4 r4 c4\sfz r4 | f1 | e1 | d1 | c4 r4 c4\sfz r4 |
  \break
  a'4 r4 d,4 r4 | a'4 r4 d,4 r4 | g4 r4 d4 r4 | df2 c2 |
  \break
  }
  
  \alternative {
    {
      f2\< b,4 c4~ | c4 d4 e4 f4 | fs4 g2 a4 | bf4 a4 bf4 b4\! |
      \break
    } {
      f2\< b,4 c4~ | c4 cs4 d4 e4 | f4 r4 c4\sfz r4 | f,4\sfz r4 r2\! |
    } }
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
