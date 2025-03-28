%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Killer Joe"
  subtitle = \instrument
  poet = ""
  composer = "Benny Golson"
  copyright = \markup \small "© 1959 Ibbob Music, Inc."
}

introKey = c

introChords = \chordmode {
  c1:13 bf1:13 c1:13 bf1:13
}

introKicksOverTime = \relative f' {
  c4. c8 r2 | c4. c8 r2 | c4. c8 r2 | c4. c8 r2 |
}
  

bassIntro = \relative f' {
  \time 4/4
  \key \introKey \major
  \clef bass
  \tempo "Bolero" 4 = 110

  \xTextMark \markup{ \bold \box "Intro/Outro" }
  
  c,4 g4 c4 b4 | bf4 f4 bf4 b4 | c4 g4 c4 b4 | bf4 f4 bf4 b4 |
  \bar "||"
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  c1:7 bf1:7 c1:7 bf1:7
  c1:7 bf1:7 c1:7 bf1:7

  e1:m7.5- a1:7.9- ef1:m7 ef2:m7/af af2:7.9-
  a1:13 ef2:m7/af af2:7 e1:m7 a1:7.9-

  c1:7 bf1:7 c1:7 bf1:7
  c1:7 bf1:7 c1:7 bf1:7
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef

  \xTextMark \markup{ "Refrain" \bold \box "A1, A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  r2 f'4-. e8 g8~ | g1 | r2 e4-. c8 bf8~ | bf1 |
  \break
  r2 f'4-. e8 g8~ | g2. e8 g8~ | g1~ | g1 |
  }
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  g,1~ | g2 a2 | bf1~ | bf2 c2 |
  \break
  cs1~ | cs2 ef2 | e1~ | e1 |

  \sect "A3"
  
  r2 f4-. e8 g8~ | g1 | r2 e4-. c8 bf8~ | bf1 |
  \break
  r2 f'4-. e8 g8~ | g2. e8 g8~ | g1~ | g1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/bass-intro-with-kicks.ily"

\include "../Include/refrain.ily"

\include "../Include/bass-intro-with-kicks.ily"
