%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Jingle Bell Rock"
  subtitle = \instrument
  poet = ""
  composer = "Joe Beal and Jim Boothe"
  copyright = \markup \small { \now " " "© 1957 Cornell Music, Inc." }
}

refrainLyrics = \lyricmode {
Jin -- gle bell, jin -- gle bell, jin -- gle bell rock, __
jin -- gle bells swing and jin -- gle bells ring.
Snow -- in' and blow -- in' up bush -- els of fun.
Now the jin -- gle hop has be -- gun. __

Jin -- gle bell, jin -- gle bell, jin -- gle bell rock, __
jin -- gle bells chime in jin -- gle bell time,
danc -- in' and pranc -- in' in Jin -- gle Bell Square
in the frost -- y air. __

What a bright __ time, it's the right __ time __
to rock the night a -- way.
Jin -- gle bell __ time is a swell time __
To go glid -- in' in a one -- horse sleigh. __
Gid -- dy -- up, jin -- gle horse, pick up your feet, __
jin -- gle a -- round the clock.
Mix and min -- gle in a jin -- gl -- in' beat, __
that's the jin -- gle bell rock.

that's the jin -- gle bell, that's the jin -- gle bell rock.
}

refrainChords = \chordmode {
  c2 c2:maj7 c2:6 c2 c2:6 cs2:dim7 d2:m7 g2:7
  d2:m7 g2:7 d2:m7 g2:7 d1:m7 g1:7.5+

  c2 c2:maj7 c2:6 c2 c2:6 cs2:dim7 d2:m7 g2:7
  d2:m7 g2:7 d2:m7 g2:7 d2:7 g2:7 c2:6 c2:7
  
  f1:maj7 fs1:dim7 c1/g c1:maj7
  a2:m7 d2:7 a2:m7 d2:7 g2:7 d2:m7 g2:7 g2:7.5+
  
  c2:6 f2:9.11+ e2:m7 d4:m7 g4:7 c2:6 e2:m7.5-/bf
  a1:7 f1:6 bf1:9 d2:7 g2:7 c2:6 d4:m7 g4:7
  
  d2:7 g2:7 d2:7 g2:7 c1:6
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
  \tempo "Medium [Bobby Helms 1957]" 4 = 119

  \sectStart "A1"
  
  c'8 c8 c4 b8 b8 b4 | a8 b8 a8 e8~ e2 | a8 b8 a4 e4 g4 | a8 b8 a4 f2 |
  d8 e4 f8 g8 a4 g8 | d8 e8 f4 g2 | r4 a8 gs8 a8 gs8 a4 | a4 ds8 ds8~ ds2 |
  
  \sect "A2"
  
  c8 c8 c4 b8 b8 b4 | a8 b8 a8 e8~ e2 | a8 b8 a4 e4 g4 | a8 b8 a4 f2 |
  d8 e4 f8 g8 a4 g8 | d8 e8 f4 g2 | r4 a8 a8 b8 g4 c8~ | c2. c8 c8 |
  
  \xPageBreak

  \sectNoBar "B"

  c8( d4) c8~ c4 a8 c8 | c8( d4) c8~ c4. c8 | c4 b4 a4 g4 | e2. c'8 c8 |
  c8( d4) c8~ c4 a8 c8 | d4. c8~ c2 | r8 g8 g4 a8 a8 a8 a8 | b8 a4 g8~ g4 r4 |

  \sect "A3"

  c8 c8 c4 b8 b8 b4 | a8 b8 a8 e8~ e2 | a8 b8 a4 e4 g4 | a1 |
  a4 c4 d8 d8 c8 c8 | af8 af8 c8 d8~ d2 |
  r4 c8 a8 b8 a8 g4 \textToCodaLastTime | c2 r2 \daCapoWithRepeats |
  \bar "||-|."
  
  \textCodaBreak
  
  r4 c8 a8 b8 a8 g4 | r4 c8 a8 b8 c8 d4 | c1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
