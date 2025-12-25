%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Why Don't We Do This More Often"
  subtitle = \instrument
  poet = "Charles Newman"
  composer = "Allie Wrubel"
  copyright = \markup \small { \now " " "© 1941 Bregman, Vocco and Conn, Inc." }
}

refrainLyrics = \lyricmode {
Why don't we do this more of -- ten?
Just what we're do -- ing to -- night.
Gee, but it's great to get to -- geth -- er a -- gain.
Why does it on -- ly hap -- pen now and then?
We ought -- a do this more of -- ten.
Don't you a -- gree that I'm right?
We make each oth -- er laugh, we make each oth -- er sing,
and you can nev -- er ev -- er o -- ver -- do a good thing.
So, why don't we do this more of -- ten?
Just what we're do -- ing to -- night.
}

refrainChords = \chordmode {
  bf2 g2:m7 c1:7 c2:m7 f2:7 bf2 f2:7
  bf2 bf2:dim7 c2:m7 f2:7 g2:m7 c2:7 c2:m7 f2:7
  
  bf2 g2:m7 c1:7 c2:m7 d2:7 g2:m bf2:7
  
  ef1 bf1 g2:m7 c2:7 c2:m7 f2:7
  
  bf2 g2:m7 c1:7 c2:m7 f2:7 bf1
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
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Freddy Martin 1941]" 4 = 126

  \xTextMark \markup{ \bold \box "A" }
  
  d8 f8 g8 bf8~ bf8 c8 d4 | c4 g2. |
  ef'4 g,8 ef'8 d8 c8 a8 f8~ | f1 |
  \break
  c'4 bf8 a8 c8 bf8 a8 g8 | bf8 g8 bf8 a8~ a2 |
  r8 d8 d8 d8 d8 bf8 g8 e8 | d'8 bf4 c8~ c2 |
  
  \sect "B"
  
  d,8 f8 g8 bf8~ bf8 c8 d4 | c4 g2. |
  ef'4 g,8 ef'8 d8 df8 c8 bf8~ | bf2. bf4 |

  \sect "C"
  
  c8 bf8 c8 d8 c4. bf8 | g8 bf8 g8 gf8 f4. bf8 |
  d8 d8 c8 c8 bf8 g8 e8 g8 | d'8 bf8 d8 c8~ c4 f,4 |

  \sect "D"
  
  d8 f8 g8 bf8~ bf8 c8 d4 | c4 g2. |
  ef'4 g,8 ef'8 d8 f,8 c'4 | bf2. r4 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
