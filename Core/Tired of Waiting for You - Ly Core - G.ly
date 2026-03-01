%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "Tired of Waiting for You"
  subtitle = \instrument
  poet = ""
  composer = "Ray Davies"
  copyright = \markup \small { \now " " "© 1964 Edward Kassner Music Co. Ltd." }
}

refrainLyrics = \lyricmode {
_ _ _ _ _ _ _ _
So tired, __ tired of wait -- ing, tired of wait -- ing for you. __
So tired, __ tired of wait -- ing, tired of wait -- ing for you. __

I was a lone -- ly soul, __ I had no -- bod -- y till __ I met you. __
But you keep -- a me wait -- ing all of the time. __ What can I do? __

It's your life __ and you can do what you want.
Do what you like __ but please dont keep -- a me wait -- ing.
Please dont keep -- a me wait -- ing,

'cause I'm

"__" for you __ for you __
}

refrainChords = \chordmode {
  g2 f2 g2 f2 g2 f2 g2 f2
  
  g2 f2 g2 f2 g2 f2 g2 f2 g2 f2
  g2 f2 g2 f2 g2 f2 g2 f2 g2 f2

  f2 c2 f2 c2 f2 c2 f2. fs4
  g2 d2 g2 d2 g2 d2 g2 d2 
  
  g1 b1:m f1 d1
  g1 b1:m f1 d1 f1 d1

  g2 f2 g2 f2 g2 f2 g2 f2 g2 f2 g1
}

refrainKey = g

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
  \tempoFour "Medium [Kinks 1964]" 122
  
  \sectStart "Intro"
  
  \ambitusOff
  <<
    \new Voice
    { \voiceOne
      b8^"guitar 1" d8 e8 d8 a8 c8 g'8 a,8
      b8 d8 e8 d8 a8 c8 g'8 a,8
      b8^"bass and drums join" d8 e8 d8 a8 c8 g'8 a,8
      b8 d8 e8 d8 a8 c8 g'8 a,8
    }
    { \voiceTwo
      r4_"guitar 2" r8 <g, d' g>8( <f c' f>4.) <f c' f>8( | <g d' g>4.) <g d' g>8( <f c' f>4.) <f c' f>8( |
      <g d' g>4.) <g d' g>8( <f c' f>4.) <f c' f>8( | <g d' g>4.) <g d' g>8( <f c' f>4.) <f c' f>8\laissezVibrer |
    }
    >>
  \oneVoice
  \ambitusOn

  \sectNoBar "A"
  
  \segnoSign
  
  \bar ".|:-||"

  \repeat volta 2 {

  g'4. a8~ a4 r4 | g4 a8 b8~ b8 b8 r4 | b4. c8 d8 d4 e8 | f4.( e8 d2~ | d2) r2 |
  g,4. a8~ a4 r4 | g4 a8 b8~ b8 b8 r4 | b4. c8 d8 d4 e8 | f4.( e8 d2~  \textToCodaLastTime | d2) r2 |
  
  \sect "B"
  
  a4 a8 g8 g4 bf8 a8~ | a4 r8 a8 g4 bf8 a8~ | a8 a8 a8( g8) g8 bf4 a8~ | a4 r4 r4 as4 |
  b2 a8 c8 c8 b8~ | b8 b8 r4 a8 b8 c8 b8~ | b4 r4 a8 b8 c8 b8~ | b4 r4 r2 |
  
  \sect "C"
  
  r2 b8 d4 d8~ | d2 r8 a8 a8 a8 | c4 b8 c8 a4 r4 | r1 |
  r2 b8 b8 d8 d8~ | d2 r4 r8 a8 | c4 c4 d8 c8 c8 d8~ | d8 c8 r4 r2 |
  c4 c4 d8 c8 c8 d8~ | d8 c8 r4 b8 a4. \dalSegno |
  
  }
  
  \bar "||-:|."

  \textCodaBreak
  
  d2\repeatTie r4 e4 | f4.( e8 d2~ |
  d2) r4 e4 | f4.( e8 d2~ | d1) | r1\fermata |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
