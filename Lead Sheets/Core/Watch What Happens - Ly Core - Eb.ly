%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 18) #}
)

\header {
  title = "Watch What Happens"
  subtitle = \instrument
  poet = "Norman Gimbel"
  composer = "Michel Legrand"
  copyright = "© 1964 Productions Michel Legrand, Paris, France"
}

bossaRhythm = ##t

refrainLyrics = \lyricmode {
  Let some -- one __
  start be -- liev -- ing in you.
  Let him hold out his hand,
  Let him touch you and watch what hap -- pens.
  One some -- one __
  who can look in your eyes
  and see in -- to your heart,
  Let him find you and watch what hap -- pens.
  Cold, no I won't be -- lieve your heart is cold, __
  May -- be just a -- fraid __
  to be bro -- ken a -- gain. __
  Let some -- one __
  with a deep love to give,
  Give that deep love to you
  And what ma -- gic you'll see.
  Let some -- one give his heart, __
  Some -- one who cares like me. __
}

refrainChords = \chordmode {
  ef1:maj7 ef1:maj7 f1:9 f1:9
  f1:m9 bf2:sus13 bf2:13 ef2:maj7 e2:maj7 f2:maj7 e2:maj7

  ef1:maj7 ef1:maj7 f1:9 f1:9
  f1:m9 bf2:sus13 bf2:13 ef2:maj7 e2:maj7 f2:maj7 gf2:maj7

  g1:maj7 g1:maj7 g1:m7 c1:7
  f1:maj7 f1:maj7 f1:m7 bf1:7
  
  ef1:maj7 ef1:maj7 f1:9 f1:9
  f1:m9 bf2:sus13 bf2:13
  ef1:6 e2:6 d4.:6 ef8:6 ef1:6 e2:6 d4.:6 ef8:6 ef1:6
  
  \chordOpenParen{ f2:m7 }
  \chordCloseParen{ bf2:7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Bossa Nova" 4 = 130

  \xTextMark \markup{ \bold \box "A" }
  
  g4. g8 g2~ | \tuplet 3/2 { g4 c,4 ef4 } \tuplet 3/2 { g4 f4 ef4 } | g1 | \tuplet 3/2 { r4 c,4 ef4 } \tuplet 3/2 { g4 f4 ef4 } |
  \break
  g1 | \tuplet 3/2 { r4 c,4 ef4 } \tuplet 3/2 { g4 f4 ef4 } | g2 gs2 | a2 gs2 |
  \break

  g4. g8 g2~ | \tuplet 3/2 { g4 c,4 ef4 } \tuplet 3/2 { g4 f4 ef4 } | g1 | \tuplet 3/2 { r4 c,4 ef4 } \tuplet 3/2 { g4 f4 ef4 } |
  \break
  g1 | \tuplet 3/2 { r4 c,4 ef4 } \tuplet 3/2 { g4 f4 ef4 } | g2 gs2 | a2 bf2 |

  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  b1 | r4 d,8 g8 c8 b8 a8 g8 | bf4. a8 bf2~ | bf2 a4 g4 |
  \break
  c,4. a'8 a2~ | \tuplet 3/2 { a4 c,4 f4 } \tuplet 3/2 { a4 g4 f4 } | af1~ | af1 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "C" }

  g4. g8 g2~ | \tuplet 3/2 { g4 c,4 ef4 } \tuplet 3/2 { g4 f4 ef4 } | g1 | \tuplet 3/2 { r4 c,4 ef4 } \tuplet 3/2 { g4 f4 ef4 } |
  \break
  g1 | \tuplet 3/2 { r4 c,4 ef4 } \tuplet 3/2 { g4 f4 ef4 } | ef2. ef4 | e4 e4 d8 d4 ef8~ |
  \break
  ef2. ef4 | e4 e4 d8 d4 ef8~ | ef1~ | ef1

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

performanceNotes =
\markup {
  \column {
    \line { \huge { Bass & drum vamp on I, guitar joins, accordion joins, vocal full chorus } }
    \line { \huge { Accordion solo full chorus, guitar solo full chorus. } }
    \line { \huge { Vocal out chorus, repeat “Someone who cares like me” 3x, } }
    \line { \huge { band only second time, vocal and ritard third time } }
  }
}