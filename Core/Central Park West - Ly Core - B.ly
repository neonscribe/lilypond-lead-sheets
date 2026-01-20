%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "Central Park West"
  subtitle = \instrument
  poet = ""
  composer = "John Coltrane"
  copyright = \markup \small { \now " " "© 1964 Jowcol Music" }
}

refrainChords = \chordmode {
  cs4:m7 fs4:7
  
  b4:maj7 \chordSlash 1 e4:m7 a4:7 d2:maj7 bf4:m7 ef4:7 af2:maj7 g4:m7 c4:7
  f2:maj7 cs4:m7 fs4:7 b4:maj7 \chordSlash 1 e4:m7 a4:7 d2:maj7 cs4:m7 fs4:7
  b1:maj7 cs1:m7/b b1:maj7 cs2:m7/b cs4:m7 fs4:7

  b1:maj7
}

refrainKey = b

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
  \tempo "Ballad [John Coltrane 1964]" 4 = 72

  \partial 2 ds4 cs4 |

  \sectNoBarNoBreak "Refrain"

  \bar ".|:"
  \repeat volta 2 {
  fs1~ | fs2 af4 bf4 |
  \break
  c4 c4 c4 c4 | a4. r8 ds,4 cs4 |
  \break
  fs1~ | fs4. r8 ds4. cs8 |
  \break
  ds2.~ ds16 gs16 fs16 ds16 | cs2. \tuplet 3/2 { r8 b8 cs8 } |
  \break
  ds2.~ ds16 as'16 fs16 ds16 | cs4.  r8 ds4 cs4 |
  }

  \sectNoBarNoBreak "Ending"

  ds1\fermata

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup{ "Play head twice, before and after solos. Melody is freely interpreted." }
