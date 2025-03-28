%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Exactly Like You"
  subtitle = \instrument
  poet = "Dorothy Fields"
  composer = "Jimmy McHugh"
  copyright = \markup \small "© 1930 Shapiro, Bernstein & Co. Inc."
}

refrainLyrics = \lyricmode {
  I know why I've wait -- ed, __
  Know why I've been blue, __
  Prayed each night for some -- one __
  ex -- act -- ly like you. __
  
  Why should we spend mo -- ney __
  on a show or two? __
  No one does those love scenes __
  ex -- act -- ly like you. __
  
  You make me feel so grand, __
  I want to hand the world to you, __
  You seem to un -- der -- stand __
  each fool -- ish lit -- tle scheme I'm schem -- ing,
  dream I'm dream -- ing.
  
  Now I know why moth -- er __
  taught me to be true, __
  She meant me for some -- one ex -- act -- ly like you. __
}

refrainNRTwoChords = \chordmode {
  c1:6 c1:6 d1:9 d1:9
  g1:7 g1:7 c1:6 d2:m7 g2:7
  
  c1:6 c1:6 d1:9 d1:9
  g1:7 g1:7 c1:6 c1:7
  
  f1:maj7 bf1:9 c1:6 \chordInsideParens{ a1:m6.9 }
  d1:m7 f2:m6 g2:7 e2:m7 ef2:dim7 d2:m7 g2:9

  c1:6 c1:6 d1:9 d1:9
  g1:7 g1:7 c1:6
  \chordOpenParen{ d2:m7 }
  \chordCloseParen{ g2:7 }
}

refrainDFBChords = \chordmode {
  c1 c1 d1:7 d1:7
  g2:7 cs2:dim7 d2:m7 g2:7 c1 d2:m7 g2:7
  
  c1 c1 d1:7 d1:7
  g2:7 cs2:dim7 d2:m7 g2:7 c1 c1
  
  f1 f1:m c1 c1
  d1:m f1:m6 e2:m7 ef2:dim7 d2:m7 g2:7

  c1 c1 d1:7 d1:7
  g2:7 cs2:dim7 d2:m7 g2:7 c1
  \chordOpenParen{ d2:m7 }
  \chordCloseParen{ g2:7 }
}

refrainHLChords = \chordmode {
  c1:6 c1:6 d1:7 d1:7
  d1:m7 g1:7 c1:6 d2:m7 g2:7
  
  c1:6 c1:6 d1:7 d1:7
  d1:m7 g1:7 c1:6 c1:7
  
  f1:6 bf1:7 c1:6 a1:m7
  d1:m7 f1:m6 e2:m7 ef2:dim7 d2:m7 g2:7

  c1:6 c1:6 d1:7 d1:7
  d1:m7 g1:7 c1:6
  \chordOpenParen{ d2:m7 }
  \chordCloseParen{ g2:7 }
}

refrainChords = 
   $(if (and (defined? 'useDFBChords) useDFBChords)
     refrainDFBChords
     refrainHLChords)

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Fast Swing" 4 = 175

  \xTextMark \markup{ \bold \box "A1" }
  
  e'4 b4 d4 a4 | c4 c2. | e4 b4 d4 a4 | c1 |
  \break
  b4 f4 a4 e4 | g4 g2 g4 | c4 c,4 c4 c4~ | c2 r2 |
  
  \sect "A2"
  
  e'4 b4 d4 a4 | c4 c2. | e4 b4 d4 a4 | c1 |
  \break
  b4 f4 a4 e4 | g4 g2 g4 | c4 c,4 c4 c4~ | c4 d4 e4 g4 |
  
  \sect "B"
  
  d'4 d4 d2~ | d4 cs4 e8 d8 c8 b8 | c4 c4 c2~ | c4 a4 b4 c4 |
  \break
  f4 f4 f2~ | f4 e4 g8 f8 e8 d8 | e4 e4 b4 b4 | d4 d4 a4 g4 |
  
  \sect "A3"

  e'4 b4 d4 a4 | c4 c2. | e4 b4 d4 a4 | c1 |
  \break
  b4 f4 a4 e4 | g4 g2 g4 | c4 c,4 c4 c4~ | c2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
