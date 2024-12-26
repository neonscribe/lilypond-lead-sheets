%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 16) #}
)

\header {
  title = "The Girl From Ipanema"
  subtitle = \instrument
  poet = "Norman Gimbel"
  composer = "Antônio Carlos Jobim"
  copyright = "© 1963 Jobim Music"
}

bossaRhythm = ##t

refrainLyrics = \lyricmode {
  Tall and tan and young __ and love -- ly,
  The girl from I -- pa -- ne -- ma goes walk -- ing,
  and when she pass -- es, each one she pass -- es goes “aah!” __
  
  When she walks she's like __ a sam -- ba
  that swings so cool and sways __ so gen -- tle
  that when when __ she pass -- es, each one she pass -- es goes “aah!” __
  
  Oh, __ but I watch her so sad -- ly. __
  How __ can I tell her I love her? __
  Yes, __ I would give my heart glad -- ly,
  But each day when she walks to the sea,
  she looks straight a -- head not at me.

  Tall and tan and young __ and love -- ly,
  The girl from I -- pa -- ne -- ma goes walk -- ing,
  and when __ she pass -- es I smile, __ but she does -- n't see.
}

refrainHLChords = \chordmode {
  f1:maj7 f1:maj7 g1:7 g1:7
  g1:m7 gf1:7.5- f1:maj7 gf1:7.5-

  f1:maj7 f1:maj7 g1:7 g1:7
  g1:m7 gf1:7.5- f1:maj7 f1:maj7

  gf1:maj7 gf1:maj7 b1:7 b1:7
  fs1:m7 fs1:m7 d1:7 d1:7
  g1:m7 g1:m7 ef1:7 ef1:7
  a1:m7 d1:7.9-.11+ g1:m7 c1:7.9-.11+

  f1:maj7 f1:maj7 g1:7 g1:7
  g1:m7 gf1:7.5- f1:maj7 \chordInsideParens{ gf1:7.5- }
}

refrainChords = \refrainHLChords

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Bossa Nova" 4 = 130

  \xTextMark \markup{ \bold \box "A1" }
  
  g4. e8 e8 d4 g8~ | g4 e8 e8~ e8 e8 d8 g8~ | g4 e4 e4 d8 g8~ | g8 g8 e8 e8~ e8 e8 d8 f8~ |
  \break
  f8 d4 d8~ d8 d8 c8 e8~ | e8 c4 c8~ c8 c8 bf4 | r4 c2.~ | c2 r2 |
  
  \sect "A2"
  
  g'4. e8 e8 d4 g8~ | g4 e8 e8~ e8 e8 d8 g8~ | g4 e4 e4 d8 g8~ | g8 g8 e8 e8~ e8 e8 d8 f8~ |
  \break
  f8 d4 d8~ d8 d8 c8 e8~ | e8 c4 c8~ c8 c8 bf4 | r4 c2.~ | c2 r2 |
  
  \sect "B"
  
  f1~ | \tuplet 3/2 { f4 gf4 f4 } \tuplet 3/2 { ef4 f4 ef4 } |
  cs4. ds8~ ds2~ | ds2. r8 gs8~ |
  \break
  gs1~ | \tuplet 3/2 { gs4 a4 gs4 } \tuplet 3/2 { fs4 gs4 fs4 } |
  e4. fs8~ fs2~ | fs2. r8 a8~ | 
  \break
  a1~ | \tuplet 3/2 { a4 bf4 a4 } \tuplet 3/2 { g4 a4 g4 } |
  f4. g8~ g2~ | g2 \tuplet 3/2 { r4 a4 bf4 } |
  \break
  \tuplet 3/2 { c4 c,4 d4 } \tuplet 3/2 { e4 f4 g4 } | gs2. a4 |
  \tuplet 3/2 { bf4 bf,4 c4 } \tuplet 3/2 { d4 e4 f4 } | fs1 |
  
  \sect "A3"

  g4. e8 e8 d4 g8~ | g4 e8 e8~ e8 e8 d8 g8~ | g4 e4 e4 d8 g8~ | g8 g8 e8 e8~ e8 e8 d8 a'8~ |
  \break
  a4. f8 f8 f8 d8 c'8~ | c4. e,8 \tuplet 3/2 { e4 e4 d4 } | e1 | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
