%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

$(if (and (defined? 'printNoteNames) printNoteNames)
     (set-global-staff-size 18))

\header {
  title = "The Thrill Is Gone"
  subtitle = "(not B.B. King!)"
  subsubtitle = \instrument
  poet = ""
  composer = "Ray Henderson/Lew Brown"
  copyright = \markup \small { \now " " "© 1931 DeSylva, Brown & Henderson, Inc." }
}

verseLyrics = \lyricmode {
  I'm in your arms __ and you are kiss -- ing me, __
  but there seems to be __ some -- thing miss -- ing __ in your kiss -- ing. __
  The love we knew __ is just a mem -- o -- ry, __
  It's turned in -- to a com -- e -- dy. __
}

verseChords = \chordmode {
  d4 a2:7.5+
  
  d1 d1 b1:7 b1:7
  e2:m e:m7.5- a1:7 d1:7 a1:7.9- d1 d2 a2:7.5+ 
  d1 d1 b1:7 b1:7 
  e1:m7.5- a1:7 e1:m7.5- a1:7
}

verseKey = d

verseMelody = \relative f' {
  \time 4/4
  \key \verseKey \major
  \clef \whatClef
  \tempo "Rubato"

  \sectStart "Verse"

  \partial 2. a4 b4 a4 |
  \bar "||"

  cs1~ | cs4 a4 b4 a4 | c4 c4 c2~ | c2 b4 a4 |
  \break
  a4 g4 bf2~ | bf2 a4 g4 | g4 fs2.~ | fs2 a4 g4 | g4 fs2.~ | fs4 a4 b4 a4 | 
  \break
  cs1~ | cs4 a4 b4 a4 | c4 c4 c2~ | c4 g4 a4 g4 |
  \break
  bf1~ | bf4 e,4 fs4 e4 | g1~ |
  
  \partial 2. g2. |
  \bar "||"
  \xPageBreak
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

refrainHLChords = \chordmode {
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

refrainNicoChords = \chordmode {
  s4

  d1:m7 d1:m7 g1:7 g1:7
  g2:m7 c2:7 f1:maj7 e2:m7.5- a2:7.5+.9- d1:m7
  e2:m7.5- a2:7.9- d2:m7 bf2:maj7 g1:m7 a1:7.5+

  d1:m7 d1:m7 g1:7 g1:7
  g2:m7 c2:7 f1:maj7 e2:m7.5- a2:7.5+.9- d1:m7
  e2:m7.5- a2:7.9- d2:m7 bf2:maj7 g1:m7 a1:7.5+.9-
  
  d2:m d2:m7/c b1:m7.5- bf1:9.11+ a1:sus7
  g2:m7 g2:m7/f ef1:9.11+ e1:m7.5- a1:7.9- d1:m

  \chordOpenParen{ e2:m7.5- }
  \chordCloseParen{ a2:7.9- }
}

refrainChords = \refrainNicoChords

refrainKey = d

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Ballad [Chet Baker 1954]" 4 = 60
  
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

\include "../Include/verse.ily"

\include "../Include/refrain.ily"
