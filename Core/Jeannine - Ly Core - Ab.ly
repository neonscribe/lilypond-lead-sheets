%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  (set-global-staff-size 18))

\header {
  title = "Jeannine"
  subtitle = \instrument
  poet = "Eddie Jefferson"
  composer = "Duke Pearson"
  copyright = "© 1960 Upam Music Co."
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  af1:m7 af1:m7 af1:m7 af1:m7 af1:m7 af1:m7 af1:m7 af1:m7
  fs1:m7 b1:7 e1:maj7 a1:7 bf1:m7 ef1:7.9+
  
  af1:maj7 ef1:7.9+

  af1:maj7 ef2:m7 af2:7
  
  df1:maj7 g2:m7.5- c2:7 f1:maj7 f1:maj7
  f1:m7 bf1:7 bf1:m7 ef1:7

  af1:m7 af1:m7 af1:m7 af1:m7 af1:m7 af1:m7 af1:m7 af1:m7
  fs1:m7 b1:7 e1:maj7 a1:7 bf1:m7 ef1:7.9+ af1:maj7
  \chordInsideParens{ ef1:7.9+ }
}

refrainKey = af

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Up" 4 = 210

  \xTextMark \markup{ \bold \box "A1,A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  r8 ef8 r4 ef4 r4 | r8 ef8 r4 ef4 f4 | gf4 f8 ef8~ ef2~ | ef2. r4 |
  \break
  r8 ef8 r4 ef4 r4 | r8 ef8 r4 ef4 f4 | gf4 f8 ef8~ ef2~ | ef2 r8 c8 df8 af'8~ |
  \break
  af4. e8~ e8 cs4 a8 | gs'4 g8 fs8~ fs8 gs8 fs8 b8~ |
  b2~ b8 as8 b8 fs8~ | fs2. e8 ef8~ |
  \break
  ef4. ef8 r2 | r8 bf8 \tuplet 3/2 { cf8 df8 ef8 } gf4 ff8 ef8~ |
  \alternative { \volta 1 {
  ef1~ | ef1 |
  } \volta 2 {
  ef2~\repeatTie \tuplet 3/2 { ef4 c4 ef4 } | f2 ef4. af,8~ |
  } } }
  \sect "B"
  
  af2~ af8 bf8 \tuplet 3/2 { c8 df8 ef8 } | f8 c8 df8g8~ g8 f8 g8 a8~ |
  a1 | r8 e4. \tuplet 3/2 { f4 g4 a4 } |
  \break
  af2~ \tuplet 3/2 { af4 g4 af4 } | bf2 f4. bf8~ | bf1~ | bf1 |
  

  \sect "A3"
  
  r8 ef,8 r4 ef4 r4 | r8 ef8 r4 ef4 f4 | gf4 f8 ef8~ ef2~ | ef2. r4 |
  \break
  r8 ef8 r4 ef4 r4 | r8 ef8 r4 ef4 f4 | gf4 f8 ef8~ ef2~ | ef2 r8 c8 df8 af'8~ |
  \break
  af4. e8~ e8 cs4 a8 | gs'4 g8 fs8~ fs8 gs8 fs8 b8~ |
  b2~ b8 as8 b8 fs8~ | fs2. e8 ef8~ |
  \break
  ef4. ef8 r2 | r8 bf8 \tuplet 3/2 { cf8 df8 ef8 } gf4 ff8 ef8~ |
  ef1~ | ef2 r2 |
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
