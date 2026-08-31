%% -*- Mode: LilyPond -*-

songID = "2026-08-31T21:21:22.639304Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Until the Real Thing Comes Along"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Holiner/Nichols/Chaplin/Freeman/Cahn"
headerCopyright = "© 19xx Inc."

refrainLyrics = \lyricmode {
I'd work for you, I'd slave for you,
I'd be a beg -- gar or a knave for you.
If that is -- n't love, it will have to do
un -- til the real thing comes a -- long.
I'd glad -- ly move the earth for you,
to prove my love, dear, and its worth to you.
If that is -- n't love, it will have to do,
un -- til the real thing comes a -- long.
With all the words, dear, at my com -- mand,
I just can't make you un -- der -- stand,
I'll al -- ways love you, dar -- ling, come what may.
My heart is yours, what more can I say?
I'd sigh for you, I'd cry for you,
I'd tear the stars down from the sky for you.
If that is -- n't love, it will have to do,
un -- til the real thing comes a -- long.
}

refrainHLChords = \chordmode {
  s4
  
  ef1:maj7 bf1:7.5+ ef2:maj7 d2:7.5+ g2:m7 c2:7
  f1:m7 bf1:7 ef2:6 c2:m7 f2:m7 bf2:7

  ef1:maj7 bf1:7.5+ ef2:maj7 d2:7.5+ g2:m7 c2:7
  f1:m7 bf1:7 ef2:6 af2:6 a2:m7.5- d2:7
  
  g2:maj7 gs2:dim7 a2:m7 d2:7 g2:6/b bf2:dim7 a2:m7 d2:7
  g2:maj7 gs2:dim7 a2:m7 d2:7 g2:6 g2:dim7 f2:m7 bf2:7

  ef1:maj7 bf1:7.5+ ef2:maj7 d2:7.5+ g2:m7 c2:7
  f1:m7 bf1:7 ef2:6 af2:6 ef2:6
  \chordOpenParen{ f4:m7 }
  \chordCloseParen{ bf4:7 }
}

refrainChords = \refrainHLChords

refrainKey = ef

whatKey = #(or whatKey refrainKey)


refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium Slow [Andy Kirk 1936]" 100

  \partial 4 g4 |

  \sectNoBreak "A1"
  
  bf4 bf4 bf4. g8 | bf4 bf4 bf2 | r8 d8 d8 c8 \tuplet 3/2 { d4 d4 c8 c8 } | d4 bf4 g4. c8 |
  ef8 c8 ef8 c8~ c4 fs,8 g8 | bf4 bf4 g2 | r8 ef8 ef8 c8 ef8 ef8 c8 ef8 | f2. g4 |

  \sect "A2"

  bf4 bf4 bf4. g8 | bf4 bf4 bf2 | r8 d8 d8 c8 \tuplet 3/2 { d4 d4 c8 c8 } | d4 bf4 g4. c8 |
  ef8 c8 ef8 c8~ c4 fs,8 g8 | bf4 bf4 g2 | r8 ef8 ef8 ef8 f8 f8 c8 c8 | ef2 r2 |

  \sect "B"
  
  r8 d'8 d8 b8 d4 as8 b8 | e4 e4 b2 | r8 g8 g8 e8 g4 e4 | g4 gf4 e2 |
  r8 d'8 d8 b8 d8 d8 as8 b8 | e4 e4 b2 | r8 g8 g8 e8 g4 fs8 g8 | bf4 bf4 bf4. g8 |
  
  \sect "A3"

  bf4 bf4 bf4. g8 | bf4 bf4 bf2 | r8 d8 d8 c8 \tuplet 3/2 { d4 d4 c8 c8 } | d4 bf4 g4. c8 |
  ef8 c8 ef8 c8~ c4 fs,8 g8 | bf4 bf4 g2 | r8 ef8 ef8 ef8 f8 f8 c8 c8 | ef2 r2 |

  \bar "|."
}

\include "../Include/refrainonly.ily"
