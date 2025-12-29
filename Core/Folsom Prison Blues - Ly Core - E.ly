%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Folsom Prison Blues"
  subtitle = \instrument
  poet = ""
  composer = "Johnny Cash, Gordon Jenkins"
  copyright = \markup \small { \now " " "© 1956 House of Cash Inc." }
}

refrainLyrics = \lyricmode {
_ _ _ _ _ _ _ _
I hear the train a -- com -- in', it's roll -- ing 'round the bend __
and I ain't seen the sun -- shine since I don't __ know when.
I'm stuck in Fol -- som pri -- son, and time keeps drag -- gin' on. __
But that train keeps a -- roll -- in' on down to San __ An -- tone.

When
}

refrainChords = \chordmode {
  s2.
  b1:7 b1:7 e1 e1
  
  e1 e1 e1 e1
  e1 e1 e1 e1
  a1 a1 a1 a1
  e1 e1 e1 e1
  b1:7 b1:7 b1:7 b1:7
  e1
  
  e1

  e1

  b1:7 b1:7 e1 e1
}

refrainKey = e

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Fast [Johnny Cash 1955]" 4 = 200

  \sectStart "Intro"
  
  \ambitusOff
  \partial 2. b,4 b4 b4 |
  \bar "||"
  ds2 ds2 | b2 g2 | e2 r2 | r2 r4
  \ambitusOn
  gs'4 |
  
  \sectNoBar "Verse"
  
  \bar ".|:-||"
  \repeat volta 4 {
  gs4 gs4 a4 b4 | e,8 e4. r4 gs4 | gs4 gs4 a4 b8 e,8~ | e2 r4 gs4 |
  \break
  gs4 gs4 a4 as8 b8~ | b4 e,2 e4 | r4 g8 g8~ g4 g4 | g2 r4 gs4 |
  \break
  fs4 e4 fs4 e4 | fs4 e4 r2 | r4 fs4 fs4 e4 | r4 g2 e8 b8~ |
  \break
  b1 | r1 | r1 | r2 gs'8 gs4. |
  \break
  fs2 fs4 e8 fs8~ | fs4 b,2. | r4 b4 b4 b4 | b4( a4) g4( fs4) |
  e1 |
  \alternative { \volta 1,2,3 {
  r2 r4 g'4 |
  }

  \volta 4 {
  \sectNoBar "Outro"
  \ambitusOff
  r2 b,4 b4 |
  \bar "||"
  ds2 ds2 | b2 g2 | e1 | r1\fermata |
  \ambitusOn
  } } }
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\pageBreak

\markup {
  \column 
  \bold
  {
   \vspace #2
   \line { \large { Intro } }
   \vspace #1
   \line { \large { Verse 1 } }
   \vspace #4
   \line { \large { Verse 2 } }
   \vspace #4
   \line { \large { Verse 3 } }
   \vspace #4
   \line { \large { Verse 4 } }
   \vspace #4
   \line { \large { Outro } }
   }
  \column
  {
    \hspace #4
    }
  \column 
  {
   \vspace #4
   \line { \large { I hear the train a-comin', it's rolling 'round the bend, } }
   \line { \large { and I ain't seen the sunshine since I don't know when. } }
   \line { \large { I'm stuck in Folsom prison, and time keeps draggin' on. } }
   \line { \large { But that train keeps a-rollin' on down to San Antone. } }
   \vspace #1
   \line { \large { When I was just a baby, my mama told me, “Son, } }
   \line { \large { always be a good boy, don't ever play with guns.” } }
   \line { \large { But I shot a man in Reno just to watch him die. } }
   \line { \large { When I hear that whistle blowin', I hang my head and cry. } }
   \vspace #1
   \line { \large { I bet there's rich folks eatin' in a fancy dining car. } }
   \line { \large { They're prob'ly drinkin' coffee and smoking big cigars. } }
   \line { \large { Well, I know I had it comin', I know I can't be free. } }
   \line { \large { But those people keep a-movin' and that's what tortures me. } }
   \vspace #1
   \line { \large { Well, if they freed me from this prison, if that railroad train was mine, } }
   \line { \large { I bet I'd move it on a little farther down the line, } }
   \line { \large { far from Folsom prison, that's where I want to stay. } }
   \line { \large { And I'd let that lonesome whistle blow my blues away. } }
 }
}