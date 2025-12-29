%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Sixteen Tons"
  subtitle = \instrument
  poet = ""
  composer = "Merle Travis"
  copyright = \markup \small { \now " " "© 1947 Merle's Girls Music" }
}

refrainLyrics = \lyricmode {
_ _ _ _ _ _ _ _

Some peo -- ple say a man is made out of mud. __
A poor man's made out of mus -- cle and blood. __
Mus -- cle and blood __ and skin and bones, __
a mind that's __ weak and a back that's strong.

You load six -- teen tons, what do you get?
An -- oth -- er day old -- er and deep -- er in debt.
Saint Pe -- ter, don't you call me 'cause I can't go. __
I owe my soul to the com -- pa -- ny store.
_ _ _ _ _ _ _ _
I __ was

Pe -- ter, don't you call me 'cause I can't go. __
I owe __ my __ soul __
to the com -- pa -- ny store.
}

refrainChords = \chordmode {
  r1*4
  
  r1*2
  
  b2:m b2:m7/a b2:m6/gs fs2
  b2:m b2:m7/a e2:m/g e2:m
  b4:m r4*7
  
  b2:m b2:m7/a b2:m6/gs fs2
  b2:m b2:m7/a b2:m6/gs fs2
  b2:m b2:m7/a e2:m/g e2:m
  b4:m r4*7
  r1*2
  
  r1 r1
  
  b1:m e1:m r1*4
  
  r1*2 fs2:7 b2*3:m
}

refrainKey = b

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
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium [Tennessee Ernie Ford 1955]" 4 = 140

  \sectStart "Intro"
  
  \ambitusOff
  b4 fs4 d4 b4 | fs8 gs8 as4 b2~ | b1 |
  \ambitusOn
  b1\fermata |  

  \sect "Verse"
  
  d8 b8 d8 d8 b4 fs4 | b8 b8 b8 fs8~ fs4 r8 fs8 |
  d'4 b4 b4 fs8 fs8 | b8 b8 b8 fs8~ fs4 r4 |
  b8 b8 b8 b8~ b4 b4 | e4 e8 e8~ e4 r8 e8 |
  f4 e8( d8) b4 fs8 fs8 | b4 b4 fs8 fs8 gs4 |
  
  \sect "Chorus"
  
  b4 b4 b4 r4 | d8 d8 b8 b8~ b4 r8 b8 |
  d8 d8 d4 b8 b8 fs4 | b8 b8 b8 fs8 r4 b4 \textToCodaLastTime |

  b8 b8 b8 b8 d8 d8 b4 | e8 e4 e8~ e4. f8 |
  b8 f8( fs4) d4 fs,8 fs8 | b8 b8 b4 b2 |
  
  \ambitusOff
  b'4 fs4 d4 b4 | fs8 gs8 as4 b2~ | b1 |
  \ambitusOn
  
  b2~ b4. b8 |
  \bar "||-|."

  \xPageBreak

  \textCodaBreak
  
  b8 b8 b8 b8 d8^\markup \italic "rit." cs8 b4 | e8 e4 e8~ e2 | r2 r4 fs4^\markup \italic "freely" |
  b2.( as4) | b4( as8 g8) \tuplet 3/2 { f8( e8 d8 } as16. b32 as8 |
  b4.~ b8) r4 fs8^\markup \italic "a tempo" fs8 |
  b8 b8 b4 b2 |

  \ambitusOff
  b'4 fs4 d4 b4 | fs8 gs8 as4 b2~ | b1\fermata |
  \ambitusOn
  

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup {
  \column 
  \bold
  {
   \vspace #2
   \line { \large { Verse 1 } }
   \vspace #4
   \line { \large { Chorus } }
   \vspace #4
   \line { \large { Verse 2 } }
   \vspace #4
   \line { \large { Chorus } }
   \vspace #1
   \line { \large { Verse 3 } }
   \vspace #4
   \line { \large { Chorus } }
   \vspace #1
   \line { \large { Verse 4 } }
   \vspace #4
   \line { \large { Chorus } }
   }
  \column
  {
    \hspace #4
    }
  \column 
  {
   \vspace #2
   \line { \large { Some people say a man is made out of mud } }
   \line { \large { A poor man's made out of muscle and blood } }
   \line { \large { Muscle and blood and skin and bones } }
   \line { \large { A mind that's weak and a back that's strong } }
   \vspace #1
   \line { \large { You load sixteen tons, what do you get? } }
   \line { \large { Another day older and deeper in debt } }
   \line { \large { Saint Peter, don't you call me, 'cause I can't go } }
   \line { \large { I owe my soul to the company store } }
   \vspace #1
   \line { \large { I was born one mornin' when the sun didn't shine } }
   \line { \large { I picked up my shovel and I walked to the mine } }
   \line { \large { I loaded sixteen tons of number 9 coal } }
   \line { \large { And the straw boss said, "Well a-bless my soul!" } }
   \vspace #3
   \line { \large { I was born one mornin', it was drizzlin' rain } }
   \line { \large { Fightin' and trouble are my middle name } }
   \line { \large { I was raised in the canebrake by an old mama lion } }
   \line { \large { Can't no high-toned woman make me walk the line } }
   \vspace #3
   \line { \large { If you see me comin' better step aside } }
   \line { \large { A lot of men didn't, a lot of men died } }
   \line { \large { One fist of iron, the other of steel } }
   \line { \large { If the right one don't getcha, then the left one will } }
   \vspace #1
   \line { \large { You load sixteen tons, what do you get? } }
   \line { \large { Another day older and deeper in debt } }
   \line { \large { Saint Peter, don't you call me, 'cause I can't go } }
   \line { \large { I owe my soul to the company store } }
 }
}

