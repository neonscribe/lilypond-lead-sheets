%% -*- Mode: LilyPond -*-

#(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Prelude to a Kiss"
  subtitle = \instrument
  composer = "Duke Ellington, Irving Gordon & Irving Mills"
  copyright = "© 1938 American Academy of Music, Inc."
}

refrainLyrics = \lyricmode {
If you hear
a song in blue, __
like a flow -- er cry -- ing
For the dew, __
that was my heart ser -- e -- nad -- ing you, __
My pre -- lude to a kiss. __
If you hear a song that grows __
from my ten -- der sen -- ti -- ment -- al woes, __
that was my heart try -- ing to com -- pose
a pre -- lude to a kiss. __
Though it's just a sim -- ple mel -- o -- dy
With noth -- ing fan -- cy,
noth -- ing much,
You could turn it to a sym -- pho -- ny,
A Schu -- bert tune __ with a Gersh -- win touch.
Oh, how my love song gent -- ly cries __
for the ten -- der -- ness with -- in your eyes, __
my love is a pre -- lude that nev -- er dies, __
A pre -- lude to a kiss. __
}

refrainChords = \chordmode {
  d2:9 g2:9 c2:7 f4:maj7
  \chordInsideParens{ bf4:7 }
  b2:9 e2:9 a2:7 d2:m7
  d2:m7.11 g4:7 gs4:dim7 a2:m7 d2:13 d2:m7 g2:7.9- c2:maj7 e4:m7 a4:7

  d2:9 g2:9 c2:7 f4:maj7
  \chordInsideParens{ bf4:7 }
  b2:9 e2:9 a2:7 d2:m7
  d2:m7.11 g4:7 gs4:dim7 a2:m7 d2:13 d2:m7 g2:7.9- c2:maj7 fs4:m7 b4:7

  e2:maj7 cs2:m7 fs2:m7.5- b2:7 e2:maj7 cs2:m7 fs2:m7 b2:7
  e2:maj7 cs2:m7 fs2:m7.5- b2:7 e2:maj7 a2:7 d4:m11 ef4:m11 e4:m11 ef4:9

  d2:9 g2:9 c2:7 f4:maj7
  \chordInsideParens{ bf4:7 }
  b2:9 e2:9 a2:7 d2:m7
  d2:m7.11 g4:7 gs4:dim7 a2:m7 d2:13 d2:m7 g2:7.9- c2:maj7
  \chordOpenParen{ e4:m7 }
  \chordCloseParen{ a4:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium"

  \mark \markup{ \box "A1" }
  
  b4 bf4 a4 af4 | g4 a8 e8~ \tuplet 3/2 { e4 f4 g4 } | gs4 g4 fs4 f4 | e4 f8 d8~ d2 |
  \tuplet 3/2 { g4 g4 g4 } \tuplet 3/2 { g4 gs4 a4 } |
  c,4 d'8 b8~ b2 | d,8 e8 f8 af4. af8 a8~ | a2. r4 |

  \bar "||"
  \break

  \mark \markup{ \box "A2" }

  b4 bf4 a4 af4 | g4 a8 e8~ \tuplet 3/2 { e4 f4 g4 } | gs4 g4 fs4 f4 | e4 f8 d8~ d2 |
  \tuplet 3/2 { g4 g4 g4 } \tuplet 3/2 { g4 gs4 a4 } |
  c,4 d'8 b8~ b2 | d,8 e8 f8 af4. a8 c,8~ | c2. r4 |

  \bar "||"
  \break

  \mark \markup{ \box "B" }
  
  r4 as'8 b8 ds,8 e8 ds'8 cs8 | b8 a8 c,2 cs4 | r4 fs8 fs8 fs4 e4 | r4 a8 a8 a2 |
  r4 as8 b8 ds,8 e8 ds'8 cs8 | b8 a8 c,2 cs4 | e8 e4 e4. e8 e8 | g4 af4 a4 bf4 |
  
  \bar "||"
  \break

  \mark \markup{ \box "A3" }

  b4 bf4 a4 af4 | g4 a8 e8~ \tuplet 3/2 { e4 f4 g4 } | gs4 g4 fs4 f4 | e4 f8 d4. d4 |
  \tuplet 3/2 { g4 g4 g4 } \tuplet 3/2 { g4 gs4 a4 } |
  c,4 d'8 b8~ b2 | d,8 e8 f8 af4. a8 c,8~ | c2. r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
