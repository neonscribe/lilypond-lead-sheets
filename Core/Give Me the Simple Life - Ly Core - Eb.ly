%% -*- Mode: LilyPond -*-

#(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"
\include "../Include/even-brace.ily"

\header {
  title = "Give Me the Simple Life"
  subtitle = \instrument
  poet = "Harry Ruby"
  composer = "Rube Bloom"
  copyright = \markup \small { \now " " "© 1945 WB Music Corp." }
}

verseLyrics = \lyricmode {
Folks are blessed who make the best of ev -- 'ry day,
Liv -- ing by their own phi -- lo -- so -- phy.
Ev -- 'ry -- one be -- neath the sun must find a way __
And I have found the on -- ly way for me.
}

verseChords = \chordmode {
  ef2:6.9 bf2:9.3.5+ ef2:6 f4:m7 bf4:7.9-
  ef2:6.9 bf2:9.5+ ef2:maj9 ef2:6 g2:m6 a4:m7.5- d4:7.5+
  g2:m6.9 c2:9.11+ f2:m f4:maj7 f4:7 bf2:sus9 bf2:9
}

verseKey = ef

verseMelody = \relative f'' {
  \time 2/2
  \key \verseKey \major
  \clef \whatClef
  \tempo "Medium [Bing Crosby 1945]" 4 = 128

  \xTextMark \markup{ "Verse" }

  c8 c8 c8 bf8 c8 c8 c8 bf8 | g8 g8 g2. |
  c8 c8 c8 bf8 c8 c8 c8 bf8 | g1 | d'8 d8 d8 bf8 d8 d8 d8 bf8 |
  a8 a8 a4~ a4. g8 | c8 c8 c8 af8 c8 c8 c8 af8 | f1 |
  \bar "||"
}

refrainLyrics = \lyricmode {
  I don't be -- lieve in fret -- tin' __ and griev -- in',
  Why mess __ a -- round with strife?
  I __ nev -- er was cut out to step and strut out,

  Give __ me the sim -- ple life! __

  Some __ find it pleas -- ant din -- ing on pheas -- ant.
  Those __ things roll off my knife. __
  Just serve __ me to -- ma -- toes and __ mashed po -- ta -- toes,

  Give __ me the sim -- ple life! __

  A cot -- tage small is all I'm af -- ter,
  Not one that's spa -- cious and wide;
  A house that rings with joy and laugh -- ter
  And the ones you love in -- side. __

  Some __ like the high road, I __ take the low road,
  Free __ from the care and strife. __
  Sounds corn -- y and seed -- y, but __ yes, in -- deed -- y;

  Give __ me the sim -- ple life! __
}

refrainLyricsTwoMale = \lyricmode {
  Liv -- ing I find is best __
  when your mind is keen __ as a carv -- ing knife. __
  I'm cra -- zy a -- bout sleep,
  can't __ do with -- out sleep,

  Give __ me the sim -- ple life! __

  I __ love to whit -- tle and play a lit -- tle
  tune __ on a ten cent fife.
  I don't __ aim to wor -- ry, hus -- tle or hur -- ry,

  Give __ me the sim -- ple life! __

  I greet the dawn when I a -- wak -- en,
  the sky is clear up a -- bove.
  I like my scram -- bled eggs and ba -- con
  served by some -- one that I love. __

  Life __ could be thril -- ling wth one who's will -- ing
  To be a farm -- ers wife
  Kids call -- ing me pap -- py would make me hap -- py.

  Give __ me the sim -- ple life! __
}

refrainLyricsTwoFemale = \lyricmode {
  Liv -- ing I find is best __
  when your mind is keen __ as a carv -- ing knife. __
  I'm cra -- zy a -- bout sleep,
  can't __ do with -- out sleep,

  Give __ me the sim -- ple life! __

  I __ love to whit -- tle and play a lit -- tle
  tune __ on a ten cent fife.
  I don't __ aim to wor -- ry, hus -- tle or hur -- ry,

  Give __ me the sim -- ple life! __

  I greet the dawn when I a -- wak -- en,
  the sky is clear up a -- bove.
  I like my scram -- bled eggs and ba -- con
  served by some -- one that I love. __

  Life __ could be thril -- ling now that I’m will -- ing
  To be a farm -- ers wife
  A gar -- den of ros -- es, kids __ run -- ny no -- ses.

  Give __ me the sim -- ple life! __
}

refrainLyricsTwo =
#(if (and (defined? 'femaleSinger) femaleSinger)
  refrainLyricsTwoFemale
  refrainLyricsTwoMale)

refrainChords = \chordmode {
  f2:m7 bf2:7 g2:m7 c2:7 f2:m7 g2:7 c2:m bf4:m7 ef4:7
  af2 a2:dim7 ef2/bf c2:7 f2:m7 bf2:7 g2:m7 c2:7

  f2:m7 bf2:7 g2:m7 c2:7 f2:m7 g2:7 c2:m bf4:m7 ef4:7
  af2 a2:dim7 ef2/bf c2:7 f2:m7 bf2:7 ef2 c2:7.9+.13-
  
  f2:m7 bf2:7 g2:m7 c2:7 f2:m7 bf2:7 ef2:maj7 af2:9.11+
  d2:m7.5- g2:7.9- c1:m7 f1:13 bf2 c2:7.9+.13-

  f2:m7 bf2:7 g2:m7 c2:7 f2:m7 g2:7 c2:m bf4:m7 ef4:7
  af2 a2:dim7 ef2/bf c2:7 f2:m7 bf2:7 ef2 
  \chordInsideParens{ c2:7.9+.13- }
}

refrainKey = ef

refrainMelody = \relative f'' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef

  \set Score.currentBarNumber = #1

  \sectStart "A1"
  
  ef8 ef4 c8 bf8 af4 d8~ | d8 d4 bf8 af8 g4 c8~ | c8 c4 af8 g8 f4 ef8~ |
  ef2 r8 f4 g8~ | g8 g4 ef8 f8 ef4 c'8~ | c8 c4 ef,8 f8 ef4 ef'8~ |
  ef8 ef4 c8 bf8 g4 f8~ | f2. r8 ef'8~ |
  
  \bar "||"

  \xPageBreak

  \sectNoBar "A2"

  ef8 ef4 c8 bf8 af4 d8~ |
  d8 d4 bf8 af8 g4 c8~ | c8 c4 af8 g8 f4 ef8~ |
  ef2 r8 f4 g8~ |
  g8 g4 ef8 f8 ef4 c'8~ | c8 c4 ef,8 f8 ef4 ef'8~ |
  ef8 ef4 c8 bf8 g4 ef8~ |
  ef2. ef4 |

  \sect "B"
  
  c'4 c4 c8 bf8 af8 c8 | bf4 bf2 ef,4 |
  c'4 c4 c8 bf8 af4 |
  \break
  bf2. ef,4 | af4 af4 af8 g8 f8 af8 | g4 g2 g8 fs8 |
  \break
  g4 f4 ef8 g4 f8~ | f2. r8 ef'8~ |

  \sect "A3"
  
  ef8 ef4 c8 bf8 af4 d8~ | d8 d4 bf8 af8 g4 c8~ | c8 c4 af8 g8 f4 ef8~ |
  ef2 r8 f4 g8~ | g8 g4 ef8 f8 ef4 c'8~ | c8 c4 ef,8 f8 ef4 ef'8~ |
  ef8 ef4 c8 bf8 g4 ef8~ | ef2 r2 |


  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/verse.ily"

\include "../Include/refrain.ily"
