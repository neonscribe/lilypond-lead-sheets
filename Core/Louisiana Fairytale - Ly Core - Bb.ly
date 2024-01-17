%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Louisiana Fairytale"
  subtitle = \instrument
  poet = "Mitchell Parish and J. Fred Coots"
  composer = "Haven Gillespie"
  copyright = "© 1935 Mills Music, Inc."
}

refrainLyrics = \lyricmode {
  The dew is hang -- ing dia -- monds in the clo -- ver,
  The moon is list -- 'nin' to the night -- in' -- gale,
  And while we're lost in dreams the world a -- round us seems
  just like a Lou -- si -- an -- a fair -- y -- tale.
  
  The breeze is soft -- ly sing -- ing thru the wil -- lows,
  As hand in hand we stroll a -- long the trail.
  And love is at its height en -- chant -- ing us to -- night,
  just like a Lou -- si -- an -- a fair -- y -- tale.

  Is it real, this fas -- cin -- a -- tion?
  Or are my dreams hold -- ing you fast?
  Is it true we both feel the sen -- sa -- tion,
  Or could this be hea -- ven at last?

  Keep dream -- ing with your head up -- on my should -- er,
  And don't a -- wake un -- til the stars grow pale.
  The world is at our feet, the pic -- ture is com -- plete,
  just like a Lou -- si -- an -- a fair -- y -- tale.
}

refrainChords = \chordmode {
  s8
  
  bf1 bf1:7 ef1 ef1:m
  bf2 d2:7 g2:m g:dim7 bf2 f2:7 bf1

  bf1 bf1:7 ef1 ef1:m
  bf2 d2:7 g2:m g:dim7 bf2 f2:7 bf1

  ef1 ef1:m bf1 g1:7
  c1:7 c1:7 c1:7 f1:7

  bf1 bf1:7 ef1 ef1:m
  bf2 d2:7 g2:m g:dim7 bf2 f2:7 bf1
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Slow Swing" 4 = 115
  
  \partial 8 f8 |
  \bar "||"

  \mark \markup{ \box "A1" }
  
  d8 ef8 e8 f8 d'8 c8 bf8 a8 | af8 af8~ af2 r8 bf8 | c8 bf8 g8 bf8 c8 bf8 g8 bf8 | gf2. r8 c8 |
  \break
  d8 d8 d8 d8 c4. c8 | bf8 bf8 bf8 bf8 g4. gf8 | f8 d'8 f,8 e8 ef8 f8 a8 c8 | bf2. r8 f8 |
  
  \bar "||"
  \break

  \mark \markup{ \box "A2" }
  
  d8 ef8 e8 f8 d'8 c8 bf8 a8 | af8 af8~ af2 r8 bf8 | c8 bf8 g8 bf8 c8 bf8 g8 bf8 | gf2. r8 c8 |
  \break
  d8 d8 d8 d8 c4. c8 | bf8 bf8 bf8 bf8 g4. gf8 | f8 d'8 f,8 e8 ef8 f8 a8 c8 | bf2. r4 |
  
  \bar "||"
  \break

  \mark \markup{ \box "B" }
  
  g4. g8 d8 ef8 g8 bf8 | d4 d2~ d8 d8 | c8 c8 c4 \tuplet 3/2 { bf4 d,4 f4 } | a2. a8 a8 |
  \break
  g4. g8 e8 e8 g8 bf8 | d4 d2. | d8 d8 d8 d8~ d8 d8 c8 bf8 | c2. r8 f,8 |

  
  \bar "||"
  \break

  \mark \markup{ \box "A3" }

  d8 ef8 e8 f8 d'8 c8 bf8 a8 | af8 af8~ af2 r8 bf8 | c8 bf8 g8 bf8 c8 bf8 g8 bf8 | gf2. r8 c8 |
  \break
  d8 d8 d8 d8 c4. c8 | bf8 bf8 bf8 bf8 g4. gf8 | f8 d'8 f,8 e8 ef8 f8 a8 c8 | bf2. r4 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
