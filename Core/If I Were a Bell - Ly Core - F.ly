%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:38.655384Z"

\include "../Include/lead-sheets.ily"

\header {
  title = "If I Were a Bell"
  subtitle = \subtitle
  poet = ""
  composer = "Frank Loesser"
  copyright = \markup \small { \now " " "© 1950 Frank Music Corp." }
}

refrainLyrics = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _
  Ask me how do I feel, ask me now that we're co -- zy and cling -- ing. __
  Well sir, all I can say is if I were a bell I'd be ring -- ing. __
  From the mo -- ment we kissed to -- night, __
  that's the way I've just got to be -- have, __
  boy, if I were a lamp I'd light, __
  or if I were a ban -- ner I'd wave. __
  Ask me how do I feel, lit -- tle me with my qui -- et up -- bring -- ing. __
  Well sir, all I can say is if I were a gate I'd be swing -- ing. __
  And if I were a watch I'd start pop -- pin' my spring, __
  or if I were a bell I'd go ding, dong, ding, dong, ding.
}

refrainChords = \chordmode {
  r1 s1 s1 s1 s1 s1 s1 s1

  g1:7 g2:m7 c2:7 f1:maj7 f1:maj7
  a1:m7.5- d1:7 g1:7 g2:m7 c2:7

  f2:maj7 f2:7 bf2:maj c2:7 f1:maj7 e2:m7.5- a2:7
  d2:m7 d2:m7/c b2:m7.5- e2:7 a2:maj7 bf2:7.11+ a2:maj7 d2:7

  g1:7 g2:m7 c2:7 f1:maj7 f1:maj7
  a1:m7.5- d1:7 g1:7 g2:m7 c2:7

  f2:maj7 f2:7/a bf2:maj b2:dim7 f2:maj7/c bf2:7 a2:m7.5- d2:7
  g1:m7 c1:7 f1:maj7

  \chordOpenParen{ a2:m7 }
  \chordCloseParen{ d2:7 }
}

refrainKey = f

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium-Fast Swing [Miles Davis 1956]" 180

  \sectNoBarNoBreak "Intro"

  \ambitusOff
	a'2 f2 | g2 c,2 | c2 g'2 | a2 f2 | a2 f2 | g2 c,2 | c2 g'2 |
  \ambitusOn
  <<
    { \voiceOne
	s2 a,4 a4 |
    }
    { \xVoiceTwo {
      a2 f2 |
    }
    }
  >>

  \bar "||-||"
  \break


  \sect "A1"

  a8 f8 f8 f8~ f8 a4 a8 | a8 f8 g4 a8 f8 g4 | a4. c,8~ c2~ | c4 r4 c'4 c4 |
  \break
  c8 a8 a8 a8~ a8 c8 c8 c8~ | c8 a8 a8 a8~ a8 c8 a4 | d4. g,8~ g2~ | g2 r8 a4 g8 |

  \sect "B"

  f8 f8 f4 f4 f8 bf8~ | bf2 r8 a4 g8 | f8 f8 f4 f8 f8 f8 c'8~ | c2 r8 a4 g8 |
  \break
  f8 f8 f4 f4 f8 d'8~ | d2 r8 c8 d8 e8~ | e8 cs8 d8 e8~ e8 cs8 d8 e8~ | e2 a,4 a4 |

  \sectPageBreak "A2"

  a8 f8 f8 f8~ f8 a4 a8 | a8 f8 g4 a8 f8 g4 | a4. c,8~ c2~ | c4 r4 c'4 c4 |
  \break
  c8 a8 a8 a8~ a8 c8 c8 c8~ | c8 a8 a8 a8~ a8 c8 a4 | d4. g,8~ g2~ | g2 r8 a4 g8 |

  \sect "C"

  f8 f8 f4 f4 f4 | bf2 d8 b8 d4 | c1~ | c4 r4 a4 a4 |
  \break
  a8 f8 g8 a8~ a8 f8 f4 | e'4 c4 a4 d,4 | f4 r4 r2 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\include "../Include/refrain.ily"
