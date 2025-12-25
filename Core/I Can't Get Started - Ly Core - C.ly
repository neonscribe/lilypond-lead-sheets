%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "I Can't Get Started"
  subtitle = \instrument
  poet = "Ira Gershwin"
  composer = "Vernon Duke"
  copyright = \markup \small { \now " " "© 1935 Chappell & Co., Inc." }
}

refrainLyrics = \lyricmode {
  I've flown a -- round the world __ in a plane. __
  I've set -- tled re -- vo -- lu -- tions in Spain.
  The North Pole I have chart -- ed,
  but can't get start -- ed with you. __
  
  A -- round the golf course I'm un -- der par, __
  and all the mov -- ies want __ me to star.
  I've got a house, a show -- place,
  but I get no __ place with you.
  
  You're so su -- preme, lyr -- ics I write of you,
  scheme just for a sight __ of you,
  dream both day and night __ of you.
  And what good does it do?
  
  In nine -- teen twen -- ty -- nine I sold short. __
  In Eng -- land I'm pre -- sen -- ted at court,
  But you've got me down -- heart -- ed
  'cause I can't get start -- ed with you. __
}

refrainLyricsTwo = \lyricmode {
  I do a hun -- dred yards in ten flat. __
  The Prince of Wales has co -- pied my hat.
  With queens I've à la cart -- ed,
  but can't get start -- ed with you. __

  The lead -- ing tai -- lors fol -- low my styles, __
  and tooth -- paste ads all fea -- ture my smiles.
  The As -- tor -- bilts I vis -- it,
  But say, what IS it with you?
  
  When first we met, how you e -- lat -- ed me!
  Pet, you dev -- as -- tat -- ed me!
  Yet, now you've de -- flat -- ed me
  till you're my Wa -- ter -- loo.
  
  I've sold my kiss -- es at __ a ba -- zaar,
  And af -- ter me they've named a ci -- gar.
  But late -- ly how I've smart -- ed
  'cause I can't get start -- ed with you. __
}

refrainChords = \chordmode {
  s2
  
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

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Slow [Billie Holiday 1938" 4 = 100

  \partial 2 \invisEighth c8 e8 g8 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  b4 c8 a8~ a8 e8 f4 | g2~ g8 e8 g8 b8 | d4 e8 c8~ c8 g8 a4 | b2 r8 c,8 e8 g8 |
  \break
  b4 c8 a8~ a8 e4 f8 | g4 g8 af8~ af8 c,8 d4 | e1~ | e2 r8 c8 e8 g8 |
  
  \sect "A2"
  
  b4 c8 a8~ a8 e8 f4 | g2~ g8 e8 g8 b8 | d4 e8 c8~ c8 g8 a4 | b2 r8 c,8 e8 g8 |
  \break
  b4 c8 a8~ a8 e4 f8 | g4 g8 af8~ af8 c,8 d4 | c1 | r4 c4 e4 g4 |

  \bar "||"

  \xPageBreak

  \xTextMark \markup{ \bold \box "B" }
  
  a1 | fs8 fs8 fs8 fs8~ fs8 f8 e4 | a1 | e8 e8 e8 e8~ e8 ef8 d4 |
  \break
  a'1 | e8 e8 e8 e8~ e8 ef8 d4 | a'2 b2 | d8 d4 b8 g8 c,8 e8 g8 |
  
  
  \sect "A3"

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

\include "../Include/refrain.ily"
