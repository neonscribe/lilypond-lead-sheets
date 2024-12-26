%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
     (set-global-staff-size 18))

\header {
  title = "The Thrill Is Gone"
  subtitle = "(not B.B. King!)"
  subsubtitle = \instrument
  poet = ""
  composer = "Ray Henderson/Lew Brown"
  copyright = "© 1931 DeSylva, Brown & Henderson, Inc."
}

refrainLyrics = \lyricmode {
  The thrill is gone! __
  The thrill is gone! __
  I can see it in your eyes, 
  I can hear it in your sighs,
  feel your touch and re -- al -- ize
  the thrill is gone.

  The nights are cold __
  for love is old. __
  Love was grand when love was new,
  birds were sing -- ing, skies were blue,
  now it don't ap -- peal to you.
  The thrill is gone.
  
  This is the end,
  so why pre -- tend and let it lin -- ger on. __
  The thrill is gone! __
}

refrainChords = \chordmode {
  s4

  d1:m7 d1:m7 g1:7 g1:7
  g2:m7 c2:7 f1:maj7 e2:m7.5- a2:7.5+.9- d1:m7
  e2:m7.5- a2:7.9- d2:m7 bf2:maj7 g1:m7 a1:7.5+

  d1:m7 d1:m7 g1:7 g1:7
  g2:m7 c2:7 f1:maj7 e2:m7.5- a2:7.5+.9- d1:m7
  e2:m7.5- a2:7.9- d2:m7 bf2:maj7 g1:m7 a1:7.5+.9-
  
  d2:m d2:m7/c b1:m7.5- bf1:9.11+ d1:m7/a
  g2:m7 g2:m7/f ef1:9.11+ e1:m7.5- a1:7.9- d1:m

  \chordOpenParen{ e2:m7.5- }
  \chordCloseParen{ a2:7.9- }
}

refrainKey = d

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Ballad" 4 = 60
  
  \partial 4 a4 |
  \bar"||"

  \xTextMark \markup{ \bold \box "A1" }

  a4 d,4 f2~ | f2. a4 | a4 d,4 f2~ | f2. r4 |
  \break
  a4 a4 d4 d4 | c4 c4 a2 | g4 g4 bf4 bf4 | a4 a4 f2 |
  \break
  e4 e4 g4 g4 | f4 f4 d4 d4 | bf'2. e,4 | a2. a4 |
  
  \sect "A2"
  
  a4 d,4 f2~ | f2. a4 | a4 d,4 f2~ | f2. r4 |
  \break
  a4 a4 d4 d4 | c4 c4 a2 | g4 g4 bf4 bf4 | a4 a4 f2 |
  \break
  e4 e4 g4 g4 | f4 f4 d4 d4 | bf'2. a4 | bf2. a4 |
  
  \sect "B"
  
  f'2. e4 | f2. e4 | e2. d4 | e2. d4 |
  \break
  c2. bf4 | a2. g4 | a1~ | a4 e4 g4 f4 | d1~ | d2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
