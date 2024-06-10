%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (and (defined? 'printNoteNames) printNoteNames)
          (or (string=? instrument "Bass for Standard Key")
              (string=? instrument "Alto Voice Key")))
  (set-global-staff-size 18))

\header {
  title = "It's All Right With Me"
  subtitle = \instrument
  composer = "Cole Porter"
  copyright = "© 1953 Chappell & Co."
}

peggyLeeIntroChords = \chordmode {
  c1:m c1:m7+ c1:m7 c1:m6
  f1:m7.5- bf1:7.9- d1:m7.5- g4:7.9- r4
}

peggyLeeIntroMelody = \relative f'' {
  \time 2/2
  \key ef \major
  \clef \whatClef
  \tempo "Fast Swing"

  \xTextMark \markup{ "Intro" }

  ef2 ef4. ef8~ | ef4 ef4. ef8 c4 | ef2 ef4. ef8~ | ef4 ef4. ef8 c4 |
  ef2 ef4. ef8~ | ef4 bf'8 af8 g8 ef8 c4 | ef8 ef4. ef4 ef8 g8~ | g4 r4
  
  \bar "||"
}

refrainLyrics = \lyricmode {
It's the wrong time __ and the wrong place. __
Tho' your face is charm -- ing, it's the wrong face. __
It's not his face, __ but such a charm -- ing face
That it's all right __ with me
It's the wrong song __ in the wrong style. __
Tho' your smile is love -- ly, it's the wrong smile __
It's not his smile, __ but such a love -- ly smile
That it's all right __ with me. __
You can't know how hap -- py I am that we met,
I'm strange -- ly at -- trac -- ted to you. __
There's some -- one I'm try -- ing so hard to for -- get.
Don't you want to for -- get some -- one, too?
It's the wrong game __ with the wrong chips.
Though your lips are temp -- ting, they're the wrong lips.
They're not his lips, but they're such temp -- ting lips
That, if some night, __ you're free, __ dear,
it's all right, __ it's all right __ with me. __
}

refrainStandardsRealBookChords = \chordmode {
  s2
  c1:m c1:m7 f1:9 f1:9
  c1:m c1:m7 f1:m7 f1:m7 bf1:9
  bf1:9 g1:m7.5- c1:9 f1:9 f1:9
  d1:m7.5- g1:7

  c1:m c1:m7 f1:9 f1:9
  c1:m c1:m7 f1:m7 f1:m7 bf1:9
  bf1:9 g1:m7.5- c1:9 f1:9
  bf1:5.4.7.9.13 ef1:6 ef1:6

  g1:m7.5- c1:7.9- 
  fs1:dim7 fs1:dim7 f1:m7.5- bf1:7.9- ef1:maj7
  ef1:maj7 g1:m7.5- c1:7.9- fs1:dim7 fs1:dim7
  f1:m7.5- bf1:7.9- d1:m7.5- g1:7

  c1:m c1:m7 f1:9 f1:9
  c1:m c1:m7 f1:m7 f1:m7 bf1:9
  bf1:9 g1:m7.5- c1:9 f1:9 f1:9
  bf1:9 bf1:9 ef1:maj7 ef1:7 af1:maj7 af1:7
  f1:9 bf1:sus9 ef1:6
  \chordInsideParens{ g1:7 }
}

refrainAebersoldChords = \chordmode {
  s2
  c1:m7 c1:m7+ c1:m7 c1:m7 c1:m7 c1:m7
  f1:m7 f1:m7 bf1:7 bf1:7 g1:m7.5- c1:7
  f1:7 f1:7 d1:m7.5- g1:7

  c1:m7 c1:m7+ c1:m7 c1:m7 
  c1:m7 c1:m7 f1:m7 f1:m7 bf1:7 bf1:7 g1:m7.5-
  c1:7 f1:7 bf1:7 ef1:6 ef1:6

  bf1:m7/ef bf1:m7/ef a1:dim7/ef a1:dim7/ef
  af1:dim7/ef af1:dim7/ef ef1:maj7 ef1:maj7
  
  g1:m7.5- c1:7.9- f1:7 f1:7 f1:m7.5- bf1:7.9- d1:m7.5- g1:7

  c1:m7 c1:m7+ c1:m7 c1:m7 c1:m7 c1:m7 f1:m7 f1:m7
  bf1:7 bf1:7 g1:m7.5- c1:7 f1:7 f1:7 bf1:7 bf1:7
  ef1:maj7 ef1:7 af1:maj7 af1:7 f1:7 f1:m7/bf ef1:6 
  \chordOpenParen{ d2:m7.5- }
  \chordCloseParen{ g2:7.9- }
}

