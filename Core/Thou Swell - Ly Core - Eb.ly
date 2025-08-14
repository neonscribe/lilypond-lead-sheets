%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Thou Swell"
  subtitle = \instrument
  poet = "Lorenz Hart"
  composer = "Richard Rodgers"
  copyright = \markup \small "© 1927 Chappell & Co."
}

refrainLyrics = \lyricmode {
Thou swell, thou wit -- ty, __ thou sweet, thou grand.
Would'st kiss me pret -- ty? __ Would'st hold my hand?
Both thine eyes __ are cute too, what they do to me. __
Hear me hol -- ler I choose a sweet lol -- la -- pa -- loo -- za in thee. __
I'd feel so rich in __ a hut for two, Two rooms and kit -- chen. __
I'm sure would you give me just __ a plot of, not a lot of land and
Thou swell, thou wit -- ty, __ thou grand. __
}

refrainChords = \chordmode {
  s4
  
  f1:m7 bf1:7 f1:m7 bf1:7
  ef1:maj7 af1:13 ef1:maj7 a2:m7.5- d2:7.9-
  
  g2:m7 c2:7 f2:m7 bf2:7 ef1:maj7 ef1:6
  d2:m7 g2:7 c2:m7 f2:7 bf1:7 g2:m7 c2:7
  
  f1:m7 bf1:7 f1:m7 bf1:7
  ef1:maj7 af1:13 ef1:maj7 a2:m7.5- d2:7.9-
  
  g2:m7 c2:7 f2:m7 bf2:7 g1:m7.5- c1:7
  f1:m7 bf1:7 ef1:6
  \chordOpenParen{ g2:m7.5- }
  \chordCloseParen{ c2:7.9- }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Blossom Dearie 1956]" 4 = 146

  \partial 4 g4 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  f2. g4 | f8 bf,4.~ bf4 g'4 | f2. g4 | bf2. c4 |
  \break
  bf2. c4 | bf8 ef,4.~ ef4 c'4 | bf2. c4 | ef2 c8 d4 bf8~ |

  \sect "B"
  
  bf4. b8 c8 g4. | af4. a8 bf8 f4. | g1~ | g2 bf4 ef,4 |
  \break
  f8 f4 fs8 g8 g4 d8 | ef8 ef4 e8 f8 f4 c8 | d1~ | d2. g4 |

  \sect "A2"
  
  f2. g4 | f8 bf,4.~ bf4 g'4 | f2. g4 | bf2. c4 |
  \break
  bf2. c4 | bf8 ef,4.~ ef4 c'4 | bf2. c4 | ef2 c8 d4 bf8~ |

  \sect "C"

  bf4. b8 c8 g4. | af4. a8 bf8 f4. | g1 | c2. g4 |
  \break
  f2. g4 | f8 bf,4.~ bf4 g'4 | ef1~ | ef2. r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
