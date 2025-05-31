%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 18) #}
)

\header {
  title = "At Sundown"
  subtitle = \instrument
  poet = ""
  composer = "Walter Donaldson"
  copyright = \markup \small "© 1927 Leo Feist, Inc."
}

refrainLyrics = \lyricmode {
  Ev -- ry lit -- tle breeze is sigh -- ing of love un -- dy -- ing at sun -- down.
  Ev' -- ry lit --  tle bird is rest -- ing and feath -- er nest -- ing at sun -- down.
  Each lit -- tle rose -- bud is sleep -- ing, while shad -- ows, are creep -- ing.
  In a lit -- tle cot -- tage coz -- y the world seems ros -- y at sun -- down.
  Where a lov -- ing smile will greet me and al -- ways meet me at sun -- down
  I seem to sigh, I'm in heav -- en, when night is fall -- ing and love is call -- ing me home.
}

refrainJoelChords = \chordmode {
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

refrainHLChords = \chordmode {
  s2

  g1:m7 c1:7 f2:6 bf2:7 a2:m7 d2:7
  g1:m7 c1:7 f1:6 f2:6 ef2:7
  d1:7 d1:7 g1:7 g1:7
  c1:7 c2:7 c2:7.5+ f1:6 f2:6 d2:7

  g1:m7 c1:7 f2:6 bf2:7 a2:m7 d2:7
  g1:m7 c1:7 f1:6 f2:6 ef2:7
  d1:7 d1:7 g1:7 g1:7
  g1:m7 c1:7 f1:6
  \chordOpenParen{ a2:m7 }
  \chordCloseParen{ d2:7 }
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

refrainChords = #(if (and (defined? 'useJoelChords) useJoelChords)
		  refrainJoelChords
		  refrainHLChords)

refrainKey = f

refrainMelody = \relative f'' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Up [Artie Shaw 1939]" 4 = 176

  \partial 2 c8 b8 c8 cs8 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  d4 bf8 bf8~ bf8 a8 a4 | a4 g8 g8~ g8 e8 g4 | f2 d2~ | d2 c'8 b8 c8 cs8 |
  \break
  d4 bf8 bf8~ bf8 a8 a4 | a4 g8 g8~ g8 e8 g4 | f2 d2~ | d2 r2 |
  
  \sect "B"
  
  d2 fs4 a4 | c2 b4 c4 | e2 b2~ | b2 e2 |
  \break
  d2 e,2~ | e2 e'2 | d2 a2~ | a2 c8 b8 c8 cs8 |
  
  \sect "A2"
  
  d4 bf8 bf8~ bf8 a8 a4 | a4 g8 g8~ g8 e8 g4 | f2 d2~ | d2 c'8 b8 c8 cs8 |
  \break
  d4 bf8 bf8~ bf8 a8 a4 | a4 g8 g8~ g8 e8 g4 | f2 d2~ | d2 r2 |
  
  \sect "C"

  d2 fs4 a4 | c2 b4 c4 | e2 b2~ | b2 e2 |
  \break
  d4 bf8 bf8~ bf8 a8 a4 | a4 g8 g8~ g8 e8 g4 | f1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
