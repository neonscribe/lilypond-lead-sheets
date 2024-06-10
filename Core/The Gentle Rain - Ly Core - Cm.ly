%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  (set-global-staff-size 16)
  (set-global-staff-size 18)
)

\header {
  title = "The Gentle Rain"
  subtitle = \instrument
  poet = "Matt Dubey"
  composer = "Luiz Bonfá"
  copyright = "© 1965 EMI Unart Catalog, Inc."
}

bossaRhythm = ##t

refrainLyrics = \lyricmode {
We __ both are lost __
And a -- lone __ in the world, __
walk with me __
In the gen -- tle rain. __
Don't __ be a -- fraid, __ I've a hand __
for your hand, __ and I
will __ be your love __ for a while. __
I __ feel your tears __ as they fall __
on my cheek, __
they are warm __ like the gen -- tle rain. __
Come, __ lit -- tle one, __ you have me, __ in the
world, __ and our love __ will be sweet, __
will be sad, __
like the gen -- tle rain, __
like the gen -- tle rain, __
like the gen -- tle rain. __
}

refrainNewRealChords = \chordmode {
  c1:m c1:m g1:7/b g1:7/b
  bf1:m7 ef2:sus7 ef2:7 af1:maj7 af1:maj7
  
  a1:m7.5- d1:7 g1:m7.5- c1:7
  f1:m7.5- d2:m7.5- df2:7 c1:m d2:m7.5- g2:7
  
  c1:m c1:m g1:7/b g1:7/b
  bf1:m7 ef2:sus7 ef2:7 af1:maj7 af1:maj7

  a1:m7.5- d1:7 g1:m7.5- c1:7
  f1:m7.5- d2:m7.5- df2:7 c2:m
  \chordInsideParens{ g2:7/b }
  bf2:m7 ef2:7 af1:maj7
  ef2:sus9 ef2:13 af1:maj7 g1:m7 c1:m
  
  \chordOpenParen{ d2:m7.5- }
  \chordCloseParen{ g2:7 }
}

refrainRealLatinBookChords = \chordmode {
  c1:m c1:m6 d1:m7.5- g1:7
  c2:m7 f2:9 bf2:m7 ef2:9 af1:maj9 af1:maj9
  
  a1:m7.5- d1:7 g1:m7.5- c1:7.9-
  f1:m7.5- d1:m7.5- c1:m df1:7.11+
  
  c1:m c1:m6 d1:m7.5- g1:7
  c2:m7 f2:7 bf2:m7 ef2:9 af1:maj7 af1:maj7

  a1:m7.5- d1:7 g1:m7.5- c1:7
  f1:m7.5- d1:m7.5- c2:m7 f2:9 bf2:m7 ef2:9

  af1:maj9 ef1:13 af1:maj9 g1:7.9+.5+ c1:m7
  
  \chordOpenParen{ d2:m7.5- }
  \chordCloseParen{ g2:7 }
}

refrainChords = \refrainRealLatinBookChords

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium Bossa" 4 = 120

  \xTextMark \markup{ \bold \box "A1" }

  g2~ \tuplet 3/2 { g4 f4 ef4 } | ef2~ \tuplet 3/2 { ef4 f4 g4 } |
  g2~ \tuplet 3/2 { g4 f4 ef4 } | d2~ \tuplet 3/2 { d4 ef4 f4 } |
  \break
  g1~ | g2 g8 bf8 g8 ef8 | f1~ | f1 |

  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B1" }
  
  ef'2~ \tuplet 3/2 { ef4 d4 c4 } | c2~ \tuplet 3/2 { c4 bf4 a4 } |
  df2~ \tuplet 3/2 { df4 c4 bf4 } | bf2~ \tuplet 3/2 { bf4 af4 g4 } |
  \break
  cf2~  \tuplet 3/2 { cf4 bf4 af4 } | af2~ \tuplet 3/2 { af4 g4 f4 } |
  g1~ | g1 |

  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  g2~ \tuplet 3/2 { g4 f4 ef4 } | ef2~ \tuplet 3/2 { ef4 f4 g4 } |
  g2~ \tuplet 3/2 { g4 f4 ef4 } | d2~ \tuplet 3/2 { d4 ef4 f4 } |
  \break
  g1~ | g2 g8 bf8 g8 ef8 | f1~ | f1 |

  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B2" }
  
  ef'2~ \tuplet 3/2 { ef4 d4 c4 } | c2~ \tuplet 3/2 { c4 bf4 a4 } |
  df2~ \tuplet 3/2 { df4 c4 bf4 } | bf2~ \tuplet 3/2 { bf4 af4 g4 } |
  \break
  cf2~  \tuplet 3/2 { cf4 bf4 af4 } | af2~ \tuplet 3/2 { af4 g4 f4 } |
  g1~ | g2 g8 bf8 g8 ef8 |

  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "C" }
  
  f1~ | f2 g8 c8 g8 ef8 | f1~ |
  \break
  f2 d'8 f8 d8 bf8 | c1~ | c1 |

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
    \vspace #2
    \line { \huge { Band vamp on i, vocal full chorus } }
    \line { \huge { Accordion solo full chorus, guitar solo full chorus. } }
    \line { \huge { Vocal out chorus, end on i } }
  }
}

\include "../Include/notes.ily"
