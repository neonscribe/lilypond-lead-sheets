%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Hymn to Freedom"
  subtitle = \instrument
  poet = ""
  composer = "Oscar Peterson"
  copyright = \markup \small { \now " " "© 1962 Tomi Music Company" }
}

refrainChords = \chordmode {
  f2 a2 d2:m f2:7/a bf2 e2:7/b f4 bf4/f f4 f4:7 bf2 e2:7/b
  
  f4/c a4/cs d2:m g4 c4/g g2:7 c4 c4/bf f4/a c4:7/g
  
  f2 a2 d2:m f2:7/a bf2 e2:7/b f4 bf4/f f4 f4:7 bf2 e2:7/b
  
  f4/c a4/cs d2:m g4:m a4:m bf4 c4 bf2/f f4 \tuplet 3/2 { c4 f8/c }
  
  c2.~ \tuplet 3/2 { c4 f8/c } c2. c4:7 f2 a2/cs d2:m f2:7/a
  bf2 e2:7/b f4/c a4/cs d2:m g4 c4/g g2:7 c4 c4/bf f4/a c4:7/g
  
  f2 a2/cs d2:m f2:7/a bf2 e2:7/b f4 bf4/f f4 f4:7 bf2 e2:7/b
  f4/c a4/cs d2:m g4:m a4:m bf4 c4 bf2/f f2
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
  \tempo "Slowly [Oscar Peterson 1962]" 4 = 84

  \sectStart "A1"
  
  a'2 a4. g8 | f2 f,2 | f'2 e4. d8 | c4 f,4 f4 f8 f8 | f'4. f8 e4 d4 |
  c4 a4 f2 |
  <<
    { \voiceOne
      g1 |
    }
    \new Voice
    { \voiceTwo
      \magnifyMusic 0.63 {
      b,4 c4 d8 c8 b4 |
    } }
  >>
  \oneVoice
  c'4 c4 c4 c4 |

  \sect "A2"
  
  a'2 a4. g8 | f2 f,2 | f'2 e4. d8 | c4 f,4 f4 f8 f8 | f'4. f8 e4 d4 |
  c4 a4 f4 \tuplet 3/2 { d8 f8 a8 } | bf4 a4 f4 g4 | f2. \tuplet 3/2 { g4 a8 } |

  \sect "B"
  
  <<
    { \voiceOne
      g2. \tuplet 3/2 { g4 a8 } | g2 \tuplet 3/2 { r8 c8 d8 } \tuplet 3/2 { e8 f8 g8 } |
    }
    \new Voice
    { \voiceTwo
      \magnifyMusic 0.63 {
	\override NoteHead.style = #'cross
	d,4\rest d8 d8 d4 d4\rest | d4\rest d8 d8 d4 d4\rest |
	\revert NoteHead.style
    } }
  >>
  \oneVoice
   a''2 a4. g8 | f2 f,2 | f'4. f8 e4 d4 | c4 a4 f2 |
  <<
    { \voiceOne
      g1 |
    }
    \new Voice
    { \voiceTwo
      \magnifyMusic 0.63 {
      b,4 c4 d8 c8 b4 |
    } }
  >>
  \oneVoice
  c'4 c4 c4 c4 |

   \sect "A3"
   
   a'2 a4. g8 | f2 f,2 | f'2 e4. d8 | c4 f,4 f4 f8 f8 | 
   f'4. f8 e4 d4 | c4 a4 f4 \tuplet 3/2 { d8 f8 a8 } | bf4 a4 f4 g4 | f2~ f4. r8 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
