%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:42.593776Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Little Sunflower"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Freddie Hubbard"
headerCopyright = "© 1967 Hubtones Music Co."

introChords = \chordmode {
  d1:m d1:m d1:m d1:m
}

introKey = d

bassIntro = \relative f' {
  \time 4/4
  \key \introKey \minor
  \clef bass
  \tempoFour "Medium Latin [Freddie Hubbard 1967]" 140

  \sectNoBarNoBreak "Intro"

  \bar ".|:"
  \repeat volta 2 {
  d,4._"(Bass)" a'8 d8 d4 a8 | d,4. a'8 d4 d4 | d,4. a'8 d8 d4 a8 | d,4. a'8 d4 d4 |
  }
}

refrainChords = \chordmode {
  d1:m7 d1:m7 d1:m7 d1:m7 d1:m7 d1:m7 d1:m7 d1:m7 d1:m7
  ef1:maj7 ef1:maj7 ef1:maj7 ef1:maj7 ef1:maj7 ef1:maj7 ef1:maj7 ef1:maj7 ef1:maj7
  d1:m7 d1:m7 d1:m7 d1:m7 d1:m7 d1:m7 d1:m7 d1:m7
}

refrainKey = d

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \key \refrainKey \minor
  \clef \whatClef

  \sectNoBarNoBreak "Head A"

  \bar ".|:"
  \repeat volta 2 {
  r2_"Bass continues" a8 bf4 bf8~ | bf8 c4 c8~ c2~ | c4 r4 c8 d4 d8~ | d8 e4 e8~ e4 d8 c8 |
  \break
  b4-. g4 a2~ | a1~ | a1~ |
  \alternative { \volta 1 {
  a1
  } \volta 2 {
  a4 r4 a8 bf8 a8 f8 |
  } } }

  \bar ".|:-||"
  \sectNoBar "B"


  \repeat volta 2 {
  g4. ef8 ef2~ | ef1~ | ef1 | r4 r8 bf8 ef8 f8 g8 bf8 |
  \break
  a4. fs8 fs2~ | fs1~ | fs1~
  \alternative { \volta 1 {
  fs2 a8 bf8 a8 f8 |
  } \volta 2 {
  fs1\repeatTie |
  } } }

  \bar ".|:-||"
  \sectNoBar "C"

  \repeat volta 2 {
  r2 a8 b4 b8~ | b8 c4 c8~ c2~ | c4 r4 c8 d4 d8~ | d8 e4 e8~ e4 d8 c8 |
  \break
  b4-. g4 g2~ | g1~ | g1~ | g1 |
  }
}

afterText = 
\markup { "Solo on" \box "A" \box "A" \box "B" \box "B" \box "C" \box "C" 
	  "Afer last head, vamp intro to fade."
	}

\include "../Include/bassintrorefrain.ily"
