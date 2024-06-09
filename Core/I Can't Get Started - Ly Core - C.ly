%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "I Can't Get Started"
  subtitle = \instrument
  poet = "Ira Gershwin"
  composer = "Vernon Duke"
  copyright = "© 1935 Chappell & Co., Inc."
}

refrainLyricsOne = \lyricmode {
  I've flown a -- round the world in a plane;
  I've set -- tled re -- vo -- lu -- tions in Spain;
  The North Pole I have chart -- ed,
  But can't get start -- ed with you.
  
  A -- round the golf course I'm un -- der par,
  And all the mov -- ies want me to star;
  I've got a house, a show -- place,
  But I get no place with you.
  
  You're so su -- preme, lyr -- ics I write of you,
  Scheme just for a sight of you,
  Dream both day and night of you
  And what good does it do?
  
  In nine -- teen twen -- ty -- nine I sold short;
  In Eng -- land I'm pre -- sen -- ted at court,
  But you've got me down -- heart -- ed
  'Cause I can't get start -- ed with you.
}

refrainLyricsTwo = \lyricmode {
  I do a hun -- dred yards in ten flat;
  The Prince of Wales has co -- pied my hat;
  With queens I've à la cart -- ed,
  But can't get start -- ed with you.

  The lead -- ing tai -- lors fol -- low my styles,
  And tooth -- paste ads all fea -- ture my smiles;
  The As -- tor -- bilts I vis -- it,
  But say, what IS it with you?
  
  When first we met, how you e -- lat -- ed me!
  Pet, you dev -- as -- tat -- ed me!
  Yet, now you've de -- flat -- ed me
  Till you're my Wa -- ter -- loo.
  
  I've sold my kiss -- es at a ba -- zaar,
  And af -- ter me they've named a ci -- gar;
  But late -- ly how I've smart -- ed
  'Cause I can't get start -- ed with you.
}

refrainChords = \chordmode {
  s4.
  
  c2:maj7 a2:m7 d2:m7 g2:7 e2:7 a2:m7 d2:7 g2:sus7
  c2:maj7 a2:m7 d2:m7 g2:7.9- bf2:7.5- a2:7 d2:7 g2:sus7

  c2:maj7 a2:m7 d2:m7 g2:7 e2:7 a2:m7 d2:7 g2:sus7
  c2:maj7 a2:m7 d2:m7 g2:7.9- c2:6 bf2:7 c1:maj7
  
  e2:m7 a2:7 a2:m7 a2:7 d2:maj7 g2:maj7 d1:maj7
  d2:m7 g2:7 d2:m7 g2:7 e2:m7 a2:7 d2:7 g2:sus7

  c2:maj7 a2:m7 d2:m7 g2:7 e2:7 a2:m7 d2:7 g2:sus7
  c2:maj7 a2:7.5+ d2:m7 g2:7.9- c2:6
  \chordOpenParen{ a2:7.5+ }
  d2:m7
  \chordCloseParen{ g2:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Slow" 4 = 100

  \partial 4. c8 e8 g8 |
  \bar "||"

  \textMark \markup{ \bold \box "A1" }
  
  b4 c8 a8~ a8 e8 f4 | g2~ g8 e8 g8 b8 | d4 e8 c8~ c8 g8 a4 | b2 r8 c,8 e8 g8 |
  \break
  b4 c8 a8~ a8 e4 f8 | g4 g8 af8~ af8 c,8 d4 | e1~ | e2 r8 c8 e8 g8 |
  
  \bar "||"
  \break

  \textMark \markup{ \bold \box "A2" }
  
  b4 c8 a8~ a8 e8 f4 | g2~ g8 e8 g8 b8 | d4 e8 c8~ c8 g8 a4 | b2 r8 c,8 e8 g8 |
  \break
  b4 c8 a8~ a8 e4 f8 | g4 g8 af8~ af8 c,8 d4 | c1 | r4 c4 e4 g4 |

  \bar "||"
  \pageBreak

  \textMark \markup{ \bold \box "B" }
  
  a1 | fs8 fs8 fs8 fs8~ fs8 f8 e4 | a1 | e8 e8 e8 e8~ e8 ef8 d4 |
  \break
  a'1 | e8 e8 e8 e8~ e8 ef8 d4 | a'2 b2 | d8 d4 b8 g8 c,8 e8 g8 |
  
  
  \bar "||"
  \break

  \textMark \markup{ \bold \box "A3" }

  b4 c8 a8~ a8 e8 f4 | g2~ g8 e8 g8 b8 | d4 e8 c8~ c8 g8 a4 | b2 r8 c,8 e8 g8 |
  \break
  b4 c8 a8~ a8 f8 a8 cs8 | e4 f8 d8~ d8 a8 b4 | c1~ | c1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"
