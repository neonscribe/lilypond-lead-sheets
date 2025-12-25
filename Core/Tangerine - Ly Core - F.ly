%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Tangerine"
  subtitle = \instrument
  poet = "Johnny Mercer"
  composer = "Victor Schertzinger"
  copyright = \markup \small { \now " " "© 1942 Famous Music Corporation" }
}

refrainLyrics = \lyricmode {
Tan -- ger -- ine, she is all they claim
with her eyes of night and lips as bright as flame.
Tan -- ger -- ine, when she danc -- es by
señ -- on -- i -- tas stare and ca -- bal -- le -- ros sigh.
And I've seen toasts to Tan -- ger -- ine
raised in ev -- 'ry bar a -- cross the Ar -- gen -- tine.
Yes, she has them all on the run,
but her heart be -- longs to just one.
Her heart be -- longs to Tan -- ger -- ine.
}

refrainChords = \chordmode {
  s2
  g1:m7 c1:7 f2:maj7 bf2:7 a2:m7 af2:dim7
  g2:m7 c2:7 g2:m7 c2:7 f1:maj7 a2:m7 d2:7
  
  g1:m7 c1:7 f1:maj7 b2:m7.5- e2:7.9-
  a2:maj7 fs2:m7 b2:m7 e2:7 a1:7 d1:7

  g1:m7 c1:7 f2:maj7 bf2:7 a2:m7 af2:dim7
  g2:m7 c2:7 g2:m7 c2:7 ef1:7 d1:7
  
  g2:m7 g2:m7/f e2:m7.5- a2:7 d1:m7 g1:7
  g1:m7 c1:7 f1:maj7
  \chordOpenParen{ a2:m7 }
  \chordCloseParen{ d2:7 }
}

refrainKey = f

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
  \tempo "Medium [Jimmy Dorsey 1942]" 4 = 152

  \partial 2 d'4 bf4 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  a1 | r2 c4 a4 | g4 f4 d2 | r2 f4 d4 |
  \break
  f4. d8 e4. d8 | f4. d8 e4. c8 | a'1 | r2 d4 bf4 |
  
  \sect "B"
  
  a1 | r2 c4 a4 | g4 f4 d2 | r2 e4 f4 |
  \break
  e4. fs8 a4. fs8 | a4. fs8 b4 fs4 | a1 | r2 d4 bf4 |


  \sect "A2"
  
  a1 | r2 c4 a4 | g4 f4 d2 | r2 f4 d4 |
  \break
  f4. d8 e4. d8 | f4. d8 e4. c8 | a'1 | r2 bf4 c4 |
  
  \sect "C"
  
  d4 bf4 \tuplet 3/2 { a4 c4 bf4 } | a2. g8 gs8 |
  a4 f4 \tuplet 3/2 { e4 g4 f4 } | e2. d4 |
  \break
  cs4 d4 f4 bf4 | d2 e,2 | f1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
