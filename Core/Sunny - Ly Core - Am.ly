%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Sunny"
  subtitle = \instrument
  poet = ""
  composer = "Bobby Hebb"
  copyright = \markup \small { \now " " "© 1966 Portable Music Company, Inc." }
}

refrainLyrics = \lyricmode {
Sun -- ny, yes -- ter -- day my life was filled with rain. __
Sun -- ny, you smiled at me and real -- ly eased the pain. __
Now the dark days are done __ and the bright days are here. __
My sun -- ny one __ shines so sin -- cere.
Sun -- ny one so true, __ I love you. __
}

refrainSRBChords = \chordmode {
  a1:m7 c1:7 f1:maj7 b2:m7 e2:7
  a1:m7 c1:7 f1:maj7 b2:m7 e2:7
  a1:m7 c1:7 f1:maj7 bf1:7 
  b1:m7 e1:7 a2:m7
  \chordOpenParen{ a2:m7/g }
  f2:9
  \chordCloseParen{ e2:7.9-.5+ }
}

refrainHLRBChords = \chordmode {
  a1:m c1:7 f1:maj7 b2:m7 e2:7
  a1:m c1:7 f1:maj7 b2:m7 e2:7
  a1:m c1:7 f1:maj7 bf1:7.11+ 
  b1:m7 e1:7 a1:m
  \chordOpenParen{ b2:m7.5- }
  \chordCloseParen{ e2:7 }
}

refrainChords = \refrainHLRBChords

refrainKey = a

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
  \tempo "Medium [Bobby Hebb 1966]" 4 = 130

  e8 e4. r2 | r2 a8 g8 e8 d8 | c4 a4 c4 d8 e8~ | e2 r2 |
  \break
  e8 e4. r2 | r4 r8 e8 a8 g8 e8 d8 | c4 a4 c4 d8 e8~ | e2 r4 e8 d8 |
  \break
  e8 c8 d8 c8~ c4 d8 c8 | e8 c8 d8 e8~ e2 | e8 c8 d8 c8~ c4 d4 | e4 d4 c2 |
  \break
  e8 e4. e8 e4 d8~ | d2 c4 d4 | c8( a4.~ a2) | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup {
  \column {
    \vspace #2
    \line { \large { Sunny, thank you for the sunshine bouquet. } }
    \line { \large { Sunny, thank you for the love you've brought my way. } }
    \line { \large { You gave to me your all and all, } }
    \line { \large { now I feel ten feet tall. } }
    \line { \large { Sunny one so true, I love you. } }
    \vspace #1
    \line { \large { Sunny, thank you for the truth you let me see. } }
    \line { \large { Sunny, thank you for the facts from A to Z. } }
    \line { \large { My life was torn like wind-blown sand, } }
    \line { \large { Then a rock was formed when we held hands. } }
    \line { \large { Sunny one so true, I love you. } }
    \vspace #1
    \line { \large { Sunny, thank you for that smile upon your face. } }
    \line { \large { Sunny, thank you for that gleam that flows with grace. } }
    \line { \large { You're my spark of nature's fire, } }
    \line { \large { You're my sweet complete desire. } }
    \line { \large { Sunny one so true, I love you. } }
  }
}
