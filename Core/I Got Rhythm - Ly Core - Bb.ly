%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "I Got Rhythm"
  subtitle = \instrument
  poet = "Ira Gershwin"
  composer = "George Gershwin"
  copyright = \markup \small { \now " " "© 1930 Gershwin Publishing Corp." }
}

refrainLyrics = \lyricmode {
I __ got rhy -- thm, __ I __ got mu -- sic, __
I __ got my man. __ Who could ask for any -- y -- thing more?
I __ got dais -- ies __ in __ greeen pas -- tures. __
I __ got my man. __ Who could ask for any -- y -- thing more?
Old __ Man Troub -- le, __ I __ don't mind him. __
You __ won't find him __ 'round __ my door.
I got star -- light, __ I __got sweet dreams, __
I __ got my man. __ Who could ask for any -- y -- thing more?
}

refrainChords = \chordmode {
  bf2:6 g2:m7 c2:m7 f2:7 d2:m7 g2:m7 c2:m7 f2:7
  bf2:7 bf2:7/d ef2:7 e2:dim7 bf2:6/f f2:7 bf2:6 f2:7

  bf2:6 g2:m7 c2:m7 f2:7 d2:m7 g2:m7 c2:m7 f2:7
  bf2:7 bf2:7/d ef2:7 e2:dim7 bf2:6/f f2:7 bf1:6
  
  d1:7 d1:7 g1:7 g1:7 c1:7 c1:7 f1:7 f1:7

  bf2:6 g2:m7 c2:m7 f2:7 d2:m7 g2:m7 c2:m7 f2:7
  bf2:7 bf2:7/d ef2:7 e2:dim7 bf2:6/f f2:7 bf1:6
}

refrainKey = bf

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
  \tempo "Medium [Ella Fitzgerald 1959]" 4 = 144

  \xTextMark \markup{ \bold \box "A1" }
  
  r4 f4~ f8 g4. | bf4. c8~ c2 | r4 c4~ c8 bf4. | g4. f8~ f2 |
  \break
  r4 f4~ f8 g4. | bf4. c8~ c8 ef4 c8 | d4 d4 c8 d8 c4 | d2 r2 |
  
  \sect "A2"
  
  r4 f,4~ f8 g4. | bf4. c8~ c2 | r4 c4~ c8 bf4. | g4. f8~ f2 |
  \break
  r4 f4~ f8 g4. | bf4. c8~ c8 ef4 c8 | d4 d4 c8 d8 c4 | d1 |
  
  \sect "B"
  
  r4 d4~ d8 d4. | d4. e8~ e2 | r4 d4~ d8 d4. | d4. g,8~ g2 |
  \break
  r4 c4~ c8 c4. | c4. d8~ d2 | r4 c4~ c8 c4. | c4.( f,8~ f2) |
  
  \sect "A3"

  r4 f4~ f8 g4. | bf4. c8~ c2 | r4 c4~ c8 bf4. | g4. f8~ f2 |
  \break
  r4 f4~ f8 g4. | bf4. c8~ c8 ef4 c8 | d4 d4 c8 d8 c4 | bf1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
