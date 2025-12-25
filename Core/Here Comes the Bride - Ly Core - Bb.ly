%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "Here Comes the Bride"
  subtitle = \instrument
}

refrainChords = \chordmode {
  bf1 bf1 bf2 f2:7 bf1
  bf2. ef4 ef1 bf2 c2:7 f1
  bf1 bf1 bf2 f2:7 bf1
  bf1 d2.:m g4:m c2.:m f4:7 bf1
  
  bf1:6 bf2:6 g2:m7 c2:m7 f2:7 bf1:6 bf2:6 bf2:7 ef2:6 e2:dim7 bf2:6 c2:7 f1:7
  bf1:6 bf2:6 g2:m7 c2:m7 f2:7 bf1:6 bf2:6 c2:m7 d2:m7 g2:m7 c2:m7 f2:7 bf2:6
  \chordInsideParens{ f2:7 }
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

refrainMelody = \relative f'' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Straight" 2 = 108
  
  
  f2 bf4. bf8 | bf2. r4 | f2 c'4. a8 | bf2. r4 |
  \break
  f2 bf4. ef8 | ef2 d4. c8 | bf2 \grace { c8( bf8 } a4.) bf8 | c2. r4 |
  \break
  f,2 bf4. bf8 | bf2. r4 | f2 c'4. a8 | bf2. r4 |
  \break
  f2 bf4. d8 | f2 d4. bf8 | g2 c4. d8 | bf2. r4 |

  \break

  \tempo "Swing" 2 = 108
  
  \bar ".|:"
  \repeat volta 2 {
  r8 f4. bf4-. bf8 bf8~ | bf1 | r8 f4. c'4-. a8 bf8~ | bf1 |
  \break
  r8 f4. bf4 ef4 | ef2 d4 c8 bf8~ | bf4 c8 bf8 a8 bf4 c8~ | c1 |
  \break
  r8 f,4. bf4-. bf8 bf8~ | bf1 | r8 f4. c'4-. a8 bf8~ | bf1 |
  \break
  
  r8 f4.-"ritard last time" bf4 d8 f8~ | f2 d4 bf4 | g2 c4 bf8 bf8~ |
  bf1 |
  }

}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
