%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "'Tis Autumn"
  subtitle = \instrument
  composer = "Henry Nemo"
  copyright = "© 1941 Warner Bros. Inc."
}

verseLyrics = \lyricmode {
  You tell me I'm act -- ing sil -- ly,
  I'm not sil -- ly, just chil -- ly, mm. __
  You say I'm prov -- ing my -- self a goof, __
  For what I say or do __ I've the ab -- so -- lute proof: __
}

verseChords = \chordmode {
  f2:m11 bf2:13 ef2:6.9
  \chordInsideParens{ c2:aug7.9+ }
  f2:m9 bf2:13.9-
  ef1:6.9 a2:m11 d2:13 g2:maj7 e2:m7 a1:m7 d2:sus9 d2:aug7 g1:m7 c2:13 c4:aug9
}

verseMelody = \relative f' {
  \time 2/2
  \key ef \major
  \clef \whatClef
  \tempo "Medium Ballad or Freely"

  \xTextMark \markup{ "Verse" }
  
  r8 bf8 bf8 bf8 bf8 bf4 g8 | c,8 c4. r8 ef'4 c8 |
  g8 g4 c,8 g'8 g4 d8( | c1) |
  r8 d'8 d8 d8 d8 d8 \tuplet 3/2 { e8 e8 e8 } | b2~ b8 d,8 e8 g8 |
  c8 c8 c2.~ | c4 d8 d8 d8 d8 d4 | d1~ |
  \partial 2. d2.

  \bar "||"
}

refrainLyrics = \lyricmode {
  Ole Fath -- er Time checked, so there'd be no doubt;
  Called on the north wind to come on out,
  Then cupped his hands so proud -- ly to shout
  La -- de -- da, de -- da -- de -- dum, 'Tis Au -- tumn. __
  The trees say they're tired, __ they've borne too much fruit; __
  Charmed all the way -- side, there's no dis -- pute
  Now, shed -- ding leaves, they don't give a hoot, __
  La -- de -- da, de -- da -- de -- dum, __ 'Tis Au -- tumn. __
  Then the birds got to -- ge -- ther
  To chirp a -- bout the wea -- ther, __ mmm. __
  Af -- ter mak -- ing their de -- cis -- ion
  In bird -- y -- like pre -- cis -- ion,
  turned a -- bout __ and made a bee -- line __ to the south.
  My hold -- ing you close __ real -- ly is no crime __
  Ask the birds and the trees, and Ole __ Fath -- er Time.
  It's just to help the mer -- cu -- ry climb, __
  La -- de -- da, de -- da -- de -- dum, __ 'Tis Au -- tumn.
}

refrainChords = \chordmode {
  c4:aug7
  
  f1:m7 bf1:aug9 ef2:maj7
  \chordInsideParens{ f2:m7 }
  g2:m7 c2:7.9- f2:m7 df2:9.11+ c2:m7 f2:13
  f2:m7 bf2:13 ef2:6 c2:aug7.9-

  f1:m7 bf1:aug9 ef2:maj7
  \chordInsideParens{ f2:m7 }
  g2:m7 c2:7.9- f2:m7 df2:9.11+ c2:m7 f2:13
  f2:m7 bf2:13 ef1:6
  
  bf2:m7 ef2:9 bf2:m7 ef2:9 af2:6 ef2:aug7.9- af1:6
  c2:m7 f2:9 c2:m7 f2:9 f2:m9 c2:aug7.9+ f2:9 bf4:9
  \chordInsideParens{ c4:7.9- }

  f1:m7 bf1:aug9 ef2:maj7
  \chordInsideParens{ f2:m7 }
  g2:m7 c2:7.9- f2:m7 df2:9.11+ c2:m7 f2:13
  f2:m7 bf2:13 ef2:6
  \chordInsideParens{ c4:aug7.9- }
}

refrainKey = ef

refrainMelody = \relative f'' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad"
  
  \partial 4 c4 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  ef8 c8 ef8 c8~ c4~ \tuplet 3/2 { c8 af8 g8 } | fs8 d'4 c8~ c2 |
  r8 d8 bf8 g8 bf8 bf4. | r8 d8 bf8 g8 e2 |
  r8 c'8 af8 bf8 g4. f8 | ef8 g8 f'8 d8~ d2 |
  c8 ef8 c8 af8 \tuplet 3/2 { g8 bf8 g8~ } g8 f8 | c8 ef4.~ ef4 r8 c'8 |
  
  
  \sect "A2"

  ef8 c8 ef8 c8~ c4~ \tuplet 3/2 { c8 af8 g8 } | fs8 d'4 c8~ c2 |
  r8 d8 bf8 g8 bf8 bf4. | r8 d8 bf8 g8 e2 |
  r8 c'8 af8 bf8 g4. f8 | ef8 g8 f'8 d8~ d2 |
  c8 ef8 c8 af8 \tuplet 3/2 { g8 bf8 g8~ } g8 f8 | c8 ef4.~ ef4 \tuplet 3/2 { r8 ef'8 c8 } |

  \bar "||"

  \xPageBreak

  \xTextMark \markup{ \bold \box "B" }
  
  df4 ef8 ef8 c8 c4 ef,8 | f8 fs8 g8 ef'8 c8 c8~ \tuplet 3/2 { c8 b8( c8 } |
  f4~ \tuplet 3/2 { f8 ef8 c8 } g4~ \tuplet 3/2 { g8 ef8 g8 } |
  f2.) f'8 e8 | ef8 ef8 f8 f8 d8 d4 f,8 | g8 af8 a8 f'8 d8 d8~ \tuplet 3/2 { d8 e,8 f8 } |
  bf2~ bf8 c8 ef8 c8 | g8 g8~ \tuplet 3/2 { g8 c,8 ef8 } f4. c'8 |
  
  \sect "A3"

  ef8 c8 ef8 c8~ c4~ \tuplet 3/2 { c8 af8 g8 } | fs8 d'4 c8~ c4 d8 bf8 |
  d4 bf8 g8 bf4. bf8 |
  \break
  d4~ \tuplet 3/2 { d8 bf8 g8 } e2 |
  r8 c'8 af8 bf8 g4. f8 | ef8 g8 f'8 d8~ d2 \textToCodaLastTime |
  \break
  c8 ef8 c8 af8 \tuplet 3/2 { g8 bf8 g8~ } g8 f8 |
  \partial 2. c8 ef4.~ ef4 |

  \bar "|."
}

codaLyrics = \lyricmode {
  La -- de -- da, de -- da -- de -- dum, __ 
  La -- de -- da, de -- da -- de -- dum, __ 
  La -- de -- da, de -- da -- de -- dum, __ 
  'Tis Au -- tumn.
  
}

codaChords = \chordmode {
  f2:m7 bf2:13
  g2:m7 c2:13
  f2:m7 bf2:13
  ef1:6
}

codaKey = ef

codaMelody = \relative f'' {
  \time 2/2
  \key \codaKey \major
  \clef \whatClef

  \textCoda

  c8 ef8 c8 af8 \tuplet 3/2 { g8 bf8 g8~ } g4 |
  d'8 f8 d8 bf8 \tuplet 3/2 { a8 c8 a8~ } a4 |
  \break
  c8 ef8 c8 af8 \tuplet 3/2 { g8 bf8 g8~ } g8 f8 |
  c8 ef4.~ ef2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

%%% \include "../Include/verse.ily"
%%% \markup { \vspace #4 }

\include "../Include/refrain.ily"

\markup { \vspace #2 }

\include "../Include/coda.ily"
