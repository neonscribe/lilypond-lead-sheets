%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Do I Love You"
  subtitle = \instrument
  poet = ""
  composer = "Cole Porter"
  copyright = \markup \small "© 1940 Chappell & Co."
}

refrainLyrics = \lyricmode {
Do I love you, do I? __ Does -- n't one and one make two? __
Do I love you, do I? __ Does Ju -- ly need a sky of blue? __
Would I miss you, would I, __ if you ev -- er should go a -- way? __
If the sun should de -- sert __ the day, what would life be? __
Will I leave you, nev -- er? __ Could the o -- cean leave the shore? __
Will I wor -- ship you for -- ev -- er? __ Is -- n't hea -- ven for -- ev -- er more? __
Do I love you, do I? __ Oh, my dear, it's __ so eas -- y __ to see. __
Don't you know I do? __ Don't I show you I do? __ Just as you love me? __
}

refrainHLRealChords = \chordmode {
  s2
  
  c1:maj9 e1:m7.5- a1:7.9- a1:7.9- d1:m7 d2:m7+ d2:m7 g1:7 g1:7
  c1:maj9 e1:m7.5- a1:7.9- a1:7.9- d1:sus7 af1:9.11+ g1:sus7 g1:7
  c1:maj9 g1:7.5+ c1:sus9 c1:7 f1 g1:7 c1:maj7 c2:6 e2:9
  a1:m7 c1:9 f1:maj9 bf2:9 a2:9.5+ d1:sus7 af1:9.11+ g1:9 g1:9
  
  c1:maj9 e1:m7.5- a1:7.9- a1:7.9- d1:m7 d2:m7+ d2:m7 g1:7 g1:7
  c1:maj9 e1:m7.5- a1:7.9- a1:7.9- d1:sus7 af1:9.11+ g1:sus7 g1:7
  c1:maj9 g1:7.5+ c1:9 c1:9 f1 f1 bf1:9 bf1:9
  c1:maj9 e1:7.5+ a1:m7 c1:7 f2:maj7 d2:m7 g2:9 g2:7.9- c1:6

  \chordOpenParen{ d2:m7 }
  \chordCloseParen{ g2:7 }
}

refrainHLRealNicoChords = \chordmode {
  s2
  
  c1:maj9 e1:m7.5-/bf a1:7.9- a1:7.9- d1:m7 d2:m7+/cs d2:m7/c g2:7/b f/a g1:7
  c1:maj9 e1:m7.5-/bf a1:7.9- a1:7.9- d1:sus7 af1:9.11+ g1:sus7 g1:7
  c1:maj9 g1:7.5+ c1:sus9 c1:7 f1 fs1:dim7 c1:maj7/g c2:6 e2:9
  a1:m7 c1:9 f1:maj9 bf2:9 a2:9.5+ d1:sus7 af1:9.11+ g1:9 g1:9
  
  c1:maj9 e1:m7.5-/bf a1:7.9- a1:7.9- d1:m7 d2:m7+/cs d2:m7/c g2:7/b f/a g1:7
  c1:maj9 e1:m7.5-/bf a1:7.9- a1:7.9- d1:sus7 af1:9.11+ g1:sus7 g1:9
  c1:maj9 g1:7.5+ c1:9 c1:9 f1 f1 bf1:9 bf1:9
  c1:maj9 e1:7.5+/bf a1:m7 c1:7 f2:maj7 d2:m7 g2:9 g2:7.9- c1:6

  \chordOpenParen{ d2:m7 }
  \chordCloseParen{ g2:7 }
}

refrainHLPVGChords = \chordmode {
  s2
  
  c1 g1:m6/bf a1:7.9- a2:7.9- a2:7 d1:m d2:m/cs d2:m/c g2:7/b f2/a g2:7 g2:9
  c1 g1:m6/bf a1:7.9- a1:7.9- d1:7 b2.:m/d g4:7 g2:7 d2:m7 g1:7
  c1 g1:7 c1/e c2/e g4:7 c4:7 f4 e2:5+ f4 g2:7/b f2/a c1:9/e c2/e r2
  a1:m c1:9 f2. cs4*2:dim7 bf4:7.5- a2:7 d1:13 d1:9 g2:7 g2:9 g1:9
  
  c1 g1:m6/bf a1:7.9- a2:7.9- a2:7 d1:m d2:m/cs d2:m/c g2:7/b f2/a g2:7 g2:11
  c1 g1:m6/bf a1:7.9- a1:7.9- d1:7 b2.:m/d g4:7 g2:7 d2:m7 g1:7

  c1 g1:7 c1 c1:7 f4. e4. f4 g4. gf4. f4 f1:m6/af f2:m6/af af2:7.5-
  c1/g c1:5+ a2.:m c4/bf c1/bf a2:m6 af2:7.5+ g1:9
  c4
  \chordOpenParen{ a2:m }
  c4:5+ g4:sus7
  \chordCloseParen{ g2.:7 }
}

refrainChords = \refrainHLRealNicoChords

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad" 4 = 72

  \partial 2 e4 f4 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  g1 | g1 | g4 bf2.~ | bf2 a4 g4 |
  \break
  f2. f4 | f2 f2 | f1~ | f2 c4 d4 |
  \break
  e1 | e1 | e4 g2.~ | g2 f4 e4 | 
  \break
  d4 d2 d4 | d2 d4 d4~ | d1~ | d4 r4 e4 f4 |
  
  \sect "B"
  
  g1 | g1 | g4 c2.~ | c2 b4 bf4 | 
  \break
  a4 gs2 a4 | d2. c4 | g1~ | g4 r4 c,4 d4 |
  \break
  e4 ds4 e4 a4~ | a2. g4 | c,2. g'4~ | g4 e4 f2 |
  \break
  d1~ | d1~ | d4 r4 r2 | r2 e4 f4 |
  
  \bar "||"

  \xPageBreak

  \xTextMark \markup{ \bold \box "A2" }
  
  g1 | g1 | g4 bf2.~ | bf2 a4 g4 |
  \break
  f2. f4 | f2 f2 | f1~ | f2 c4 d4 |
  \break
  e2. e4 | e2. e4 | e4 g2.~ | g2 f4 e4 | 
  \break
  d4 d2 d4 | d2 d4 d4~ | d1~ | d4 r4 e4 f4 |
  
  \sect "C"
  
  g1 | g1 | g4 e'2.~ | e2 d4 c4 |
  \break
  a4. gs8~ gs4 a4 | d4. df8~ df4 c4 | f,1~ | f2 c4 d4 |
  \break
  e2 e4 e4~ | e2 c4 d4 | e4 e4 e4 e4~ | e2 c4 d4 |
  \break
  e1 | e1 | c1~ | c2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
