%% -*- Mode: LilyPond -*-

%{

"Customizer": { "toggles": [ "noIntro" ],
		"choices": { "alternateChords": [ "hlrb", "hazeltine" ] } }

%}

\version "2.26.0"

songID = "2026-06-01T22:16:55.465785Z"

\include "../Include/lead-sheets.ily"

headerTitle = "The Thrill Is Gone"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Ray Henderson/Lew Brown"
headerCopyright = "© 1931 DeSylva, Brown & Henderson, Inc."

verseLyrics = \lyricmode {
  I'm in your arms __ and you are kiss -- ing me, __
  but there seems to be __ some -- thing miss -- ing __ in your kiss -- ing. __
  The love we knew __ is just a mem -- o -- ry, __
  It's turned in -- to a com -- e -- dy. __
}

verseChords = \chordmode {
  d4 a2:7.5+

  d1 d1 b1:7 b1:7
  e2:m e:m7.5- a1:7 d1 d2 a2:7.9- d1 d2 a2:7.5+
  d1 d1 b1:7 b1:7
  e1:m7.5- a1:7 e1:m7.5- a2.:7
}

verseKey = d

verseMelody = \relative f' {
  \time 4/4
  \key \verseKey \major
  \clef \whatClef
  \tempo "Rubato"

  \sectNoBarNoBreak "Verse"

  \partial 2. a4 b4 a4 |
  \bar "||"

  cs1~ | cs4 a4 b4 a4 | c4 c4 c2~ | c2 b4 a4 |
  \xBreak
  a4 g4 bf2~ | bf2 a4 g4 | g4 fs2.~ | fs2 a4 g4 | g4 fs2.~ | fs4 a4 b4 a4 |
  \xBreak
  cs1~ | cs4 a4 b4 a4 | c4 c4 c2~ | c4 g4 a4 g4 |
  \xBreak
  bf1~ | bf4 e,4 fs4 e4 | g1~ |

  \partial 2. g2. |
  \bar "||"
  
  \xxPageBreak
}

refrainLyrics = \lyricmode {
  The thrill is gone! __
  The thrill is gone! __
  I can see it in your eyes,
  I can hear it in your sighs,
  feel your touch and re -- al -- ize
  the thrill is gone.

  The nights are cold __
  for love is old. __
  Love was grand when love was new,
  birds were sing -- ing, skies were blue,
  now it don't ap -- peal to you.
  The thrill is gone.

  This is the end,
  so why pre -- tend and let it lin -- ger on. __
  The thrill is gone! __
  
  (The)
}

refrainHLChords = \chordmode {
  s4

  d1:m7 d1:m7 g1:7 g1:7
  g2:m7 c2:7 f1:maj7 e2:m7.5- a2:7.5+.9- d1:m7
  e2:m7.5- a2:7.9- d2:m7 bf2:maj7 g1:m7 a1:7.5+

  d1:m7 d1:m7 g1:7 g1:7
  g2:m7 c2:7 f1:maj7 e2:m7.5- a2:7.5+.9- d1:m7
  e2:m7.5- a2:7.9- d2:m7 bf2:maj7 g1:m7 a1:7.5+.9-

  d2:m d2:m7/c b1:m7.5- bf1:9.11+ d1:m7/a
  g2:m7 g2:m7/f ef1:9.11+ e1:m7.5- a1:7.9- d1:m

  \chordOpenParen{ e2:m7.5- }
  \chordCloseParen{ a2:7.9- }
}

refrainHazeltineChords = \chordmode {
  s4

  d2:m7 b2:7.9+.5- e2:13.9- a2:7.9+.5+ d2:m7 af2:13.5- g2:sus7 af2:dim7
  g2:m7 c2:7 f2:maj7 fs4:m7 b4:7 bf2:6 a2:13.9- ef2:7.11+ d4:m7 c4:m11
  b4:m11 e4:13 e4:m7 a4:7.5- af2:13.5- g4:7 fs4:dim7
  f2:m7 bf2:13.5- e2:m11 ef2:maj7.11+

  d2:m7 b2:7.9+.5- e2:13.9- a2:7.9+.5+ d2:m7 af2:13.5- g2:sus7 af2:dim7
  g2:m7 c2:7 f2:maj7 fs4:m7 b4:7 bf2:6 a2:13.9- ef2:7.11+ d4:m7 c4:m11
  b4:m11 e4:13 e4:m7 a4:7.5- af2:13.5- g4:7 fs4:dim7
  g2:m7 a2:m7 bf2:m7 ef2:13.5-

  f2.:maj7/c cs4:m7 c2:m11 f2:7.9-.5- b2:m11 bf2:13.5- a2:m13 af2:13.5+
  g2:m11 gf2:13.5- fs2:maj7.5+ bf2:maj7.5+ e2:m7.5- bf2:maj7.11+
  e2:m7.5-/a a2:7.9-.5- af2:13.5- g4:m7 f4:7

  \chordOpenParen{ e2:m7.5- }
  \chordCloseParen{ ef2:maj7 }
}

alternateChords = #(if (and (defined? 'alternateChords) alternateChords)
		    alternateChords
		    "hlrb")

refrainChords = #(let ((v (assoc alternateChords
			   (list
			    (cons "hazeltine" refrainHazeltineChords)
			    (cons "hlrb" refrainHLChords)
			  ))))
		  (if v (cdr v) #{ \chordmode { } #}))

refrainKey = d
isMinor = ##t

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempoFour "Ballad [Chet Baker 1954]" 60

  \partial 4 a4 |

  \sectNoBarNoBreak "A1"
  
  \bar ".|:-||"
  \repeat volta 2 {

  a4 d,4 f2~ | f2. a4 | a4 d,4 f2~ | f2. r4 |
  a4 a4 d4 d4 | c4 c4 a2 | g4 g4 bf4 bf4 | a4 a4 f2 |
  e4 e4 g4 g4 | f4 f4 d4 d4 | bf'2. e,4 | a2. a4 |

  \sect "A2"

  a4 d,4 f2~ | f2. a4 | a4 d,4 f2~ | f2. r4 |
  a4 a4 d4 d4 | c4 c4 a2 | g4 g4 bf4 bf4 | a4 a4 f2 |
  e4 e4 g4 g4 | f4 f4 d4 d4 | bf'2. a4 | bf2. a4 |

  \sect "B"

  f'2. e4 | f2. e4 | e2. d4 | e2. d4 |
  c2. bf4 | a2. g4 | a1~ | a4 e4 g4 f4 | d1~ | d2 r4
  \override Parentheses.font-size = #5
  \parenthesize a'4
  |
  }
}

\include "../Include/verserefrain.ily"
