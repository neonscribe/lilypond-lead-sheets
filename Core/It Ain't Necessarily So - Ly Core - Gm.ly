%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:39.679402Z"

\include "../Include/lead-sheets.ily"

headerTitle = "It Ain't Necessarily So"
headerSubtitle = \subtitle
headerPoet = "Ira Gershwin"
headerComposer = "George Gershwin"
headerCopyright = "© 1935 Gershwin Publishing Corporation"

refrainLeadingEighth = ##t

refrainLyrics = \lyricmode {
It ain't ne -- ces -- sar -- i -- ly so.
It ain't ne -- ces -- sar -- i -- ly so.
The things that you're lia -- ble to read in the Bi -- ble,
it ain't ne -- ces -- sar -- i -- ly so. __

Little

_ Yes Jo -- nah, he lived in the whale.
Oh Jo -- nah, he lived in the whale.
For he made his home in that fish -- 's ab -- do -- men.
Oh Jo -- nah, he lived in the whale.

Little _

It ain't ne -- ces -- sar -- i -- ly so.
It ain't ne -- ces -- sar -- i -- ly so.
They tell all the chil -- dren the de -- vil's a vil -- lain
but 'tain't ne -- ces -- sar -- i -- ly  so.

To get in -- to Hea -- ven don't snap for a se -- ven.
Live clean, don't have no fault!
Oh, I take that gos -- pel when -- ev -- er it's poss -- 'ble, but with a grain of salt.

Me -- thus -- lah lived nine hun -- dred years.
Me -- thus -- lah lived nine hun -- dred years.
But who calls that liv -- in' when no gal -- 'll give in to no man what's nine hun -- dred years?

I'm preach -- in' this ser -- mon to show it ain't ne -- ces -- sar -- i -- ly,
ain't ne -- ces -- sar -- i -- ly,
ain't ne -- ces -- sar -- i -- ly so!
}

refrainLyricsTwo = \lyricmode {
_ Da -- vid was small, but oh my.
Little Da -- vid was small, but oh my.
He fought big Go -- li -- ath who lay down and di -- eth.
Little Da -- vid was small, but oh _ _ my.

_ Mo -- ses was found in a stream.
Little Mo -- ses was found in a stream.
He float -- ed on wa -- ter, 'til old Pha -- raoh's daugh -- ter,
she fished him, she says, from that _ _ stream.
}

refrainChords = \chordmode {
  c8

  g2:m c2 g2:m c2 g2:m c2 g1:m
  c2:7 df2:7 c2:7 df2:7 a2:7 d2:7

  g2:m c2:7 ef2:7 c2/d

  g2:m g2:m7

  g2:m c2 g2:m c2 g2:m c2 g1:m
  c2:7 df2:7 c2:7 df2:7 a2:7 d2:7 g2:m g2:m7

  g2:m c2 g2:m c2 g2:m c2 g1:m
  c2:7 df2:7 c2:7 df2:7 a2:7 d2:7

  g2:m c2:7 ef2:7 c2/d

  g2:m g2:m7

  g2:m c2 g2:m c2 g2:m c2 g1:m
  c2:7 df2:7 c2:7 df2:7 a2:7 d2:7 g2:m g2:m7

  g2:m c2 g2:m c2 g2:m c2 g1:m
  c2:7 df2:7 c2:7 df2:7 a2:7 d2:7 g1:m

  df2:7 af2 af1 a2:m7 d2:7 g2.:6 g4:7
  c1:7 f2 f2:6 a2:sus7 a2:7.5- bf1:7.5+

  g2:m c2 g2:m c2 g2:m c2 g1:m
  c2:7 df2:7 c2:7 df2:7 a2:7 d2:7 g2:m c2:7 fs2:7 ef2:7

  c1:m6 g2 d2:7 c2 b2:7 e2:m c2:m6 g2 d2:9.5+ g1
}

