%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Blue Bossa"
  subtitle = \instrument
  poet = "Joan Cartwright"
  composer = "Kenny Dorham"
  copyright = \markup \small { \now " " "© 1965 Second Floor Music" }
}

bossaRhythm = ##t

refrainHLChords = \chordmode {
  \chordInsideParens{ g4:7.5+ }
  c1:m c1:m f1:m7 bf1:7
  d1:m7.5- g1:7.5+.9+ c1:m c1:m
  ef1:m7 af1:7 df1:maj7 df1:maj7
  d1:m7.5- g1:7.5+.9+ c1:m d2:m7.5- g2:7.5+
  
  c1:m a1:7.9+ d1:m7.5- g1:7.5+.9+
  c1:m a1:7.9+ d1:m7.5- g1:7.5+.9+
  c1:m
}

refrainNicoChords = \chordmode {
  \chordInsideParens{ g4:7.5+ }
  c1:m c1:m f1:m7 f1:m7
  d1:m7.5- g1:7.5+.9+ c1:m c1:m
  ef1:m7 af1:7 df1:maj7 df1:maj7
  d1:m7.5- g1:7.5+.9+ c1:m d2:m7.5- g2:7.5+
  
  c1:m c1:m d1:m7.5- g1:7.5+.9+
  c1:m c1:m d1:m7.5- g1:7.5+.9+
  c1:m
}

refrainChords = \refrainNicoChords

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium-Up Bossa [Joe Henderson 1963]" 4 = 160
  
  \partial 4 g4 |
  
  \bar ".|:"
  \repeat volta 2 {
  g'4. f8 ef8 d8 r8 c8~ | c2~ c8 bf8 r8 af8~ |
  af2~ af8 g'8 r8 f8~ | f2. r4 |
  \break
  
  f4. ef8 d8 c8 r8 bf8~ | bf2~ bf8 af8 r8 g8~ |
  g2~ g8 f'8 r8 ef8~ | ef2. r4 |
  \break
  
  ef4. df8 c8 bf8 r8 af8~ | af2~ af8 gf8 r8 gf8~ |
  gf4. f8 bf4. af8 | af2. r4 |
  \break
  
  af4 g8 bf8~ bf4. af8 | af4 g8 bf8~ bf4. af8 \textToCodaLastTime |
  g1~ | g2 r4
  \override Parentheses.font-size = #5
  \parenthesize g4 |
  }
  
  \textCodaBreak

  \bar "||-:|."

  g1 | r1 | af4 g8 bf8~ bf4. af8 | af4 g8 bf8~ bf4. af8 |
  \break
  g1 | r1 | af4 g8 bf8~ bf4. af8 | af4 g8 ef'8~ ef4. b8 |
  d1 |
  
  \bar "|."  
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup{ "Play head twice, before and after solos. After solos, second time D.S. al Coda" }

%{
\markup {
  \column {
    \vspace #1
    \line { \large { A place inside my heart is where you live } }
    \line { \large { Memories of our start, the love you give } }
    \line { \large { Days when we're alone and you are in my heart } }
    \line { \large { The blueness of the trueness of our love } }
    \vspace #1
    \line { \large { Nights of moonlit skies, a gentle kiss } }
    \line { \large { Something in your eyes fills me with bliss } }
    \line { \large { Hold me in your arms, and then I will recall } }
    \line { \large { The blueness of the trueness of our love } }
    \vspace #1
    \line { \large { The thought of how we met still lingers on } }
    \line { \large { How could I forget that magic dawn? } }
    \line { \large { All the warm desire, the fire in your touch } }
    \line { \large { The blueness of the trueness of our love } }
    \vspace #1
    \line { \large { Blueness of the trueness of our love } }
    \line { \large { Blueness of the trueness of our love } }
  }
}
%}
