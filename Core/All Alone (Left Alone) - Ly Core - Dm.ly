%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "All Alone (Left Alone)"
  subtitle = \instrument
  poet = ""
  composer = "Billie Holiday, Mal Waldron"
  copyright = \markup \small { \now " " "© 1959 Edward B. Marks Music Company" }
}

refrainLyrics = \lyricmode {
Where's the love that's made to fill my heart?
Where's the one from whom I'll nev -- er part?
First they hurt me, then de -- sert me.
I'm left a -- lone, all a -- lone.

There's no house that I can call my home.
There's no place from which I'll nev -- er roam.
Town or cit -- y, it's a pit -- y.
I'm left a -- lone, all a -- lone.

Seek and find, they al -- ways say,
but up to now it's not that way.

May -- be fate has let him pass me by
or per -- haps we'll meet be -- fore I die.
Hearts will o -- pen, but un -- til then
I'm left a -- lone, all a -- lone.
}

refrainChords = \chordmode {
  s4
  
  d2:m7 e4:m7.5- a4:7.9+ f2:7 bf2:maj7 g2:m7 e4:m7.5- a4:7.9+ bf2:maj7 bf2:7
  e2:m7.5- f2:7 bf1:maj7
  
  e2:m7.5- a2:7 e2:m7.5- a2:7.9-

  e2:m7.5- a2:7 d1:m7
  
  g2:m7 c2:7 f2:maj7 d2:m7 g2:m7 c2:7 e2:m7.5- a2:7
  d2:m7 e4:m7.5- a4:7.9+ f2:7 bf2:maj7 g2:m7 e4:m7.5- a4:7.9+ bf2:maj7 bf2:7

  d2:m7 e4:m7.5- a4:7.9+ f2:7 bf2:maj7 g2:m7 e4:m7.5- a4:7.9+ bf2:maj7 bf2:7
  e2:m7.5- f2:7 bf1:maj7

  e2:m7.5- a2:7 d2:m7

  \chordOpenParen{ e4:m7.5- }
  \chordCloseParen{ a4:7.9- }
}

refrainKey = d

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
  \tempo "Ballad [Mal Waldron 1959]" 4 = 64

  \partial 4 d8 d'8 |

  \sectStart "A1"
  
  a4. f8 g8 f8 d8 c8 | d2. d8 d'8 | a4. f8 g8 f8 d8 c8 | d2. d8 f8 | 
  g8 a4.~ a4 c8 a8 | g8 f4. r8 a8 g8 d8 | e2. f8 d8 | e2 r4 d8 d'8 |
  
  \sect "A2"
  
  a4. f8 g8 f8 d8 c8 | d2. d8 d'8 | a4. f8 g8 f8 d8 c8 | d2. d8 f8 | 
  g8 a4.~ a4 c8 a8 | g8 f4. r8 a8 g8 d8 | e2. f8 cs8 | d1 |
  
  \sect "B"
  
  c'4. a8 c8 a8 g8 f8 | a2. r8 a8 | c4. a8 c8 a8 g8 f8 | a2 r4 d,8 d'8 |

  \sect "A3"

  a4. f8 g8 f8 d8 c8 | d2. d8 d'8 | a4. f8 g8 f8 d8 c8 | d2. d8 f8 | 
  g8 a4.~ a4 c8 a8 | g8 f4. r8 a8 g8 d8 | e2. f8 cs8 | d1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
