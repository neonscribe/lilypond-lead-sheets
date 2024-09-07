%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "You Don't Know Me"
  subtitle = \instrument
  composer = "Cindy Walker and Eddy Arnold"
  copyright = "© 1955 Hill and Range Songs, Inc."
}

straightEighths = ##t

refrainLyrics = \lyricmode {
  \repeat unfold 11 { \skip 1 }
  You give your
  hand to me __ and then you
  say hel -- lo. __ And I can
  hard -- ly speak, __ my heart is
  beat -- ing so. __ And a -- ny --
  one could tell, __ you think you
  know me well, __ but you don't
  know me. __
  No, you don't
  know the one __ who dreams of
  you at night, __ and longs to
  kiss your lips __ and longs to
  hold you tight. __ To you I'm
  just a friend, __ that's all
  I've ev -- er been, __ but
  you don't know me.
  For
  I __ nev -- er knew __
  the art of __ mak -- ing love, __
  though my heart ached with love __ for
  you. __ A --
  fraid __ and shy, __ I
  let my chance go by, __ the
  chance __ you might have loved me
  too. You give your
  hand to me __ and then you
  say good -- bye. __ I watch you
  walk a -- way __ be -- side the
  luck -- y guy. __ To nev -- er
  nev -- er know __ the one who 
  loves you so; __ no, you don't
  know me. __
}

refrainChordsRayAndDiana = \chordmode {
  ef2./bf af2./bf ef2.:maj7/bf af4./bf g4.:7.9-.5+
  c2.:m7 f2.:9.11+ d4.:7.9+.5+ b4.:7.9+ af4./bf bf2.:7.5+
  
  ef2. ef2.:maj7 ef2.:7 bf4.:m9 a4.:7.5+
  af1.:maj7 a2.:dim7 d2.:7.9+
  g2.:m7 c2.:7 f2.:m7 bf2.:7
  g2.:7.5+ c2.:9+.5+ f2.:9 bf2.:7
  
  ef2. ef2.:maj7 ef2.:7 bf4.:m9 a4.:7.9+
  af1.:maj7 a2.:dim7 d2.:7.9+
  g2.:m7 c2.:7.9- f2.:m7 bf2.:7
  df2.:9 d2.:7.9+ ef2. bf4.:m7 a2.:7.5-
  
  af2.:maj7 a2.:dim7 ef2./bf c2.:7
  f2.:m7 bf2.:13 ef2. d4.:7.9+ g4.:7.5+ 
  c1.:m g2.:m7 c2.:7
  f2.:7 b2.:7.5- bf2.:7 bf2.:7.5+

  ef2. ef2.:maj7 ef2.:6 c4:m7 bf4:m7 a4:7.5-
  af1.:maj7 a2.:dim7 d2.:7.9+
  g2.:m7 c2.:7 f2.:m7 bf2.:7
  ef2. 
  \chordOpenParen{ c2.:7 }
  f2.:m7
  \chordCloseParen{ bf2.:7.5+ }
}

refrainChordsRay = \chordmode {
  ef1./bf bf1.:7 ef1./bf bf1.:7
  
  ef2. ef2.:maj7 ef2.:6 ef2. af2. af2.:maj7 af2.:6 a2.:dim7
  ef2.:6/bf c2.:7 f2.:m7 bf2.:7
  g2.:7.13- c2.:9 f2.:m11 bf2.:13

  ef2. ef2.:maj7 ef2.:6 ef2. af2. af2.:maj7 af2.:6 a2.:dim7
  ef2.:6/bf c2.:7 f2.:m7 bf2.:7
  ef2.:6 af2./ef ef2. ef2.:9

  af2.:6 a2.:dim7 ef2.:6/bf c2.:7 f2.:m7 bf2.:13 ef2.:6 ef2.:9
  c1.:m g2.:m c2.:9 f1.:7 bf1.:7
  
  ef2.:6 ef2. ef2.:6 ef2. af2. af2.:maj7 af2.:6 a2.:dim7
  ef2.:6/bf c2.:7 f2.:m7 bf2.:7
  ef4.:6
  \chordOpenParen{ c4.:9 }
  f4.:m11
  \chordCloseParen{ bf4.:13 }
  \chordOpenParen{ af4./ef }
  ef4.
  \chordCloseParen{ ef8.:9 }
}

