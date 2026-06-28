%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:26.000532Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Basin Street Blues"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Spencer Williams"
headerCopyright = "© 1928 - 1933 by Mayfair Music Corp., 1619 Broadway, New York, N.Y."

verseProblematicLyrics = \lyricmode {
  Won't -- cha come a -- long with me,
  _ _ _ _ _
  To the Mis -- sis -- sip -- pi?
  _ _ _ _ _ _
  We'll take the boat to the land of dreams, __
  Steam down the riv -- er down __ to New __ Or -- leans. __
  The band's there to meet us,
  _ _ _ _ _
  Old friends to greet us,
  _ _ _ _ _
  Where all the light and the dark folks meet, __
  Heav -- en on earth, they call __ it Bas -- in Street. __
}

verseLessRaciallyAwkwardLyrics = \lyricmode {
  Won't -- cha come a -- long with me,
  \repeat unfold 5 { \skip 1 }
  To the Mis -- sis -- sip -- pi?
  \repeat unfold 6 { \skip 1 }
  We'll take the boat to the land of dreams, __
  Steam down the riv -- er down __ to New __ Or -- leans. __
  The band's there to meet us,
  \repeat unfold 5 { \skip 1 }
  Old friends to greet us,
  \repeat unfold 5 { \skip 1 }
  We'll see the place where the folks all meet, __
  Heav -- en on earth, they call __ it Bas -- in Street. __
}

refrainLyrics = \lyricmode {
  \verseLessRaciallyAwkwardLyrics

  Ba -- sin Street __ is the street __ where the e -- lite __ al -- ways meet, __
  In New Or -- leans, __ Land of dreams, __
  You'll nev -- er know how nice it seems or just how much it real -- ly means,
  Glad to be, __ Yes, sir -- ree, __ where wel -- come's free, __
  Dear to me, __ Where I can lose __ my Ba -- sin Street blues. __
  my Ba -- sin Street blues. __
}

refrainChords = \chordmode {
  \chordInsideParens{ f4:7 }
  bf4 c4:m7 cs8:dim7 bf4./d bf4 c4:m7 cs8:dim7 bf4./d
  bf4/d df4:m6 c8:m7 f4.:9 bf4/d df4:m6 c8:m7 f4.:9
  bf2 bf2:7/af ef2:6/g ef2:m6/gf bf4/f r2. r2. f4:7

  bf4 c4:m7 cs8:dim7 bf4./d bf4 c4:m7 cs8:dim7 bf4./d
  bf4/d df4:m6 c8:m7 f4.:9 bf4/d df4:m6 c8:m7 f4.:9
  bf2 bf2:7/af ef2:6/g ef2:m6/gf bf4/f r2. r1

  bf1 d1:7 g1:9 g1:9
  c1:9 f1:13 bf2/d cs2:dim7 c2:m7 f2:9
  bf1 d1:7 g1:9 af2:7 g2:7
  c1:9 f1:13
  bf4 bf4:7/d ef4:6 e4:dim7
  bf4/f b4:dim7 c4:m7 f4:7

  f1:13
  bf4 bf4:7/d ef4:6 e4:dim7
  bf4/f f8:7 bf8:6 s2
}

refrainKey = bf

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef

  \tempoFour "Medium Swing [Louis Armstrong 1929]" 122

  \partial 4 f8 f8 |

  \sectNoBreak "Verse"

  d8 d8 ef4 e8 f4. | d8 d8 ef4 e8 f4. |
  bf8 bf8 af8 g8 f8 g4. | bf8 bf8 af8 g8 f8 g4. |
  f8 bf4 f8 bf4 f8 f8 | bf4 bf8 c8~ c2 |
  bf4 af8 g8 f8 g8 \tuplet 3/2 { d8( ef8) e8 } | f8( ef8) d8 bf8~ bf4 f'4 |
  d4 ef8 ef8 e8 f4. | d4 ef8 ef8 e8 f4. |
  bf4 af8 g8 f8 g4. | bf4 af8 g8 f8 g4. |
  f8 bf4 f8 bf4 f8 f8 | bf4 bf8 bf8~ bf2 |
  bf4 af8 g8 f8 g8 \tuplet 3/2 { d8( ef8) e8 } |
  f8( ef8) d8 bf8~ bf2 |
  \bar "||"

  \sectPageBreak "Refrain"

  d8 d4 d8~ d2 | d8 d4 d8~ d4 r8 d8 |
  d8 a'4 d,8~ d2 |
  a'8 a4 g8~ g4 d4 |
  d8 d4 d8~ d2 | d8 f4 d8~ d4 f4 |
  c'8 c8 bf8 bf8 a8 a8 g8 g8 | bf8 bf8 a8 a8 g8 g8 f4 |
  d8 d4 d8~ d2 | a'8 a4 fs8~ fs4 d4 |
  d8 a'4 g8~ g2 |
  ef 8 ef4 d8~ d4 d4 |
  d8 a'4 g8~ g2 \textToCodaLastTime |
  r4 d4 f8 d8 c8 bf8~ | bf1 | r1 |
  \bar "||-|."

  \textCodaBreak

  r4 d4 f8 d8 c8 bf8~ | bf1 | f'4 a8 bf8~ bf2\fermata |

  \bar "|."
}

\include "../Include/refrainonly.ily"
