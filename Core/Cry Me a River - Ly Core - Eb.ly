%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 16) #}
)

\header {
  title = "Cry Me a River"
  subtitle = \instrument
  composer = "Arthur Hamilton"
  copyright = "© 1953 Saunders Publications Inc."
}

refrainLyrics = \lyricmode {
Now __ you say you're lone -- ly, __
You cry the whole night thru, __
Well, you can cry __ me a ri -- ver, cry __ me a ri -- ver,
I cried a ri -- ver o -- ver you.
Now __ you say you're sor -- ry __
For be -- in' so un -- true, __
Well, you can cry __ me a ri -- ver, cry __ me a ri -- ver,
I cried a ri -- ver o -- ver you
You drove me, near -- ly drove me out of my head,
While you __ nev -- er shed a tear. __
Re -- mem -- ber, I re -- mem -- ber all that you said. __
Told me love was too ple -- be -- ian,
Told me you were through with me, and
Now __ you say you love me, __
Well, just to prove you do, __
Come on, and cry __ me a ri -- ver, cry __ me a ri -- ver,
I cried a ri -- ver o -- ver you.
}

refrainChords = \chordmode {
  c2:m af2/c c2:m6 c2:m7 f2:m7 bf2:7
  ef2:maj7 d4:m7 g4:7 g2:m7 c2:7.9- c2:m7 f2:9
  b2:9 bf2:sus7 ef2:6.9 g2:7.5+

  c2:m af2/c c2:m6 c2:m7 f2:m7 bf2:7
  ef2:maj7 d4:m7 g4:7 g2:m7 c2:7.9- c2:m7 f2:9
  b2:9 bf2:sus7 ef2:6.9 d2:7.9+

  g2:m7 e2:m7.5- ef2:7.11+ d2:7.9- g2:m7 e2:m7.5-
  af2:7.9+ d2:7.9- g2:m7 e2:m7.5- ef2:7.11+ d2:7.9-
  g1:maj7 d2:m11 g4:sus7 g4:7

  c2:m af2/c c2:m6 c2:m7 f2:m7 bf2:7
  ef2:maj7 d4:m7 g4:7 g2:m7 c2:7.9- c2:m7 f2:9
  b2:9 bf2:sus7 ef1:6.9
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad" 4 = 65

  \mark \markup{ \box "A1" }
  
  d2~ d8 c8 g8 ef8 | d8 c8~ c2. | r8 c8 ef8 c'8 bf4 bf4 |
  g2~ g8 g8 fs8 g8 | c4~ \tuplet 3/2 { c8 df8 c8 } df8 c4. | 
  r8 g8~ \tuplet 3/2 { g8 f8 ef8 } f8 g4. |
  r8 gf8 f8 ef8 f8 ef8 c8 ef8 | ef1 |

  \bar "||"
  \break

  \mark \markup{ \box "A2" }

  d'2~ d8 c8 g8 ef8 | d8 c8~ c2. | r8 c8 ef8 c'8 bf4 bf4 |
  g2~ g8 g8 fs8 g8 | c4~ \tuplet 3/2 { c8 df8 c8 } df8 c4. | 
  r8 g8~ \tuplet 3/2 { g8 f8 ef8 } f8 g4. |
  r8 gf8 f8 ef8 f8 ef8 c8 ef8 | ef1 |

  \bar "||"
  \break

  \mark \markup{ \box "B" }
  
  r8 g8 a8 bf8 d,8 e8 fs8 g8 | a8 g8 bf8 a8~ a4. g8 |
  bf4~ \tuplet 3/2 { bf8 g8 d'8 } c4 bf8 c8~ |
  c1 | r8 g8 a8 bf8 d,8 e8 fs8 g8 | a8 g8 bf8 a8~ a2 |
  r8 a16 g16 a8 g8 a8 g8 b8 g8 | r8 a16 g16 a8 g8 a8 g8 b8 g8 |
  
  \bar "||"
  \break

  \mark \markup{ \box "A3" }

  d'2~ d8 c8 g8 ef8 | d8 c8~ c2. | r8 c8 ef8 c'8 bf4 bf4 |
  g2~ g8 g8 fs8 g8 | c4~ \tuplet 3/2 { c8 df8 c8 } df8 c4. | 
  r8 g8~ \tuplet 3/2 { g8 f8 ef8 } f8 g4. |
  r8 gf8 f8 ef8 f8 ef8 c8 ef8 | ef1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
