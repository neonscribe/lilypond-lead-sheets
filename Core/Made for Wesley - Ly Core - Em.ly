%% -*- Mode: LilyPond -*-

songID = "2026-08-28T04:13:56.806867Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Made for Wesley"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Reinus Steinback and Jimmy Rosenberg"
headerCopyright = "© 2004 Jimmy Rosenberg"

refrainChords = \chordmode {
  e1:m7 e1:m7 c1:maj7 c1:maj7
  a1:m a1:m b1:m7 b1:7.5+
  
  e1:m9 e1:m9 c1:maj7 c1:maj7
  a1:m7 d1:7 g1:maj7 gs1:dim7

  a1:m7 b1:7 e1:m9 e1:m9
  c1:7 b1:7 e1:m7 b1:7.5+
}

refrainKey = e

whatKey = #(or whatKey refrainKey)
isMinor = ##t

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempoFour "Medium Fast [Jimmy Rosenberg 2004]" 162

  \sectNoBar "Intro"
  
  \bar ".|:"
  \repeat volta 2 {
  e,8 b'8 fs'8 g8~ g8 b8 fs8 g8 | e,8 b'8 fs'8 g8~ g8 b8 fs8 g8 |
  e,8 b'8 fs'8 g8~ g8 b8 fs8 g8 | e,8 b'8 fs'8 g8~ g8 b8 fs8 g8 |
  \break
  a,8 e'8 fs8 g8~ g8 b8 fs8 g8 | a,8 e'8 fs8 g8~ g8 b8 fs8 g8 |
  b,8 d8 fs8 g8~ g8 b8 fs8 g8 | b,8 ds8 fs8 g8~ g8 b8 fs8 g8 |
  }
  \bar ":|.|:"
  \repeat volta 2 {
  \sectNoBar "Head"
  
  b8 e8 fs8 g8~ g2 | r8 b,8 e8 fs8 g8 fs8 g8 fs8 | c8 e8 fs8 g8~ g2 | r8 b,8 e8 fs8 g8 fs8 g8 fs8 |
  \break
  g16( a8.) g8 a8~ a2 | r8 d,8 e8 fs8 g8 a8 b8 d8 | b32( d32 b8.) a8 b8~ b2 |
  r8 d8 c32( d32 c16) b8 a8 gs8 b8 gs8 |
  \break
  a8 e8 c8 b8~ b2 | r4 r8 a,16 as16 b16 ds16 fs16 a16 b16 ds16 fs8 | g32( a8..~ a8) g8 e8 b8 a8 g8 |
  a8 g8 e8 e8 r8 e'8 b8 g8 |
  \break
  g'8 e8 cs8 as8 cs8 e8 g8 fs8~ | fs8 ds8 c8 a8 c8 d8 fs8 fs8 | r8 g8 e8~ e2 ds'16 d16 |
  b16 a16 g16 ef16 d16 c16 b8~ b2 |
  }
  \bar ":|."
}

\include "../Include/refrainonly.ily"
