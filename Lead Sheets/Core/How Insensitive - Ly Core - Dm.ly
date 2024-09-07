%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 16) #}
)

\header {
  title = "How Insensitive"
  subtitle = \instrument
  poet = "Norman Gimbel"
  composer = "Antônio Carlos Jobim"
  copyright = "© 1963 MCA-Duchess Music Corp."
}

bossaRhythm = ##t

refrainLyricsOneM = \lyricmode {
How __ in -- sen -- si -- tive __
I must have seemed __
when he told me that he loved __ me. __
How __ un -- moved and cold __
I must have seemed __
when he told me so sin -- cere -- ly. __
Why, __ he must have asked, __
did I just turn __ and stare in i -- cy si -- lence? __
What __ was I to say? __
What can you say __ when a love af -- fair is o -- ver?
}

refrainLyricsTwoM = \lyricmode {
Now __ he's gone a -- way __
and I'm a -- lone __ with the mem -- 'ry of his last look. __
Vague __ and drawn and sad, __
I see it still, __
All his heart -- break in that last __ look. __
How, __ he must have asked, __
could I just turn __
and stare in i -- cy si -- lence? __
What __ was I to do? __
What can you do __ when a love af -- fair is o -- ver?
}

refrainLyricsOneF = \lyricmode {
How __ in -- sen -- si -- tive __
I must have seemed __
when she told me that she loved __ me. __
How __ un -- moved and cold __
I must have seemed __
when she told me so sin -- cere -- ly. __
Why, __ she must have asked, __
did I just turn __ and stare in i -- cy si -- lence? __
What __ was I to say? __
What can you say __ when a love af -- fair is o -- ver?
}

refrainLyricsTwoF = \lyricmode {
Now __ she's gone a -- way __
and I'm a -- lone __ with the mem -- 'ry of her last look. __
Vague __ and drawn and sad, __
I see it still, __
All her heart -- break in that last __ look. __
How, __ she must have asked, __
could I just turn __
and stare in i -- cy si -- lence? __
What __ was I to do? __
What can you do __ when a love af -- fair is o -- ver?
}

refrainLyricsOne = $(if (and (defined? 'objectGenderMale) objectGenderMale)
		        #{ \refrainLyricsOneM #}
		        #{ \refrainLyricsOneF #} )

refrainLyricsTwo = $(if (and (defined? 'objectGenderMale) objectGenderMale)
		        #{ \refrainLyricsTwoM #}
		        #{ \refrainLyricsTwoF #} )

refrainChordsSRB = \chordmode {
  d1:m7 d1:m7 a1:7.9-/cs a1:7.9-/cs
  c1:m6 c1:m6 g1:7/b g1:7/b
  
  bf1:maj7.6 bf1:maj7.6 ef1:maj7 ef1:maj7
  e1:m7.5- a1:7.5+ d1:m7 d1:m7
  
  f1:7/c f1:7/c b1:dim7 b1:dim7
  bf1:maj9 a1:sus7.9- d1:m7 d1:m7
  
  f1:7/c f1:7/c e1:7/b e1:7/b
  g1:m6/bf a1:7.9- d1:m7
  \chordInsideParens{ a1:7.9- }
}

refrainChordsDave = \chordmode {
  d1:m7 d1:m7 a1:7/cs a1:7/cs
  c1:m6 c1:m6 g1:7/b g1:7/b
  
  bf1:6 bf1:6 ef1:maj7 ef1:maj7
  e1:m7.5- a1:7.9- d1:m7 d2:m7 cs2:7
  
  c1:m11 f1:9 b1:m7.5- e1:7.9-
  bf1:maj7 e2:m7.5- a2:7 d1:m7 d2:m7 cs2:7
  
  c1:m11 f1:9 b1:m11 e1:7.9-
  g1:m6/bf a1:7 d1:m
  \chordInsideParens{ e2:m7.5- }
  a2:7
  \unset chordNameFunction
}

refrainChordsHL = \chordmode {
  d1:m9 d1:m9 cs1:dim7 cs1:dim7
  c1:m6 c1:m6 g1:7/b g1:7/b
  
  bf1:maj7 bf1:maj7 ef1:maj7 ef1:maj7
  e1:m7.5- a1:7.9- d1:m7 df1:7
  
  c1:m9 c1:m9 b1:dim7 b1:dim7
  bf1:maj7 e2:m7.5- a2:7.9- d1:m7 d2:m7 df2:7
  
  c1:m9 f1:7 b1:m7 e1:7.9-
  bf1:maj7 a1:7.9- d1:m7
  \chordOpenParen{ e2:m7.5- }
  \chordCloseParen{ a2:7.9- }
}

refrainChords = \refrainChordsHL

refrainKey = d

refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium Bossa Nova" 4 = 130

  \xTextMark \markup{ \bold \box "A1" }
  
  a1~ | a4 bf8 a8~ a8 bf4 a8~ | a1~ | a4 bf8 a8~ a8 bf4 a8~ |
  a2~ a8 gs4 a8 | c8 b4 bf8~ bf8 a4 a8~ | a4. g8~ g2~ | g1 |

  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  g1~ | g4 a8 g8~ g8 a4 g8~ | g1~ | g4 a8 g8~ g8 a4 g8~ |
  g2 r8 fs4 g8 | bf8 a4 gs8~ gs8 g4 g8~ | g4. f8~ f2~ | f1 |

  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A3" }
  
  f1~ | f4 g8 f8~ f8 g4 f8~ | f1~ | f4 g8 f8~ f8 g4 a8~ |
  \break
  a2. f4 | d4 e8 d8~ d8 e4 f8~ | f2 f2~ | f1 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A4" }
  
  f1~ | f4 g8 f8~ f8 g4 e8~ | e1~ | e4 \segnoSign f8 e8~ e8 f4 e8~ |
  \break
  e2 r8 ds8 e8 g8~ | g8 fs4 f4 e4 e8~ |
  e4. d8~ \xTextMark \markup { \small \italic "fine" } d2 \xTextMark \markup { \small \italic "D.S. al fine last time" } | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"
