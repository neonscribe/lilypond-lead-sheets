%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Scrapple From the Apple"
  subtitle = \instrument
  poet = ""
  composer = "Charlie Parker"
  copyright = \markup \small { \now " " "© 1947 Atlantic Music Corp." }
}

refrainChords = \chordmode {
  g1:m7 c1:7 g1:m7 c1:7
  f1:maj7 bf2:7 b2:dim7 f2:maj7 g2:m7 a2:m7 d2:7

  g1:m7 c1:7 g1:m7 c1:7
  f1:maj7 bf2:7 b2:dim7 f2:maj7 g2:m7 f1:6
  
  a1:7 a1:7 d1:7 d1:7 g1:7 g1:7 c1:7 c1:7

  g1:m7 c1:7 g1:m7 c1:7
  f1:maj7 bf2:7 b2:dim7 f4:maj7 \chordSlash 1 g4:m7 c4:7 f1:6
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
  \tempo "Bop [Charlie Parker 1947]" 4 = 200

  \sectStart "A1"
  
  r8 fs8 g8 bf8 a8 g8 f8 d8 | g8 c8 r4 r8 bf4 a8 |
  bf8 f'8 \tuplet 3/2 { d8 bf8 g8 } a8 d,8 g8 df8 | r4 r8 a'8~ a8 bf4 a8 |
  \break
  c8 a8 \tuplet 3/2 { g8 f8 g8~ } g4 r8 f'8 | d4 r8 e8~ e8 d8 \tuplet 3/2 { a8 bf8 b8 } |
  c4. a8 bf8 a8 gs8 a8 | c8 a8 bf8 c8 r2 |
  
  \sect "A2"

  r8 fs,8 g8 bf8 a8 g8 f8 d8 | g8 c8 r4 r8 bf4 a8 |
  bf8 f'8 \tuplet 3/2 { d8 bf8 g8 } a8 d,8 g8 df8 | r4 r8 a'8~ a8 bf4 a8 |
  \break
  c8 a8 \tuplet 3/2 { g8 f8 g8~ } g4 r8 f'8 | d4 r8 e8~ e8 d8 \tuplet 3/2 { a8 bf8 b8 } |
  c4. a8 bf8 a8 gs8 a8 | f8 c8 e8 f8 r2 |
  
  \sect "B"
  
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  
  \sect "A3"

  r8 fs8 g8 bf8 a8 g8 f8 d8 | g8 c8 r4 r8 bf4 a8 |
  bf8 f'8 \tuplet 3/2 { d8 bf8 g8 } a8 d,8 g8 df8 | r4 r8 a'8~ a8 bf4 a8 |
  \break
  c8 a8 \tuplet 3/2 { g8 f8 g8~ } g4 r8 f'8 | d4 r8 e8~ e8 d8 \tuplet 3/2 { a8 bf8 b8 } |
  c4. a8 bf8 a8 gs8 a8 | f8 c8 e8 f8 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
