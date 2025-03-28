%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  (set-global-staff-size 18))

\header {
  title = "Baby Elephant Walk"
  subtitle = \instrument
  poet = ""
  composer = "Henry Mancini"
  copyright = \markup \small "© 1961 Famous Music Corporation"
}

introChords = \chordmode {
  f1 f1 f1 f1
}

introKey = f

bassIntro = \relative f' {
  \time 4/4
  \key \introKey \major
  \clef bass
  \tempo "Medium" 4 = 122
  
  \xTextMark \markup{ \bold \box "Intro" }

  f,,8_"(Bass)" f8 gs8 a8 f8 f8 gs8 a8 | f8 f8 gs8 a8 f8 f8 gs8 a8 |
  f8 f8 gs8 a8 f8 f8 gs8 a8 | f8 f8 gs8 a8 f8 f8 gs8 a8 |

  \bar "||-||"
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  f1 f1 f1 f1
  bf1 bf1 f1 f1
  c1 bf1 f1
  
  f1
  
  f1
  
  f1 f1 f1 bf4 f4 bf4 f4
  r1 r1 bf1 bf1
  
  f1 f1 c1 bf1

  f1 f1 f1 f1
  bf1 bf1 f1 f1
  c1 bf1 f1 f2:7 f2:13.11+
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Henry Mancini 1961]" 4 = 122

  \xTextMark \markup{ \bold \box "A1, A2" }

  \bar ".|:"
  \repeat volta 2 {
  f8. a16 c8 f8 a8 g8 f8 d8 | b8 c8 r4 r2 |
  f,8. a16 c8 f8 a8 g8 f8 d8 | c2. d8 af8~ |
  af2.~ af8 d8 | af8 f8 r4 r2 |
  \break
  f8. a16 c8 f8 a8 g8 f8 d8 | b8 c8 r4 r4 r8 c8 |
  g'4 g4 e8 c8 r8 c8 | f4 f4 ef16 f16 ef16 c16 bf8 gs8 |
  b4 b4 bf16 cf16 bf16 af16 f8 c8 |
  } \alternative { {
  ef8 f8 r4 r2
  } {
  ef8 f8 d8 d8 c8 c8 bf8 bf8 |
  } }
  \sect "Interlude"

  a8 r8 a''4 r4 g8 g8 | r4 a4 r4 r8 c,,8 |
  f4 af8 f8 bf8 af4. | f4 f4 f8 f8 f8 r8 |
  \break
  f,4 af8 f8 bf8 bf8 af8 f8 | af8 bf8~ bf2 f8 af8~ |
  af2.~ af8 d8 | af8 f8 r4 r2 |
  
  \sect "Turnaround"

  f'8. a16 c8 f8 a8 g8 f8 d8 | b8 c8 r4 r4 r8 c8 |
  g'4 g4 e8 c8 r8 c8 | f4 f4 ef16 f16 ef16 c16 bf8 gs8 |
  
  \sect "A3"
  
  f8. a16 c8 f8 a8 g8 f8 d8 | b8 c8 r4 r2 |
  f,8. a16 c8 f8 a8 g8 f8 d8 | c2. d8 af8~ |
  \break
  af2.~ af8 d8 | af8 f8 r4 r2 |
  f8. a16 c8 f8 a8 g8 f8 d8 | b8 c8 r4 r4 r8 c8 |
  \break
  g'4 g4 e8 c8 r8 c8 | f4 f4 ef16 f16 ef16 c16 bf8 af8 |
  f8 r8 c4 d4 c4 | ef2 b''2\fermata |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/bass-intro.ily"

\include "../Include/refrain.ily"
