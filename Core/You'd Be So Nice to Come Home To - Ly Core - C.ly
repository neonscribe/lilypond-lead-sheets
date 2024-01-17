%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "You'd Be So Nice to Come Home To"
  subtitle = \instrument
  composer = "Cole Porter"
  copyright = "© 1942 Chappell & Co."
}

verseLyrics = \lyricmode {
  It's not that you're fair -- er
  than a lot of girls just as pleas -- in',
  That I doff my hat as a wor -- ship -- per at your shrine, __
  It's not that you're rar -- er
  than as -- par -- a gus out of sea -- son,
  no, my dar -- ling, this is the rea -- son
  Why you've got to be __ mine:
}

verseChords = \chordmode {
  s4 g1:7 c1:6 g2:/b c2:9 f2 f2:m
  c1 d1:7 g2 d2:7/a g2/b g4 ef4:6
  bf1:7 ef1:6 bf2/d ef2:9 af1
  b4 ef4/bf a2:m7.5- ef4:dim7/bf ef2/bf b8:dim7 c8:m d1:7 g2
}

verseKey = c

verseMelody = \relative g' {
  \time 2/2
  \key \verseKey \major
  \clef \whatClef
  \tempo "Freely or Medium"

  \mark \markup{ "Verse" }
  
  \partial 4 c4 |
  \bar "||"
  
  b2 f4 g4 | a4 a2 e8 f8 | g8 a8 g4 d4 e4 | f4 c2 c8 d8 |
  e4 f4 g4 fs8 g8 | a8 b8 c4 d4 e8 d8~ | d1 | r2 r4 ef4 |
  d2 af4 bf4 | c4 c2 g8 af8 | bf8 c8 bf4 f4 g4 | af4 ef2 ef8 f8 |
  \override BreathingSign.text = #(make-musicglyph-markup "scripts.caesura.curved")
  fs4 g4 ef'4 \breathe d8 c8 | a4 bf2 af8 g8 |fs4 d8 fs8~ fs2 |
  
  \partial 2 g2

  \bar "||"
  \pageBreak
}

refrainLyrics = \lyricmode {
  You'd be so nice __ to come home to,
  You'd be so nice __ by the fire, __
  While the breeze on high __ sang a lull -- a -- by, __
  You'd be all that I could de -- sire. __
  Un -- der stars, chilled __ by the win -- ter, __
  Un -- der an Aug -- ust moon, burn -- ing a -- bove, __
  You'd be so nice, you'd be par -- a dise
  to come home to __ and love.
}

refrainChords = \chordmode {
  s2
  a1:m b2:m7.5- e2:7 a2:m e2:7 a1:m
  g1:m7 c1:7 f1:maj7 f1:maj7 b1:m7.5-
  e1:7 b2:m7.5- e2:7.9- a2:m a2:m/g fs1:m7.5- b1:7.9-
  b1:m7.5- e1:7
  
  a1:m b2:m7.5- e2:7 a2:m e2:7 a1:m
  g1:m7 c1:7 f1:6 f1:6
  ds1:dim7 c1/e gs1:dim7 a1:m7 d2:7 
  af2:7 d2:7.9- g2:7 c1:6
  \chordOpenParen{ b2:m7.5- }
  \chordCloseParen{ e2:7.9- }
}

refrainKey = c

refrainMelody = \relative g' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef

  \mark \markup{ "Refrain" \box "A1" }
  \tempo "Medium"

  \partial 2 a4 b4 |
  
  \bar "||"
  
  c1 | b2~ b8 a4 gs8 | a2 e2~ | e2 ds4 e4 |
  \break
  a1 | g2~ g8 e4 d8 | c1~ | c2 d4 e4 |

  \bar "||"
  \break  
  \mark \markup{ \box "B" }

  f2. ds4 | e2~ e8 gs4 b8 | d2. b4 | c2~ c8 d4 cs8 |
  \break
  e2. c4 | ef2 c4. b8 | b1~ | b2 a4 b4 |
  
  \bar "||"
  \break
  
  \mark \markup{ \box "A2" }

  c1 | b2~ b8 a4 gs8 | a2 e2~ | e2 \tuplet 3/2 { e4 f4 g4 } |
  \break
  a4 c4 a2 | g2~ g8 e4 c8 | d1~ | d2 e4 f4 |

  \bar "||"
  \break  
  \mark \markup{ \box "C" }

  a1 | g2 r8 a4 b8 | d2. c4 | a2 c4 d4 | 
  \break
  e2 ef2~ | ef2 d2 | c1~ | c4 r4 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/verse.ily"
\include "../Include/refrain.ily"