refrainChords = \chordmode {
  s2
  c1:m c1:m7+ c1:m7 c1:m6
  c1:m7 c1:m7 f1:m7 f1:m7
  bf1:9 bf1:9 g1:m7.5- c1:9
  c1:m7 f1:9 d1:m7.5- g1:7.9-

  c1:m c1:m7+ c1:m7 c1:m6
  c1:m7 c1:m7 f1:m7 f1:m7
  bf1:9 bf1:9 g1:m7.5- c1:9
  f1:9 bf1:7 ef1:6 ef1:6

  bf1:m7/ef bf1:m7/ef a1:dim7/ef a1:dim7/ef
  af1:dim7/ef af1:dim7/ef 
  ef1:maj7 ef1:maj7
  
  bf1:m7/ef bf1:m7/ef a1:dim7/ef a1:dim7/ef
  af1:dim7/ef af1:dim7/ef 
  %% g1:m7.5- c1:7.9- f1:7 f1:7 f1:m7.5- bf1:7.9-
  d1:m7.5- g1:7

  c1:m c1:m7+ c1:m7 c1:m6
  c1:m7 c1:m7 f1:m7 f1:m7
  bf1:9 bf1:9 g1:m7.5- c1:9
  f1:9 f1:9 f1:m7 bf1:9
  
  ef1:maj7 ef1:7 af1:maj7 af1:7
  f1:9 bf1:sus9 ef1:6
  g1:7
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Fast Swing" 4 = 200
  
  \partial 2 c4 d4 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  ef2 g2~ | g2 c,4 d4 | ef2 g2~ | g2 c,4 d4 |
  ef2 f4 g4~ | g4 ef4 f4 g4 |  af2 c2~ | c2 b4 c4 |
  d2 c2~ | c4 d,4 cs4 d4 | r4 c'2 b4 | bf2 c,4 d4 |
  ef2 g2~ | g2. f4 | d1 | r2 c4 d4 |

  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A2" }

  ef2 g2~ | g2 c,4 d4 |  ef2 g2~ | g2 c,4 d4 |
  ef2 f4 g4~ | g4 ef4 f4 g4 |  af2 c2~ | c2 b4 c4 |
  d2 c2~ | c4 d,4 cs4 d4 |  r4 c'2 b4 | bf2 c,4 d4 |
  ef2 g2~ | g2. f4 | ef1~ | ef2 r4 ef4 |

  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B" }

  bf'2 bf4 c4 | df4 df2 bf4 |  a2 a4 bf4 |  c2. a4 |
  af2 af4 bf4 | cf4 cf2 af4 | g1~ | g2 r4 ef4 |
  bf'2 bf4 c4 | df4 df2 bf4 | a2 a4 bf4 | c2. a4 |
  af2 af8 af4 af8 | af4 bf2 af4 | g1 | r2 c,4 d4 |
  
  \bar "||"
  \pageBreak

  \xTextMark \markup{ \bold \box "A3" }

  ef2 g2~ | g2 c,4 d4 | ef2 g2 | r2 c,4 d4 |
  ef2 f4 g4~ | g4 ef4 f4 g4 | af2 c2 | r2 b4 c4 |
  d2 c2 | r4 d,4 cs4 d4 | r4 c'2 b4 | bf2 c,4 d4 |
  ef2 g2~ | g2. f4 | d1~ | d4 r4 ef4 f4 \textToCodaLastTime |
  g2 bf2~ | bf2 r4 b4 | c2 ef2~ | ef2. c4 |
  ef,1~ |  ef1~ | ef2 r2 | r1 |

  \bar "|."
}

codaLyrics = \lyricmode {
  all right, __ it's all right, __ it's all right with me. __
}

codaChords = \chordmode {
  ef1:maj7 ef1:7 af1:maj7 af1:7 f1:9 bf1:7
  ef1:maj7 ef1:maj7
}

codaKey = ef

codaMelody = \relative f' {
  \time 2/2
  \key \codaKey \major
  \clef \whatClef

  \textCoda

  g2 bf2~ | bf2 r4 b4 | c2 ef2~ | ef2 r4 d,4 |
  ef2 g2~ | g2. f4 | ef1~ | ef4 r4 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup {
  \vspace #2
}

\include "../Include/coda.ily"

performanceNotes =
\markup {
  \column {
    \line { \huge { Intro, band, last 8 (not coda). 1st chorus, vocal. } }
    \line { \huge { A1, A2 accordion solo, turnaround to top. A1, A2, guitar solo. } }
    \line { \huge { B and A3, vocal with band. } }
    \line { \huge { Coda, vocal with band. } }
  }
}

\include "../Include/notes.ily"
