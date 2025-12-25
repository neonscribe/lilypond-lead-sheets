%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Once in a While"
  subtitle = \instrument
  poet = "Bud Green"
  composer = "Michael Edwards"
  copyright = \markup \small { \now " " "© 1937 Miller Music Corporation" }
}

refrainLyrics = \lyricmode {
Once in a while __ will you try to give one lit -- tle thought to me,
though some -- one else may be near -- er your heart. __
Once in a while __ will you dream of the mo -- ments I shared with you,
mo -- ments be -- fore we two drift -- ed a -- part. __
In love's smol -- der -- ing em -- ber, one spark may re -- main.
If love still can re -- mem -- ber, the spark may burn a -- gain.
I know that I'll __ be con -- tent -- ed with yes -- ter -- day's mem -- o -- ry
know -- ing you think of me once in a while.
}

refrainChords = \chordmode {
  ef2:maj7 af2:7 ef1:maj7 g2:m7 d2:7.13- g2:m7 c2:7
  f2:m7 c2:7 f2:m7 bf2:7 g2:m7 c2:7 f2:m7 bf2:7

  ef2:maj7 af2:7 ef1:maj7 g2:m7 d2:7.13- g2:m7 c2:7
  f2:m7 c2:7 f2:m7 bf2:7 ef2:6 af2:m6 ef2:6 a4:m7 d4:7
  
  g2:maj7 e2:m7 a2:m7 d2:7 b2:m7 bf2:dim7 a2:m7 d2:7
  g2:maj7 e2:m7 a2:m7 d2:7 g2:6 c2:7.9- f2:m7 bf2:7

  ef2:maj7 af2:7 ef1:maj7 g2:m7 d2:7.13- g2:m7 c2:7
  f2:m7 c2:7 f2:m7 bf2:7 ef2:6 
  \chordOpenParen{ c2:m7 }
  f2:m7
  \chordCloseParen{ bf2:7 }
}

refrainKey = ef

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
  \tempo "Medium Ballad [Tommy Dorsey 1937]" 4 = 104

  \xTextMark \markup{ \bold \box "A1" }
  
  \tuplet 3/2 { ef4 ef4 ef4 } f2~ | \tuplet 3/2 { f4 ef4 f4 } \tuplet 3/2 { g4 bf4 c4 } |
  \tuplet 3/2 { d4 d4 d4 } c4 bf4 | d1 |
  \break
  \tuplet 3/2 { c4 c4 c4 } bf4 af4 | c2 \tuplet 3/2 { d,4 ef4 f4 } | bf1~ | bf1 |
  
  \sect "A2"
  
  \tuplet 3/2 { ef,4 ef4 ef4 } f2~ | \tuplet 3/2 { f4 ef4 f4 } \tuplet 3/2 { g4 bf4 c4 } |
  \tuplet 3/2 { d4 d4 d4 } c4 bf4 | d1 |
  \break
  \tuplet 3/2 { c4 c4 c4 } bf4 af4 | c2 \tuplet 3/2 { d,4 ef4 f4 } | ef1~ | ef2. d4 |
  
  \sect "B"
  
  d'2 \tuplet 3/2 { g,4 a4 b4 } | c4 c2. | b2 \tuplet 3/2 { e,4 fs4 g4 } | a2. d,4 |
  \break
  d'2 \tuplet 3/2 { g,4 a4 b4 } | c4 c2 b4 | g4 g4 bf4 bf4 | f1 |
  
  \sect "A3"

  \tuplet 3/2 { ef4 ef4 ef4 } f2~ | \tuplet 3/2 { f4 ef4 f4 } \tuplet 3/2 { g4 bf4 c4 } |
  \tuplet 3/2 { d4 d4 d4 } c4 bf4 | d1 |
  \break
  \tuplet 3/2 { c4 c4 c4 } bf4 af4 | c2 \tuplet 3/2 { d,4 ef4 f4 } | ef1 | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