refrainKey = g
isMinor = ##t

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempoFour "Medium [Lena Horne 1959]" 118

  \partial 8 g8 |
  
  \sectNoBreak "Verse 1&2"

  \bar ".|:"
  \repeat volta 2 {
  \tuplet 3/2 { d'4 df4 g,4 } \tuplet 3/2 { c4 cf4 g4 } | bf2. r8 g8 |
  \tuplet 3/2 { d'4 df4 g,4 } \tuplet 3/2 { c4 cf4 g4 } | bf2. r8 g8 |

  %% \break

  \tuplet 3/2 { d'4 df4 g,4 } \tuplet 3/2 { bf4 g4 bf4 } |
  \tuplet 3/2 { g4 bf4 g4 } \tuplet 3/2 { bf4 g4 bf4 } |
  \tuplet 3/2 { g4 bf4 g4 } \tuplet 3/2 { f4 d4 f4 } |
  \alternative { \volta 1 {
  g1~ | g4. r8 r4 r8 g8 |
  } \volta 2 {
  g2. r4 |
  } } }

  \sect "Solo"

  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq r8 d8 |

  \sect "Verse 3&4"

  \bar ".|:-||"
  \repeat volta 2 {
  \tuplet 3/2 { d'4 df4 g,4 } \tuplet 3/2 { c4 cf4 g4 } | bf2. r8 g8 |
  \tuplet 3/2 { d'4 df4 g,4 } \tuplet 3/2 { c4 cf4 g4 } | bf2. r8 g8 |

  \tuplet 3/2 { d'4 df4 g,4 } \tuplet 3/2 { bf4 g4 bf4 } |
  \tuplet 3/2 { g4 bf4 g4 } \tuplet 3/2 { bf4 g4 bf4 } |
  \tuplet 3/2 { g4 bf4 g4 } \tuplet 3/2 { f4 d4 f4 } |
  \alternative { \volta 1 {
  g1~ | g4. r8 r4 r8 g8 |
  } \volta 2 {
  g2. r4 |
  } } }
  \bar "||-||"

  \sect "Solo"

  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq r8 d8 |

  \xxPageBreak

  \sect "Chorus"

  \tuplet 3/2 { d'4 df4 g,4 } \tuplet 3/2 { c4 cf4 g4 } | bf2. r8 g8 |
  \tuplet 3/2 { d'4 df4 g,4 } \tuplet 3/2 { c4 cf4 g4 } | bf2. r8 g8 |

  %% \break

  \tuplet 3/2 { d'4 df4 g,4 } \tuplet 3/2 { bf4 g4 bf4 } |
  \tuplet 3/2 { g4 bf4 g4 } \tuplet 3/2 { bf4 g4 bf4 } |
  \tuplet 3/2 { g4 bf4 g4 } \tuplet 3/2 { f4 d4 f4 } |
  g2. r8 g'8 |
  
  \sect "Bridge"

  \tuplet 3/2 { f4 ef4 df4 } \tuplet 3/2 { c4 bf4 af4 } |
  \tuplet 3/2 { g4 f4 g4 } \tuplet 3/2 { af4 bf4 c4 } |
  d4. d8 d4. d8 | d2. d4 |
  \tuplet 3/2 { c4 bf4 a4 } \tuplet 3/2 { g4 f4 e4 } |
  \tuplet 3/2 { d4 c4 d4 } \tuplet 3/2 { e4 f4 g4 } |
  a4. a8 a4. a8 | bf2. d,4 |

  \sectPageBreak "Verse 5"

  \tuplet 3/2 { d'4 df4 g,4 } \tuplet 3/2 { c4 cf4 g4 } | bf2. r8 g8 |
  \tuplet 3/2 { d'4 df4 g,4 } \tuplet 3/2 { c4 cf4 g4 } | bf2. r8 g8 |
  \tuplet 3/2 { d'4 df4 g,4 } \tuplet 3/2 { bf4 g4 bf4 } |
  \tuplet 3/2 { g4 bf4 g4 } \tuplet 3/2 { bf4 g4 bf4 } |
  \tuplet 3/2 { g4 bf4 g4 } \tuplet 3/2 { f4 d4 f4 } |
  g1~ | g2 r4 g4 |

  \sectPageBreak "Outro"

  \tuplet 3/2 { a4 bf4 c4 } \tuplet 3/2 { a4 bf4 c4 } |
  d2~ \tuplet 3/2 { d4 r4 d,4 } | \tuplet 3/2 { e4 fs4 g4 } \tuplet 3/2 { gs4 b4 a4 } |
  \tuplet 3/2 { g4 a4 bf4 } \tuplet 3/2 { b4 d4 c4 } |
  \tuplet 3/2 { b4 c4 d4 } \tuplet 3/2 { e4 e4 e4 } | e1 |

  \bar "|."
}

\include "../Include/refrainonly.ily"
