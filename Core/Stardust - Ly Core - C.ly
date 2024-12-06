%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Star Dust (Stardust)"
  subtitle = \instrument
  poet = "Mitchell Parish"
  composer = "Hoagy Carmichael"
  copyright = "© 1929 Mills Music Inc."
}

verseLyrics = \lyricmode {
  And now the pur -- ple dusk of twi -- light time
  steals a -- cross the mea -- dows of my heart.
  High up in the sky the lit -- tle stars climb,
  Always re -- mind -- ing me that we're a -- part.
  You wan -- dered down the lane and far a -- way,
  Leav -- ing be a song that will not die.
  Love is now the star dust of yes -- ter -- day.
  The mu -- sic of the years gone by.
}

verseChords = \chordmode {
  c1:maj7 f1:9.11+ e1:7.9- a1:7
  d2:m7 g2:7 e2:m7 a2:m7 fs2:m7 b2:7 d2:m7 g2:7

  c1:maj7 f1:9.11+ e1:7.9- a1:7
  d2:m7 g2:7 e2:m7 a2:m7 d2:m7 g2:7 c2:maj7
}

verseKey = c

verseMelody = \relative f' {
  \time 4/4
  \key \verseKey \major
  \clef \whatClef
  \tempo "Medium Ballad" 4 = 124

  \xTextMark \markup{ "Verse" }
  
  r8 c'8 e8 c8 d8 b8 c8 a8 | b8 a8 g2. | f8 e8 ds8 e8 c'8 b8 gs8 e8 | cs1 |
  \break
  r4 d8 f8 a8 d,8 f8 a8 | \tuplet 3/2 { g4 e4 g4 } c2 | b4 b,8 ds8 a'8 b,8 d8 a'8 | g4 g4 g2 |
  \break
  r8 c8 e8 c8 d8 b8 c8 a8 | b8 a8 g2. | f8 e8 ds8 e8 c'8 b8 gs8 e8 | cs1 |
  \break
  r4 d8 f8 a8 d,8 f8 a8 | \tuplet 3/2 { g4 e4 g4 } c2 | r8 g8 a8 f8 g8 e8 f8 d8 | \partial 2 c2 

  \bar "||"

  \xPageBreak
}

refrainLyrics = \lyricmode {
  Some -- times I won -- der why I spend the lone -- ly night
  dream -- ing of a song.
  The mel -- o -- dy haunts my rev -- er -- ie,
  And I am once a -- gain with you,
  When our love was new, and each kiss an in -- spir -- a tion, __
  But that was long a -- go, 
  now my con -- so -- la -- tion is in the star dust of a song,
  Be -- side a gar -- den wall, when stars are bright,
  you are in my arms.
  The night -- in -- gale tells his fair -- y tale
  of par -- a -- dise where ros -- es grew.
  Though I dream in vain, __
  in my heart it will re -- main: My star dust mel -- o -- dy,
  the mem -- o -- ry of love's re -- frain.
}

refrainChords = \chordmode {
  s2

  f1:maj7 f1:maj7 f1:m7+ bf1:7
  c1:maj7 e2:m7 a2:7 d2.:m7 a4:7 d1:m7
  g1:7 d2:m7 g2:7 c2:maj7 d4:m7 ds4:dim7 e2:m7 a2:7
  d1:7 a2:m7 d2:7 g2:7 d2:m7 g2:7 c2:7

  f1:maj7 f1:maj7 f1:m7+ bf1:7
  c1:maj7 e2:m7 a2:7 d2.:m7 a4:7 d1:m7
  f1:maj7 bf1:7 c1:maj7 e2:m7 ef2:dim7 d1:m7 g1:7 c1:6
  \chordOpenParen{ g2:m7 }
  \chordCloseParen{ c2:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Ballad" 4 = 124

  \xTextMark \markup{ "Refrain" }
  \partial 2 r8 b8 c8 cs8 |
  \bar "$"

  \xTextMark \markup{ \bold \box "A1" }
  
  d4 c4 a4 f4 | d4 f4 a4 e'4 | e1 | d8 c8 af8 f8 d4. d'8 |
  \break
  c4 g4 c2 | b8 e8 b8 g8 e2 | r8 a8 c8 a8 f8 g8 e8 f8 | d2~ d8 e4 d8 |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  g4 g4 g2 | r8 d4 e8 g8 d8 ds8 g8 | e2 a2~ | a2. e'4 |
  \break
  e8 d8 c8 a8 e4 fs4 | b8 d,8 df8 c8~ c8 a'4 d,8 | g4 g4 a8 d8 d,8 a'8 | g2. c4 |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  d4 c4 a4 f4 | d4 f4 a4 e'4 | e1 | d8 c8 af8 f8 d4. d'8 |
  \break
  c4 g4 c2 | b8 e8 b8 g8 e2 | r8 a8 c8 a8 f8 g8 e8 f8 | d2~ d8 e4 d8 |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "C" }
  
  g4 gf4 f2~ | f2. c8 d8 | e4 g4 c4 e4 | b2. c4 |
  \break
  d8 c8 a8 f8 a2~ | a8 g8 a8 f8 g8 e8 f8 d8 | c1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/verse.ily"

\include "../Include/refrain.ily"