refrainChords = \refrainChordsRay

refrainKey = ef

refrainMelody = \relative f' {
  \time 12/8
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Slowly" 4. = 70

  \xTextMark \markup{ "Intro" }

  bf4. \tuplet 4/6 { bf16( ef16 g16 c16 } bf4.) bf,4. |
  bf4. \tuplet 4/6 { bf16( d16 f16 c'16 } bf4.) bf,4. |
  bf4. \tuplet 4/6 { bf16( ef16 g16 c16 } bf4.) bf,4. |
  bf4. \tuplet 4/6 { bf16( d16 f16 c'16 } bf4)

  \bar"!"

  bf,8 bf4 c8 |

  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  \set Score.currentBarNumber = #0


  c4 bf8 bf4.~ bf4 bf,8 ef4 g8 |
  c4 bf8 bf4.~ bf4 ef8 ef4 f8 |
  f4 ef8 ef4.~ ef4 ef,8 af4 c8 |
  f4 ef8 ef4.~ ef4 ef8 d4 c8 |
  c4 bf8 bf4.~ bf4 g8 c4 bf8 |
  bf4 af8 af4.~ af4 d,8 f4 af8 |
  af4 g8~ g4.~ g2.~ |
  g2. r4 bf8 bf4 c8 |

  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A2" }

  c4 bf8 bf4.~ bf4 bf,8 ef4 g8 |
  c4 bf8 bf4.~ bf4 ef8 ef4 f8 |
  f4 ef8 ef4.~ ef4 ef,8 af4 c8 |
  f4 ef8 ef4.~ ef4 ef8 d4 c8 |
  c4 bf8 bf4.~ bf4 g8 c4 bf8 |
  bf4 af8 af4.~ af4 d,8 f4 af8 |
  af4 g8~ g4.~ g2.~ |
  g2. r4. r4 ef8 |

  \bar "||"
  \pageBreak

  \xTextMark \markup{ \bold \box "B" }
  
  c'4.~ c8 c8 d8 ef4.~ ef4 ef8 |
  d4 d8~ d8 c8 bf8 bf4.~ bf8 c8 bf8 |
  \break
  af4 g4 af4 c4.~ c4 af8 |
  g4( bf8~ bf4.~ bf4.~ bf4) g8 |
  \break
  ef'4.~ ef4 ef8 ef4.~ ef4 ef8 |
  d4 d8 d4 d8 d4.~ d4 bf8 |
  \break
  c4.~ c4 c8 c4 bf4 a8 c8 |
  bf2. r4 bf8 bf4 c8 |

  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A3" }

  c4 bf8 bf4.~ bf4 bf,8 ef4 g8 |
  c4 bf8 bf4.~ bf4 ef8 ef4 f8 |
  f4 ef8 ef4.~ ef4 ef,8 af4 c8 |
  f4 ef8 ef4.~ ef4 ef8 d4 c8 |
  c4 bf8 bf4.~ bf4 g8 c4 bf8 |
  bf4 af8 af4.~ af4 d,8 f4 af8 |
  af4 g8~ g4.~^\markup{ "Turnaround to " \bold \box "A1" } g2.~ |
  \partial 8*8 g4.^\markup{ "Turnaround to " \bold \box "B" } r4. r4 |

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
    \line { \huge { guitar intro (legato), guitar and vocal A1, band joins at A2 rest of chorus  } }
    \line { \huge { guitar solo A1,A2 accordion solo A1,A2, vocal B to end, hold ''so'' at bar 29, rubato to end  } }
  }
}

%% \include "../Include/notes.ily"
