%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:51.226002Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Song for My Father (with Lyrics)"
headerSubtitle = \subtitle
headerPoet = "Ellen May Shashoyan"
headerComposer = "Horace Silver"
headerCopyright = "© 1964 Ecaroh Music, Inc."

bossaRhythm = ##t
leadingEighth = ##t

refrainLyrics = \lyricmode {
If there was ev -- er a man __
who was gen -- er -- ous, gra -- cious and good __
that was my dad __
the man. __
A hu -- man be -- ing so true __
he could live like a king __
'cause he knew __
the real plea -- sure __
in life. __
To be de -- vo -- ted to __
and al -- ways stand by me __
so I'd be un -- a -- fraid __ and free. __
}

refrainChords = \chordmode {
  s4.

  f1:m9 f1:m9 ef1:9 ef1:9
  df1:9 c4:7 r2. f1:m9

  f1:m9

  f1:m9 f1:m9 ef1:9 ef1:9
  df1:9 c4:7 r2. f1:m9

  f1:m9

  ef1:m9 ef1:m9 f1:m9 f1:9
  ef2:9 df2:9 c4:7 r2. f1:m9 f1:m9
}

refrainKey = f

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempoFour "Medium Bossa [Horace Silver 1965]" 126

  \partial 4. c8-. f8-. af8-. |
  \bar "||"

  \sectNoBreak "A1"

  c8 bf8 af8-. bf8~ bf8 af8 f8-. af8~ |
  af8 f8 ef8-. f8~ f8 ef8 c8-. ef8~ |
  ef1~ | ef2. g,8 gf8 |

  f8-. df'8~ df2. | r2 f4. g8~ | g1~ | g2 r8 c,8-. f8-. af8-. |

  \sect "A2"

  c8 bf8 af8-. bf8~ bf8 af8 f8-. af8~ |
  af8 f8 ef8-. f8~ f8 ef8 c8-. ef8~ |
  ef1~ | ef2. g,8 gf8 |

  f8-. df'8~ df2. | r2 f4. g8~ | g1~ | g2 r8 ef8-. ef8-. ef8-. |


  \sect "B"

  ef8 df8 r8 f8~ f2~ | f2 r8 f8-. f8-. f8-. |
  f8 ef8 r8 g8~ g2~ | g2 r8 ef8-. ef8-. ef8-. |
  \break
  ef8 df8 r8 f8~ f2 | r2 af4. bf8~ |
  bf1~ | bf2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\include "../Include/refrain.ily"
