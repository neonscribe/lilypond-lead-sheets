%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Con Alma"
  subtitle = \instrument
  poet = ""
  composer = "Dizzy Gillespie"
  copyright = "© 1954 Dizlo Music Corporation"
}

introKey = c

introChords = \chordmode {
  s4 df8:9 s8 s2 s4 c8:9 s8 s2 s4 df8:9 s8 s2 s4 c8:9 s8 s2 
}

introKicksOverTime = \relative f' {
  r4 df8 r8 r2 | r4 c8 r8 r2 | r4 df8 r8 r2 | r4 c8 r8 r2 | 
}

bassIntro = \relative f' {
  \time 4/4
  \key \introKey \major
  \clef bass
  \tempo "Latin [Wes Montgomery 1965]" 4 = 128

  \xTextMark \markup{ \bold \box "Intro" }
  
  \bar ".|:"
  \repeat volta 2 {
  df,4-. r8 df'8 df8 r8 af4-. | c,4-. r8 g'8 c8 c8 g8 r8 |
  df4-. r8 df'8 df8 r8 af4-. | c,4-. r8 g'8 c8 c8 g8 r8 |
  }
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  e2:maj7 gs2:7/ds cs2:m7 b2:7 bf2:7 e2:7.5- ef2:maj7 ef4:m7 af4:7
  df2:maj7 f2:7/c bf2:m7 af2:7 g2:7 df2:7.5-
  
  c1:maj7
  
  c1:maj7
  
  c1:m7.5- f1:7.9- fs1:m7.5- b1:7.9-
  e1:maj7 e1:maj7 f1:m7 bf4:7 \chordSlash 2 b4:7

  e2:maj7 gs2:7/ds cs2:m7 b2:7 bf2:7 e2:7.5- ef2:maj7 ef4:m7 af4:7
  df2:maj7 f2:7/c bf2:m7 af2:7 g2:7 df2:7.5- c1:maj7
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef

  \xTextMark \markup{ \bold \box "A1,A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  gs1~ | gs2 gs2 | gs4 as8 b8 as4 gs8 g8~ | g2 r4 gf8 af8 |
  \break
  f1~ | f2 f2 | f4 g8 af8 g4 f8 g8 |
  \alternative { \volta 1 {
  e2 r2 |
  } \volta 2 {
  e2 r4 ef8 f8 |
  } } }
  \sect "B"
  
  gf8 f4 ef16 d16 ef2~ | ef4 r4 ef8 f8 gf8 af8 | a8 af4 gf16 f16 gf2~ | gf4 r4 r8 gf8 af8 a8 |
  \break
  b1~ | b2 e,8 gs4 b16 cs16 | bf1 | r2 r4 \tuplet 3/2 { a16 b16 a16 } g8 |

  \sect "A3"
  
  gs1~ | gs2 gs2 | gs4 as8 b8 as4 gs8 g8~ | g2 r4 gf8 af8 |
  \break
  f1~ | f2 f2 | f4 g8 af8 g4 f8 g8 | e2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/bass-intro-with-kicks.ily"

\include "../Include/refrain.ily"
