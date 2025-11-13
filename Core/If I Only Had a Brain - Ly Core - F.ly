%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "If I Only Had a Brain"
  subtitle = \instrument
  poet = "E.Y. Harburg"
  composer = "Harold Arlen"
  copyright = \markup \small { \now " " "© 1938 Metro-Goldwyn-Mayer, Inc." }
}

refrainLyrics = \lyricmode {
I could while a -- way the ho -- urs, con -- ferr -- in' with the flow -- ers,
con -- sult -- in' with the rain.
_ _ _ _ _ _ _
And my head I'd be scratch -- in', while my thoughts were bus -- y hatch -- in',
if I on -- ly had a brain. __

I'd un -- rav -- el ev -- 'ry rid -- dle for an -- y in -- di -- vid -- le
in trou -- ble or in pain.
_ _ _ _ _ _ _
With the thoughts I'd be think -- in' I could be an -- oth -- er Lin -- coln
if I on -- ly had a brain. __

Oh, I __ could tell you why, the o -- cean's near the shore.
I could think of things I've nev -- er thunk be -- fore
and then I'd sit and think some more.

I would not be just a nuff -in', my head all full of stuff -- in',
my heart all full of pain.
_ _ _ _ _ _ _
I would dance and be mer -- ry, life would be a ding -- a -- der -- ry,
if I on -- ly had a brain. __
}

refrainHLChords = \chordmode {
  s4
  
  f1:6 g2:m7 g2:m7/c f4 bf4/f f2:maj7 g2:m7/f f2:6
  g1:m7 c1:7 f4 bf4/f f2 g2:7.5+ c2:7

  f1:6 g2:m7 g2:m7/c f4 bf4/f f2:maj7 g2:m7/f f2:6
  g1:m7 c1:7 f4 bf4/f f2 f2:6 c4:m7 f4:7
  
  bf2 b2:dim7 a2:m7 d2:7 g2:m7 c2:7 f2:maj7 f2:6
  e2:m7.5- a2:7 d1:m7 g4:9 r4*3 \chordSlash 1 f4:dim7 c4:7/g r4


  f1:6 g2:m7 g2:m7/c f4 bf4/f f2:maj7 g2:m7/f f2:6
  g1:m7 c1:7 f4 bf4/f f2 f2:6
  \chordInsideParens{ c2:7 }
}

refrainDFBChords = \chordmode {
  s4
  
  f2 d2:m7 g2:m7 c2:7 f1 f2. f4:7
  bf2 g2:m7 c1:7 f4 bf4 f4 \chordSlash 1 c1:7

  f2 d2:m7 g2:m7 c2:7 f1 f2. f4:7
  bf2 g2:m7 c1:7 f4 bf4 f4 \chordSlash 1 c2:m7 f2:7

  bf1 a2:m7 d2:7 g2:m7 c2:7 f1
  e2:m7.5- a2:7 d1:m7 g1:7 c1:7

  f2 d2:m7 g2:m7 c2:7 f1 f2. f4:7
  bf2 g2:m7 c1:7 f4 bf4 f4 \chordSlash 1
  \chordInsideParens{ c1:7 }
}

refrainChords = 
   $(if (and (defined? 'useDFBChords) useDFBChords)
     refrainDFBChords
     refrainHLChords)

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Ray Bolger, Wizard of Oz 1939]" 4 = 128

  \partial 4 a8 bf8 |
  \bar "||"

  \sectStart "A1"
  
  c8 a8 f8 g8 a8 f4 g8 | a8 f8 d8 e8 f8 d4 d8 | c8 c8 c8 c8 c4.
  \magnifyMusic 0.63 { d'8 | c8 a8 \tuplet 3/2 { g8 f8 d8 } c4 } f8 f8
  \break
  d4 d'8 c8 bf8 a8 g8 f8 | e8 e8 e'8 d8 c8 bf8 a8 g8 | f8 f8 f8 f8 f2~ | f2 r4 a8 bf8 |

  \sect "A2"
  
  c8 a8 f8 g8 a8 f4 g8 | a8 f8 d8 e8 f8 d4 d8 | c8 c8 c8 c8 c4.
  \magnifyMusic 0.63 { d'8 | c8 a8 \tuplet 3/2 { g8 f8 d8 } c4 } f8 f8
  \break
  d4 d'8 c8 bf8 a8 g8 f8 | e8 e8 e'8 d8 c8 bf8 a8 g8 | f8 f8 f8 f8 f2~ | f2 r4 f4 |
  \bar "||"
  
  \xPageBreak

  \sectNoBarNoBreak "B"
  
  d'2~ d8 cs8 d8 e8 | c2. d4 | bf4 bf4 bf4 c4 | a2. bf8 a8 |
  \break
  g8 fs8 g8 fs8 g8 fs8 g8 a8 | f2 r8 g8 a8 c8 | d4 r4 r8 b8 a8 g8 | c2. a8 bf8 |

  \sect "A3"

  c8 a8 f8 g8 a8 f4 g8 | a8 f8 d8 e8 f8 d4 d8 | c8 c8 c8 c8 c4.
  \magnifyMusic 0.63 { d'8 | c8 a8 \tuplet 3/2 { g8 f8 d8 } c4 } f8 f8
  \break
  d4 d'8 c8 bf8 a8 g8 f8 | e8 e8 e'8 d8 c8 bf8 a8 g8 | f8 f8 f8 f8 f2~ | f2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
