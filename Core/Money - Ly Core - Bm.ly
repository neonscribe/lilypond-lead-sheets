%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Money"
  subtitle = \instrument
  poet = ""
  composer = "Roger Waters"
  copyright = \markup \small "© 1973 Hampshire House Publishing Corp."
}

refrainLyrics = \lyricmode {
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Mon -- ey, ya get a -- way.
Ya get a good job with more pay, and you're O. __ K.
Mon -- ey, it's a gas.
Grab that cash with both hands and make a stash.

New car, cav -- i -- ar, four -- star day -- dream.
Think I'll buy me a foot -- ball __ team.

_ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _

_ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _

_ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _

_ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _

_ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _

_ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _

_ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _

_ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _

_ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _

_ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _

_ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _


prise that they're giv -- ing none a -- way, way, a -- way. A-
}

refrainChords = \chordmode {
  r4*7 r4*7 b4*7:m7 b4*7:m7
  
  b4*7:m7 b4*7:m7 b4*7:m7 b4*7:m7 b4*7:m7 b4*7:m7 b4*7:m7 b4*7:m7
  fs4*8:m7 e4*6:m7
  b4*7:m7 b4*7:m7
  
  b4*7:m7 b4*7:m7
  e4*7:m7 e4*7:m7
  b4*7:m7 b4*7:m7
  fs4*8:m7 e4*6:m7
  
  b1:5 b1:5
  
  b1:m7 b1:m7 b1:m7 b1:m7 b1:m7 b1:m7 b1:m7 b1:m7 
  e1:m7 e1:m7 e1:m7 e1:m7
  b1:m7 b1:m7 b1:m7 b1:m7
  fs1:m7 fs1:m7 r1
  
  r1 b1:m7 b1:m7 b1:m7 b1:m7
  
  r1 b4*7:m7 b4*7:m7

  e4*6:m7 b1:m7 b1:m7
}

refrainKey = b

refrainMelody = \relative f' {
  \time 7/4
  \key \refrainKey \minor
  \tempo "Medium [Pink Floyd 1973]" 4 = 125
  
  \clef bass

  \sect "Intro"

  \bar ".|:"
  \repeat volta 2 {
  b,,4_"(Bass)" b'8 fs8 b,4 fs4 a4 b4 d4 | b4 b'8 fs8 b,4 fs4 a4 b4 d4 |
  }
  \repeat volta 2 {
  b4_"(Others enter)" b'8 fs8 b,4 fs4 a4 b4 d4 | b4 b'8 fs8 b,4 fs4 a4 b4 d4 |
  }

  \segnoSign \sectNoBar "Verse"

  \override Score.KeySignature.break-visibility = #begin-of-line-visible
  \clef \whatClef
\repeat volta 2 {
  fs''8 fs8 r4 r2 r4 r8 b,8 d8 d8 | a4 r4 r2 r4 r8 b8 d8 d8 |
  \override Score.KeySignature.break-visibility = #all-invisible
  b4 d4 b4 fs4 a8 a8 b4 e8( d8 | b8) a4. r2 r2 r4 |
  fs'8 fs8 r4 r2 r2 d8 d8 | a4 r4 r2 r2 d4 | b4 d4 b4 fs4 a4 b4 e4 | d8 a4. r2 r2 r4 |
  
  \time 8/4
  fs'4 fs4 fs8 cs8 fs,4 a4 cs4 fs4 f4 \textToCoda |
  \time 6/4
  e8 b8 e,4 g4 a4 b4 e4( |
  \time 7/4
  d8 b8) a4 r2 r2 r4 | R4*7 |
}
  \sectNoBar "Saxophone Solo - ad lib."
  \set Staff.explicitClefVisibility = #end-of-line-invisible
  \clef bass
\repeat volta 2 {
  b,,4_"(Bass)" b'8 fs8 b,4 fs4 a4 b4 d4 | b4 b'8 fs8 b,4 fs4 a4 b4^"play 4x" d4 |
}
\repeat volta 2 {
  e4 e'8 b8 e,4 b4 d4 e4 g4 | e4 e'8 b8 e,4 b4 d4 e4 g4 |
}
\repeat volta 2 {
  b,4 b'8 fs8 b,4 fs4 a4 b4 d4 | b4 b'8 fs8 b,4 fs4 a4 b4 d4 |
}
  \time 8/4
  fs4 fs4 fs8 cs8 fs,4 a4 cs4 fs4 f4 |
  \time 6/4
  e8 b8 e,4 g4 a4 b4 d4 |
  \numericTimeSignature
  \time 4/4
  \tuplet 3/2 { b8 b8 b8 } \tuplet 3/2 { b8 b8 b8 } \tuplet 3/2 { b8 b8 b8 } \tuplet 3/2 { b8 b8 b8 } |
  \tuplet 3/2 { b8 b8 b8 } \tuplet 3/2 { b8 b8 b8 } \tuplet 3/2 { b8 b8 b8 } \tuplet 3/2 { b8 b8 b8 } |
  \bar ".|:-||"

  \xPageBreak
  \sectNoBar "Guitar Solo - ad lib."

\repeat volta 2 {
  b4_"(Bass)" d4 cs4 c8 as8 | b4 d4 cs4 c8 as8 | b4 d4 cs4 c8 as8 | b4 d4 cs4 c8 as8 |
  b4 d4 cs4 c8 as8 | b4 d4 cs4 c8 as8 | b4 d4 cs4 c8 as8 | b4 d4 cs4 c4 |
  e4 ef4 d4 cs4 | e4 ef4 d4 cs4 | e4 ef4 d4 cs4 | e4 ef4 d4 cs4 | 
  b4 d4 cs4 c8 as8 | b4 d4 cs4 c8 as8 | b4 d4 cs4 c8 as8 | b4 d4 cs4 c8 e,8 |
  fs4 fs'4 f4 e4 | fs,8 fs8 fs'4 f4 e4 | b'4 a4 g4 fs4 |
  \alternative { \volta 1 {
  e4 d4 cs4 c8 b8~ | b4 d4 cs4 c8 as8 | b4 d4 cs4 c8 as8 | b4 d4 cs4 c8 as8 | b4 d4 cs4 c8 as8 |
  } \volta 2 {
  e'4 d4 cs4 c4 |
  \time 7/4
  b4 b'8 fs8 b,4 fs4 a4 b4 d4 | b4 b'8 fs8 b,4 fs4 a4 b4 d4 \dalSegno |
} } }
  \bar "||"

  \override Score.TimeSignature.break-visibility = #end-of-line-invisible

  \textCodaBreak
  
  \clef \whatClef
  
  \time 6/4
  e''8 b8 e,4 g4 a4 b4 d8 b8
  
  \numericTimeSignature
  \time 4/4
\repeat volta 2 {
  a4^"Repeat and fade, lead vocal ad lib." r4 r4 d8 b8( | a4) r4 r4 cs4 |
}
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
    \line { \large { Verse 2 } }
    \vspace #3
    \line { \large { Verse 3 } }
  }
  \column
  {
    \hspace #4
  }
  \column 
  {
    \vspace #2
    \line { \large { Money, you get back. I'm all right, Jack. Keep your hands off of my stack. } }
    \line { \large { Money, it's a hit. But don't give me that do goody-good bullshit. } }
    \line { \large { I'm in the hi-fidelity first class travelling set, and I think I need a Learjet. } }
    \vspace #1
    \line { \large { Money, it's a crime. Share it fairly, but don't take a slice of my pie. } }
    \line { \large { Money, so they say, is the root of all evil today. } }
    \line { \large { But if you ask for a rise, it's no surprise that they're giving none away. } }
  }
}
