%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Peel Me a Grape"
  subtitle = \instrument
  poet = ""
  composer = "Dave Frishberg"
  copyright = \markup \small { \now " " "© 1962 Swiftwater Music" }
}

refrainLyrics = \lyricmode {
Peel __ me a grape, crush __ me some ice,
skin __ me a peach, save the fuzz for my pil -- low.
Spark __ me a smoke, talk to me nice, __
you've got to wine me and dine me.

Don't try to fool me, be -- jewel __ me.
Ei -- ther a -- muse me or lose __ me.
I'm __ get -- tin' hun -- gry, __ peel me a grape. __

Pop __ me a cork, French __ me a fry.
Crack __ me a nut, bring a bowl full of bon -- bons.
Chill __ me some wine, keep stand -- in' by, __
just en -- ter -- tain me, cham -- pagne me.
Show me you love me, kid glove __ me.
Best way to cheer me, cash -- mere __ me.
I'm __ get -- tin' hun -- gry, __ peel me a grape. __

Here's how to be an a -- gree -- a -- ble chap:
love me and leave me in lux -- ur -- y's lap. __
Hop when I hol -- ler, skip when I snap. __
When I say “Do it!,” jump to it.

Send __ out for scotch, boil __ me a crab.
Cut __ me a rose, make my tea with the pet -- als!
Just __ hang a -- round, pick up the tab. __
Nev -- er out -- think me, just mink me.

Po -- lar bear rug me, don't bug __ me.
New Thun -- der -- bird me, you heard __ me.
I'm __ get -- ting hun -- gry, __ peel me a grape.

 " " peel me a grape.
}

refrainChords = \chordmode {
  s8 ef8*3:7

  d4:m7 r8*3 ef8*3:7 d4:m7 r8*3 ef8*3:7 d2:m7 c2:7  bf2:7 a8:7 ef8*3:7
  d4:m7 r8*3 ef8*3:7 d2:m7 c4:m7 f4:7 bf2:7 b2:dim7 f1:7.9+
  bf2:7 b2:dim7 f1:7.9+ bf2:7 b2:dim7 f1:7.9+
  a1:7 a4:7 r2. d2:m7 c2:7 bf2:7 a8:7 ef8*3:7

  d4:m7 r8*3 ef8*3:7 d4:m7 r8*3 ef8*3:7 d2:m7 c2:7  bf2:7 a8:7 ef8*3:7
  d4:m7 r8*3 ef8*3:7 d2:m7 c4:m7 f4:7 bf2:7 b2:dim7 f1:7.9+
  bf2:7 b2:dim7 f1:7.9+ bf2:7 b2:dim7 f1:7.9+
  a1:7 a4:7 r2. d2:m7 c2:7 bf2:7 a4:7 d4:m7
  
  a2:m7 d2:7 a2:m7 d2:7 g2:m g2:m/fs g2:m/f c2:9/e
  b2:m7 e2:7 b2:m7 e2:7 bf1:7 a8*5:7 ef8*3:7

  d4:m7 r8*3 ef8*3:7 d4:m7 r8*3 ef8*3:7 d2:m7 c2:7  bf2:7 a8:7 ef8*3:7
  d4:m7 r8*3 ef8*3:7 d2:m7 c4:m7 f4:7 bf2:7 b2:dim7 f1:7.9+
  bf2:7 b2:dim7 f1:7.9+ bf2:7 b2:dim7 f1:7.9+
  a1:7 a4:7 r2. d2:m7
  \chordOpenParen{ c2:7 }
  bf2:7
  a8:7
  \chordCloseParen{ ef8*3:7 }
  
  d2:m7 c2:7 bf2:7 a2:7 d2:m7 c2:7 bf2:7 a2:7 d1:m6.9
}

refrainKey = d

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium [Blossom Dearie 1967]" 4 = 108

  \partial 2 \invisEighth r4. |
  \bar "||"

  \sectStart "A1"
  
  r8 a8~ \tuplet 3/2 { a8 f8 d8 } g4 r4 | r8 a8~ \tuplet 3/2 { a8 f8 d8 } g4 r4 |
  r8 a8~ \tuplet 3/2 { a8 f8 d8 } g4 d8 f8 | g4 f8 d8 f8 g4. |
  r8 a8~ \tuplet 3/2 { a8 f8 d8 } g4 r4 | a8 f8 d8 g8~ g4 r4 | r8 f8 g8 d8 f4 g4 | r4 af4 f4 d4 |
  f4 g8 d8 f4 g4 | r4 af8 f8~ f4 d4 | f4 g8 d8 f4 g4 | r4 af8 f8~ f4 d4 |
  r8 a'8~ \tuplet 3/2 { a8 bf8 gs8 } a8 a,4.~ | a4 r4 c8 a8 cs8 d8~ | d4 r4 r2 | r2 r8 r4. |
  
  \sect "A2"
  
  r8 a'8~ \tuplet 3/2 { a8 f8 d8 } g4 r4 | r8 a8~ \tuplet 3/2 { a8 f8 d8 } g4 r4 |
  r8 a8~ \tuplet 3/2 { a8 f8 d8 } g4 d8 f8 | g4 f8 d8 f8 g4. |
  r8 a8~ \tuplet 3/2 { a8 f8 d8 } g4 r4 | a8 f8 d8 g8~ g4 r4 | r8 f8 g8 d8 f4 g4 | r4 af4 f4 d4 |
  f4 g8 d8 f4 g4 | r4 af8 f8~ f4 d4 | f4 g8 d8 f4 g4 | r4 af8 f8~ f4 d4 |
  r8 a'8~ \tuplet 3/2 { a8 bf8 gs8 } a8 a,4.~ | a4 r4 c8 a8 cs8 d8~ | d4 r4 r2 | r1 |
  \bar "||"
  
  \xPageBreak

  \sectNoBar "B"
  
  d4 ef8 cs8 d4 ef8 cs8 | d8 ef8 cs8 d8~ d4 r4 | d4 ef8 cs8 d4 ef8 cs8 | d8 ef8 cs8 d8~ d4 r4 |
  \break
  e4 f8 ds8 e8 b4. | e8 f8 ds8 e8~ e4 r8 e8 | f4 g4 af8 f8 r4 | r4 e4 f8 g8 r4 |

  \sect "A3"

  r8 a8~ \tuplet 3/2 { a8 f8 d8 } g4 r4 | r8 a8~ \tuplet 3/2 { a8 f8 d8 } g4 r4 |
  r8 a8~ \tuplet 3/2 { a8 f8 d8 } g4 d8 f8 | g4 f8 d8 f8 g4. |
  \break
  r8 a8~ \tuplet 3/2 { a8 f8 d8 } g4 r4 | a8 f8 d8 g8~ g4 r4 | r8 f8 g8 d8 f4 g4 | r4 af4 f4 d4 |
  \break
  f4 g8 d8 f4 g4 | r4 af8 f8~ f4 d4 | f4 g8 d8 f4 g4 | r4 af8 f8~ f4 d4 |
  \break
  r8 a'8~ \tuplet 3/2 { a8 bf8 gs8 } a8 a,4.~ | a4 r4 c8 a8 cs8 d8~ \textToCodaLastTime | d4 r4 r2 | r2 r8 r4. |
  
  \bar "||-|."
  
  \textCodaBreak
  
  d4\repeatTie r4 r2 | 
  \repeat volta 2 {
  r2 c8 a8 cs8 d8~ | 
  d4 r4 r2 |
  }
  r1 | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
