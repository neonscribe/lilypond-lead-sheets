%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Sabor a Mí"
  subtitle = \instrument
  poet = "Mel Mitchell"
  composer = "Alvaro Carillo"
  copyright = \markup \small { \now " " "© 1959 Promontora Hispano Americana de Musica S.A." }
}

bossaRhythm = ##t

refrainChords = \chordmode {
  a2:m7 c2:m6 g2 e2:7.9- a2:m7 c2:dim7 g4 r2.
  
  a1:m7 c2:m a2:m7.5- g4:maj7 \chordSlash 2 g4/b bf4:dim7 r2.
  a1:m7 d2:7 d2:7.5+ g2 d2:7.5+ g8 r8*7

  a1:m7 c2:m a2:m7.5- g4:maj7 \chordSlash 2 g4/b bf4:dim7 r2.
  a1:m7 d1:7 g2 c2:m g4 \chordSlash 2 cs4:dim7
  
  d2:m7 g2:7 d2:m7 g4:7 g4:7.5+ c2 g2:7.5+ c1:6
  e2:m7 a2:7 e2:m7 a2:7 d2:7 a2:m7 d4:7 r2.
  
  a1:m7 c2:m a2:m7.5- g4:maj7 \chordSlash 2 g4/b bf4:dim7 r2.
  a1:m7 d1:7 g2 c2:7 g4 \chordSlash 2 \chordInsideParens{ cs4:dim7 }
}

refrainKey = g

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
  \tempo "Slow Rumba [Los Lobos 1978]" 4 = 88
  
  \sectStart "Intro"
  
  r1 | r1 | r1 | r4 b8 c8 d8. c16 b8 a8 |

  \sect "A1"
  
  b8 e,4 b'16 e,16 b'2~ | b4 a8 b8 c8. b16 a8 g8 | a8 d,4 a'8~ a2~ | a4 fs8 g8 a8 g8 fs8 e8 |
  \break
  g4 e8 fs8 g8 fs8 e8 d8 | fs4. d8 fs4. d8 | e1~ | e8 r8 b'8 c8 d8. c16 b8 a8 |
  
  \sect "A2"
  
  b8 e,4 b'16 e,16 b'2~ | b4 a8 b8 c8. b16 a8 g8 | a8 d,4 a'8~ a2~ | a4 fs8 g8 a8 g8 fs8 e8 |
  \break
  g4 e8 fs8 g8 fs8 e8 d8 | fs4. d8 b'4. b8 | g1~ | g2. a8 g8 |
  
  \sect "B"
  
  a4 f2 a8 g8 | a4 f2 b8 g8 | a8 g8 b8 g8 a8 g8 b8 g8 | a2. e8 fs8 |
  \break
  g4 a2 e8 fs8 | g4 b2 fs8 g8 | a8 b8 a8 b8 a8 b8 c8 b8 | a4 b8 c8 d8. c16 b8 a8 | 
  
  \sect "A3"

  b8 e,4 b'16 e,16 b'2~ | b4 a8 b8 c8. b16 a8 g8 | a8 d,4 a'8~ a2~ | a4 fs8 g8 a8 g8 fs8 e8 |
  \break
  g4 e8 fs8 g8 fs8 e8 d8 | fs4. b8 b4. b8 | g1~ | g2 r4
  \override Parentheses.font-size = #5
  \startParenthesis \parenthesize a8
  \endParenthesis \parenthesize g8 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
