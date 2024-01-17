%% -*- Mode: LilyPond -*-

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 18) #}
)

\include "../Include/lead-sheets.ily"

\header {
  title = "At Sundown"
  subtitle = \instrument
  poet = ""
  composer = "Walter Donaldson"
  copyright = "© 1927 Leo Feist, Inc."
}

refrainLyrics = \lyricmode {
  Ev -- ry lit -- tle breeze is sigh -- ing of love un -- dy -- ing at sun -- down.
  Ev' -- ry lit --  tle bird is rest -- ing and feath -- er nest -- ing at sun -- down.
  Each lit -- tle rose -- bud is sleep -- ing, while shad -- ows, are creep -- ing.
  In a lit -- tle cot -- tage coz -- y the world seems ros -- y at sun -- down.
  Where a lov -- ing smile will greet me and al -- ways meet me at sun -- down
  I seem to sigh, I'm in heav -- en, when night is fall -- ing and love is call -- ing me home.
}

refrainiRealChords = \chordmode {
  s2

  g1:m7 c1:7 f1 f2 d2:7
  g1:m7 c1:7 f1 f2 a2:7
  d1:7 d1:7 g1:7 g1:7
  c1:7 c1:7 f1 f2 d2:7

  g1:m7 c1:7 f1 f2 d2:7
  g1:m7 c1:7 f1 f2 a2:7
  d1:7 d1:7 g1:7 g1:7
  c1:7 c1:7 f1 
  \chordOpenParen{ g2:m7 }
  \chordCloseParen{ c2:7 }
}

refrainFHChords = \chordmode {
  s2

  g1:m7 c1:7 f1 f2 fs2:dim7
  g1:m7 c1:7 f1 f4 f4:7 e4:7 ef4:7
  d1:7 d1:7 g1:7 g1:7
  c1:7 c2:7 c2:7.5+ f2 fs2:dim7 g4:m7 r2.

  g1:m7 c1:7 f1 f2 fs2:dim7
  g1:m7 c1:7 f1 f4 f4:7 e4:7 ef4:7
  d1:7 d1:7 g1:7 g1:7
  g1:m7 c1:7 f1
  \chordOpenParen{ g2:m7 }
  \chordCloseParen{ c2:7 }
}

refrainChords = \refrainiRealChords

refrainKey = f

refrainMelody = \relative f'' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Fast" 4 = 135

  \partial 2 c8 b8 c8 cs8 |
  \bar "||"

  \mark \markup{ \box "A1" }
  
  d4 bf8 bf8~ bf8 a8 a4 | a4 g8 g8~ g8 e8 g4 | f4. d8~ d2~ | d4 r4 c'8 b8 c8 cs8 |
  \break
  d4 bf8 bf8~ bf8 a8 a4 | a4 g8 g8~ g8 e8 g4 | f4. d8~ d2~ | d4 r4 r2 |
  
  \bar "||"
  \break

  \mark \markup{ \box "B" }
  
  d2 fs4 a4 | c2 b4 c4 | e4. b8~ b2~ | b2 e2 |
  \break
  d4. e,8~ e2~ | e2 e'2 | d4. a8~ a2~ | a4 r4 c8 b8 c8 cs8 |
  
  \bar "||"
  \break

  \mark \markup{ \box "A2" }
  
  d4 bf8 bf8~ bf8 a8 a4 | a4 g8 g8~ g8 e8 g4 | f4. d8~ d2~ | d4 r4 c'8 b8 c8 cs8 |
  \break
  d4 bf8 bf8~ bf8 a8 a4 | a4 g8 g8~ g8 e8 g4 | f4. d8~ d2~ | d4 r4 r2 |

  \bar "||"
  \break

  \mark \markup{ \box "C" }

  d2 fs4 a4 | c2 b4 c4 | e4. b8~ b2~ | b2 e2 |
  \break
  d4 bf8 bf8~ bf8 a8 a4 | a4 g8 g8~ g8 e8 g4 | f1~ | f2. r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
