%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Bunko"
  subtitle = \instrument
  poet = ""
  composer = "Lennie Niehaus"
  copyright = \markup \small "© 1955 Contemporary Music"
}

refrainChords = \chordmode {
  f2:maj7 a4:m7 af4:7 g2:m7 c2:7.9- a2:m7 d2:7.9+ g2:m7 c2:7
  f2:6 f2:7/a bf2 b2:dim7 f2/c g8:7 c4:7 f8:6 r1
  
  c1:m7 f1:7 bf1:maj7 bf1:maj7
  bf1:m7 ef1:7 af1:maj7 g2:m7 c2:7

  f2:maj7 a4:m7 af4:7 g2:m7 c2:7.9- a2:m7 d2:7.9+ g2:m7 c2:7
  f2:6 f2:7/a bf2 b2:dim7 f2/c g8:7 c4:7 f8:6 r1
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Bop" 4 = 160

  \sectStart "A1,A2"

  \bar ".|:"
  \repeat volta 2 {
  c'8 c8 a8 a8 e4-. ef4-. | d8 bf'4 df,8~ df4 r8 c8 | r8 c4-. c8 f4-. f4-. | d4-. d8 a'8~ a4 c,8 d8 |
  \break
  f8 g8 f8 d8 f8 af8 f8 d8 | f8 b8 bf8 af8 f8 g8 f8 d8 | f4-. f4-. f8 f4 f8 | r1 |
  }
  \bar "||-:|."
  
  \sectNoBar "B"
  
  c8 d8 ef8 f8 g8 a8 bf8 c8 | d8 f4. d4-. bf8 c8~ | c4. g8~ g4 r8 ef'8 | d8 bf8 f8 ef8 d8 f8 c8 a8 |
  \break
  bf8 c8 df8 ef8 f8 g8 af8 bf8 | c8 ef4. c4-. af8 bf8~ | bf4. f8~ f4 r8 c'8~ |
  c8 bf4 c8 \tuplet 3/2 { a8 af8 g8~ } g4 |

  \sect "A3"

  c'8 c8 a8 a8 e4-. ef4-. | d8 bf'4 df,8~ df4 r8 c8 | r8 c4-. c8 f4-. f4-. | d4-. d8 a'8~ a4 c,8 d8 |
  \break
  f8 g8 f8 d8 f8 af8 f8 d8 | f8 b8 bf8 af8 f8 g8 f8 d8 | f4-. f4-. f8 f4 f8_"FINE" | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup{"Syncopation in bars 7 and 8 of A sections on head only."}
