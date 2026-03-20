%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "They Say It's Spring"
  subtitle = \instrument
  poet = ""
  composer = "Bob Haymes, Marty Clarke"
  copyright = \markup \small { \now " " "© 1958 Jatap Publishing Co." }
}

refrainLyrics = \lyricmode {
They say it's spring, __ this feel -- ing light __ as a feath -- er.
They say this thing, __ this mag -- ic we __ share to -- geth -- er,
came with the weath -- er, too. __

They say it's May __ that's made me daft __ as a dais -- y.
It's May they say, __ that gave the whole __ world
this craz -- y, heav -- en -- ly, haz -- y hue.

I'm a lark __ on the wing. __ I'm the spark __ of a fi -- re -- fly's fling,
yet to me __ this must be __ some -- thing more than a sea -- son -- al thing.

Could it be spring, __ those bells that I __ can hear ring -- ing?
It may be spring __ but when the rob -- ins stop sing -- ing
you're what I'm cling -- ing to. __ Though they say it's spring __ it's you. __
}

refrainLyricsTwo = \lyricmode {
If po -- ets sing __ that's when a heart's sym -- pa -- thet -- ic.
It's mere -- ly spring, __ then po -- ets' plights are pa -- thet -- ic,
though I'm po -- et -- ic, too. __

They say it's spring; __ for lov -- ers, that's where the lure is,
that ev -- il thing, __ for which Sep -- tem -- ber the cure is.
This they are sure is true. __

Though I know __ that it's so, __ that my fan -- cy may turn in the spring,
with the right __ one in sight __ one can find __ a per -- pet -- u -- al thing.

Did I need spring __ to bring the ring __ that you bought me,
though it was spring __ that won -- drous day __ you caught me?
Dar -- ling, I thought you knew __ that it was -- n't spring, 'twas you. __
}

refrainChords = \chordmode {
  af2:maj7 f2:m7 bf2:m7 ef2:7 af2:maj7 f2:m7 bf2:m7 ef2:7 
  af2:maj7 f2:m7 g2:m7.5- c2:7.13- f1:m7 g2:m7.5- c2:7.13-
  f1:m7 bf2:m7 ef2:7

  af2:maj7 f2:m7 bf2:m7 ef2:7 af2:maj7 f2:m7 bf2:m7 ef2:7 
  af2:maj7 f2:m7 g2:m7.5- c2:7.13- f1:m7 g2:m7.5- c2:7.13-
  f1:m7 bf2:m7 ef2:7
  
  d2:m7 g2:7 c2:m7 f2:7 d2:m7 g2:7 c2:m7 f2:7 
  bf2:m7 ef2:7 c2:m7 f2:7 bf1:m7 gf4:7 f4:7 e4:7 ef4:7

  af2:maj7 f2:m7 bf2:m7 ef2:7 af2:maj7 f2:m7 bf2:m7 ef2:7 
  af2:maj7 f2:m7 g2:m7.5- c2:7.13- f1:m7 g2:m7.5- c2:7.13-
  f1:m7 bf2:7 b2:dim7 c2:m7 f2:m7 bf2:m7 ef2:7
  af2:maj7 f2:7.9- bf2:m7 ef2:7.9- af2:maj7 f2:7.9- bf2:m7 ef2:7.9-

  af1:maj7
}

refrainKey = af

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
  \tempoFour "Medium [Blossom Dearie 1958]" 110

  \sectStart "A1"

  r4 r8 ef8 af8 c,8 r8 ef8~ | ef2 r2 | r4 r8 ef8 af8 c,8 r8 f8~ | f8 f4 ef8 c8 bf4. |
  r4 r8 c8 f8 af,8 r8 c8~ | c2 r2 | r4 r8 c8 f8 af,8 r8 c8~ | c8 c4 bf8 af8 g4. |
  bf4 bf8 af8 g8 af8 r8 f'8~ | f2 r2 |
  
  \sect "A2"
  
  r4 r8 ef8 af8 c,8 r8 ef8~ | ef2 r2 | r4 r8 ef8 af8 c,8 r8 f8~ | f8 f4 ef8 c8 bf4. |
  r4 r8 c8 f8 af,8 r8 c8~ | c2 r2 | r4 r8 c8 f8 af,8 r8 c8~ | c8 c4 bf8 af8 g4. |
  bf4 bf8 af8 g8 af4 f'8~ | f2 r8 ef8 f8 g8~ |
  \bar "||"
  
  \xPageBreak

  \sectNoBar "B"
  
  g2 r8 ef8 f8 g8~ | g2 r8 ef8 f8 g8~ | g8 g8 g8 g8~ g8 ef8 f4 | g2 r8 f8 ef8 f8~ |
  f2 r8 ef8 d8 ef8~ | ef2 r8 d8 c8 d8~ | d8 d8 c8 d8~ d8 af8 bf4 | c4 r4 r2 |

  \sect "A3"

  r4 r8 ef8 af8 c,8 r8 ef8~ | ef2 r2 | r4 r8 ef8 af8 c,8 r8 f8~ | f8 f4 ef8 c8 bf4. |
  r4 r8 c8 f8 af,8 r8 c8~ | c2 r2 | r4 r8 c8 f8 af,8 r8 c8~ | c8 c4 bf8 af8 g4. |
  bf4 bf8 af8 g8 af4 f'8~ | f2 r4 f4 | ef4 af2 c,8 ef8~ | ef2 r4 bf'8 af8~ | af1 |
  r1 | r1 | r1 \textToCodaLastTime |
  
  \bar "|."
  
  \textCoda
  
  r1\fermata |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
