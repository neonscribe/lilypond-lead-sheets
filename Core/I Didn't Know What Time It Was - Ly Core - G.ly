%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (and (defined? 'printNoteNames) printNoteNames)
          (or (string=? instrument "Bb for Standard Key")
              (string=? instrument "Eb for Standard Key")))
   (set-global-staff-size 18))

\header {
  title = "I Didn't Know What Time It Was"
  subtitle = \instrument
  poet = "Lorenz Hart"
  composer = "Richard Rodgers"
  copyright = "© 1939 Chappell & Co."
}

verseLyrics = \lyricmode {
  Once I was young yes -- ter -- day per -- haps,
  Danced with Jim and Paul and
  kissed some oth -- er chaps. Once I was young, but nev -- er was na -- ïve,
  I thought I had a trick or two up my im -- ag -- i -- nar -- y sleeve.
  And now I know I was na -- ïve. __
}

verseChords = \chordmode {
  e2:m d2 c2 d2 e2:m d2
  c2 d2 e2:m d2 c2 d2
  g2:maj7 a2:m7 b4:m7 g4:maj7 b2:7.5+ b2:7 e2:7.5+
  e1:7 a1:m7 d1:9 d1:m7 g1:7
}

verseKey = g

verseMelody = \relative g' {
  \time 4/4
  \key \verseKey \major
  \clef \whatClef
  \tempo "Freely"

  \mark \markup{ "Verse" }
  
  g4 g8 a8 fs2 | e8 g8 e8 g8 a2 | g8 a8 g8 a8 fs4. fs8 |
  e8 g8 e8 g8 a2 | b4 b8 c8 a4. a8 | g8 b8 g8 b8 a4. a8 |
  b8 g8 a8 b8 c8 a8 b8 c8 | d8 c8 b8 a8 g4 fs4 | e1 |
  r4 e4 ds4 e4 | a2 a2 | e2 e2 | g1~ | g2 r2 |

  \bar "||"
  \pageBreak
}

refrainLyrics = \lyricmode {
I __ did -- n't know what time it was,
Then __ I met you.
Oh, __ what a love -- ly time it was
How sub -- lime it was, too.
I __ did -- n't know what day it was.
You __ held my hand.
Warm __ like the month of May it was,
And I'll say it was grand.
Grand __ to be a -- live, to be young,
To be mad, to be yours a -- lone.
Grand __ to see your face, feel your touch,
Hear your voice say I'm all your own.
I __ did -- n't know what year it was,
Life __ was no prize.
I __ want -- ed love and here it was
Shin -- ing out of your eyes.
I'm wise __ and I know what time it is now.
}

refrainChords = \chordmode {
  fs2:m7 b2:7.9- e2:m7 a2:7 fs2:m7 b2:7.9- e2:m7 a2:7 
  a2:m7 d2:7 e2:m7 e2:m7/d c2:maj7 b2:m7 a2:m7 d2:7

  fs2:m7 b2:7.9- e2:m7 a2:7 fs2:m7 b2:7.9- e2:m7 a2:7 
  a2:m7 d2:7 e2:m7 e2:m7/d c2:maj7 b2:m7 a2:m7 d2:7

  g1:6.9 fs2:m7.5- b2:7.9- fs2:m7.5- b2:7.9-
  e4:m7
  \chordInsideParens{ a4:7 }
  d4:m7 g4:7
  a2:m7 d2:7 g1:maj7 e2:m7 a2:7 a2:m7 d2:7

  fs2:m7 b2:7.9- e2:m7 a2:7 fs2:m7 b2:7.9- e2:m7 a2:7 
  a2:m7 d2:7 e2:m7 e2:m7/d c2:maj7 b2:m7 c2:m9 f2:9.13
  b2:7.5+ e2:9 a2:m7 d2:sus9 g1:6 g1:6
}

refrainKey = g

refrainMelody = \relative g' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef

  \mark \markup{ "Refrain" \box "A1" }
  \set Score.currentBarNumber = #1
  \tempo "Medium" 4 = 150
  
  b2~ b8 fs4 g8 | a4 a4 a8 b8 g4 | b2~ b8 fs4 g8 | a1 |
  a2~ a8 e4 fs8 | g4 g4 g8 a8 fs4 | e4 e4 e8 fs8 d4 | c'1 |

  \bar "||"
  \break

  \mark \markup{ \box "A2" }

  b2~ b8 fs4 g8 | a4 a4 a8 b8 g4 | b2~ b8 fs4 g8 | a1 |
  a2~ a8 e4 fs8 | g4 g4 g8 a8 fs4 | e4 e4 e8 fs8 d4 | d'1 |

  \bar "||"
  \break
  \mark \markup{ \box "B" }
  
  e2~ e8 d8 c8 b8 | a4 a8 fs8 a4 a8 fs8 | a4 a8 fs8 a4 af4 | g1 |
  e'2~ e8 d8 c8 b8 | a4 a8 fs8 a4 a8 fs8 | a4 a8 fs8 a4 g4 | d'1 |

  \bar "||"
  \break
  \mark \markup{ \box "A3" }

  b2~ b8 fs4 g8 | a4 a4 a8 b8 g4 | b2~ b8 fs4 g8 | a1 |
  \break
  a2~ a8 e4 fs8 | g4 g4 g8 a8 fs4 | e4 e4 e8 fs8 d4 | d'2. c4 |
  \break
  b2~ b8 fs4 g8 | a4 a4 a8 b8 g4 | g1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/verse.ily"
\include "../Include/refrain.ily"
