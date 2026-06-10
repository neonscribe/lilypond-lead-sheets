%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:42.010961Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Lebanon"
headerSubtitle = \subtitle
headerSubsubtitle = "Not an exact transcription, there are extra measures between chorus and verse"
headerPoet = ""
headerComposer = "J.S. Ondara"
headerCopyright = "© 2019"

refrainChords = \chordmode {
  c1 c1 c1 c1

  c1 c1 c2 f2 c1
  c1 a1:m f2 g2 c1

  g1 g2 f2 c1 c2 f2
  g1 g2 f2 c1 c2 f2
  g1 g2 f2 c1 c2 f2
  g1 g2 f2 c1 c1

  c1 c1 c1 c1
  }

refrainKey = c

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour \markup { Medium Shuffle \rhythm { 8[ 8] } = \rhythm { \tuplet 3/2 { 8( 8) 8 } } } 108

  \xTextMark \markup{ \bold \box "Intro" }

  c4 c4 c8 a'8 g8 e8 | c4 c4 c8 a'8 g8 e8 | c4 c4 c8 a'8 g8 e8 | c4 c4 c8 a'8 g8 a8 |

  \sect "Chorus"

  c,4 c4 c8 a'8 g8 e8 | c4 c4 c8 a'8 g8 e8 | c4 c4 f4 f4 | c4 c4 c8 a'8 g8 e8 |
  \break
  c4 c4 b4 b4 | a4 a4 e'4 a4 | f4 f4 g4 a,8 b8 | c4 c4 c8 a'8 g8 a8 |

  \sect "Verse"

  g2 g2 | g2 f4 f4 | c4 c4 c4 c8 g8 | c4 c4 f4 c4 |
  \break
  g'2 g2 | g2 f4 f4 | c4 c4 c4 c4 | c4 c4 f4 a4 |
  \break
  g2 g2 | g2 f4 f4 | c4 c4 c4 c8 g8 | c4 c4 f4 a4 |
  \break
  g2 g2 | g2 f4 f4 | c4 c4 c8 a'8 g8 e8 | c4 c4 c8 a'8 g8 a8 |

  \sect "Outro"

  c,4 c4 c8 a'8 g8 e8 | c4 c4 c8 a'8 g8 e8 | c4 c4 c8 a'8 g8 e8 | c1 |

  \bar "|."
}

\include "../Include/paper.ily"

\include "../Include/refrain.ily"
