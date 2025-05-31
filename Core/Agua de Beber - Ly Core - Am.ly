%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Água de Beber (Water to Drink)"
  subtitle = \instrument
  poet = "Vinicius de Moraes"
  composer = "Antônio Carlos Jobim"
  copyright = \markup \small "© 1963 Jobim Music"
}

bossaRhythm = ##t

refrainChords = \chordmode {
  a1:m7 b2:7.9+ e2:7.5+ a1:m7
  b2:7.9+ e2:7.5+ a1:m7 f1:maj7
  a1:m7
  
  e1:m7.5-
  
  a1:m7
  
  b1:7.9- e1:7.5+ a1:m7 a1:m7
  d1:m7 g1:7 c1:maj7 c1:maj7
  b2:7 bf2:7.5- a2:m7 af2:dim7 c2:9/g c4.:7.9+/g b8*9:7.9+/fs
  b1:7.9- e1:sus9 a1:m7 a1:m7
  
  d1:7 d1:m7 a1:m7 a1:m7
  d1:7 d1:m7 a1:m7 e1:m7.5-
  
  a1:m7 b2:7.9+ e2:7.5+ a1:m7
  b2:7.9+ e2:7.5+ a1:m7 f1:maj7
  a1:m7 a1:m7  
}

refrainKey = a

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium Bossa [Astrud Gilberto 1965]" 4 = 144

  \xTextMark \markup{ \bold \box "Intro" }
  
  \repeat volta 2 {
  c'8 a8 g8 a8 r4 r8 c8 | ds16( e16 ds8) d8 ef8 d4 c4 |
  c8 a8 g8 a8 r4 r8 c8 | ds16( e16 ds8) d8 ef8 d4 c4 |
  \break
  c8 a8 g8 a8 r2 | a8 g8 a2. | a8 g8 a2. |
  \alternative { \volta 1 {
  <a' e d bf>8 g8 <a e d bf>2. |
  } \volta 2 {
  r4 a,8 c8~ c8 e4 ds8~ |
  } } }
  
  \sect "A"
  \sect "Refrain"
  
  ds4. e8~ e4. c8~ | c2~ c8 a4 c8~ | c8 a4.~ a2 | r4 a8 c8~ c8 e4 g8~ |
  \break
  g2~ g8 a4 e8~ | e2~ e8 d4 e8~ | e1 | r4 a,8 c8~ c8 e4 ds8~ |
  \break
  ds4. e8~ e4. c8~ | c2~ c8 d4 c8~ |

  <<
    { \voiceOne
      c8 a4.~ a2 | b2\rest b4\rest b8\rest c8 |
    }
    \new Voice
    { \voiceTwo
      \magnifyMusic 0.63 {
      s2. g,8 fs8~ | fs1 | }
    }
  >>
  \oneVoice

  \break
  c''8 c4 c8~ c8 d8 c4 | b4. fs8~ fs8 a4 c8~ | c8 b8 a2. | r4 a8 a8 c8 e8 d4~ |
  
  \sect "B"
  
  d1~ | d4 e8 d8 c8 a8 c4~ | c8 a8 a8 a8 r2 | r4 a8 a8 c8 e8 d4~ |
  \break
  d1~ | d4 e8 d8 c8 a8 c4~ | c8 a8 a8 a8 r2 | <a' e d bf>8 g8 <a e d bf>2. |
  
  \sect "C"
  
  c,8 a8 g8 a8 r4 r8 c8 | ds16( e16 ds8) d8 ef8 d4 c4 |
  c8 a8 g8 a8 r4 r8 c8 | ds16( e16 ds8) d8 ef8 d4 c4 |
  \break
  c8 a8 g8 a8 r2 | a8 g8 a2. | a8 g8 a2. |
  r4
  \override Parentheses.font-size = #5
  \startParenthesis \parenthesize
  a8 c8~ c8 e4
  \endParenthesis \parenthesize ds8\laissezVibrer |  

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
