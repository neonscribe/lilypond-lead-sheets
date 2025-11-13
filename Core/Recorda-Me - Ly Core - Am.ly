%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Recorda-Me"
  subtitle = \instrument
  poet = ""
  composer = "Joe Henderson"
  copyright = \markup \small { \now " " "© 1963 Blue Horizon Music, Inc." }
}

bossaRhythm = ##t

refrainChords = \chordmode {
  s1
  
  a1:m7 a1:m7 a1:m7 a1:m7
  c1:m7 c1:m7 c1:m7 c2:m7 f2:m7

  bf1:maj7 bf2:m7 ef2:7 af1:maj7 af2:m7 df2:7
  gf1:maj7 g2:m7 c2:7 f2.:maj7 e4*5:7.9+
}

refrainKey = a

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium-Fast Bossa [Joe Henderson 1963]" 4 = 182

  r4 r8 e8 b'8 c8 e,8 c8 |

  \sectNoBreak "A"
  
  fs2 r8 g8 a8 b8 | b4 a8 b8~ b8 c8 e,8 c8 |
  fs8 g4 a8~ a8 b4 b8~ | b8 a8 b8 a8 d8 ef8 g,8 ef8 |
  \break
  a2 r8 bf8 c8 d8 | d4 c8 d8~ d8 ef8 g,8 ef8 |
  a8 bf4 c8~ c8 d4 d8-. | r4 r8 c8 d4 c8 f,8~ |
  
  \sect "B"
  
  f1 | r8 ef8 f8 c'8~ c4 bf8 g8 | ef2~ ef8 d8 ef8 bf'8~ | bf2 af4-. f8 df8~ |
  \break
  df1 | r4 a'2 r8 g8 | c,4. c8~ c8 c8 g'4~-> |
  \override Parentheses.font-size = #5
  g4. \startParenthesis \parenthesize e8 b'8 c8 e,8 \endParenthesis \parenthesize c8 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup{ "Play head twice before and twice after solos." }
