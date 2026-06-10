%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:31.784448Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Don't Blame Me"
headerSubtitle = \subtitle
headerPoet = "Dorothy Fields"
headerComposer = "Jimmy McHugh"
headerCopyright = "© 1932 Metro-Goldwyn-Mayer Inc."

refrainLyrics = \lyricmode {
Don't blame me for fall -- ing in love with you.
I'm un -- der your spell but how can I help it.
Don't blame me.

Can't you see, when you do the things you do,
if I can't con -- ceal the way that I'm feel -- ing,
Don't blame me.

I can't help it if that dog -- goned moon a -- bove __
makes me need __ some -- one like you to love.

Blame your kiss, as sweet as a kiss can be,
And blame all your charms that melt in my arms but
don't blame me.
}

refrainChords = \chordmode {
  c2:maj7 e2:m7.5- a2:7.5+ a2:7 d2:m7.5- g2:7 c2:maj7 a2:m7
  d2:m7.5- g2:7 e2:m7.5- a2:7 d2:m7 g2:7.5+ c2:maj7 d4:m7 g4:7

  c2:maj7 e2:m7.5- a2:7.5+ a2:7 d2:m7.5- g2:7 c2:maj7 a2:m7
  d2:m7.5- g2:7 e2:m7.5- a2:7 d2:m7 g2:7 c2:6 g4:m7 c4:7

  f1:6 e1:7 a1:m7 a1:m7
  d1:7 d1:7 d2:m7 af2:7 g1:7

  c2:maj7 e2:m7.5- a2:7.5+ a2:7 d2:m7.5- g2:7 c2:maj7 a2:m7
  d2:m7.5- g2:7 e2:m7.5- a2:7 d2:m7 g2:7.5+ c2:6
  \chordOpenParen{ d4:m7 }
  \chordCloseParen{ g4:7 }
}

refrainKey = c

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium Ballad [Ethel Waters 1933]" 106

  \xTextMark \markup{ \bold \box "A1" }

  g2 bf2 | a2. g4 | \tuplet 3/2 { f4 f4 f4 } e4 e4 | d2. c4 |
  \break
  \tuplet 3/2 { f4 f4 f4 } e4 d4 | \tuplet 3/2 { g4 g4 g4 } f4 e4 | a2 b2 | g1 |

  \sect "A2"

  g2 bf2 | a2. g4 | \tuplet 3/2 { f4 f4 f4 } e4 e4 | d2. c4 |
  \break
  \tuplet 3/2 { f4 f4 f4 } e4 d4 | \tuplet 3/2 { g4 g4 g4 } f4 e4 | a2 a2 | c1 |

  \sect "B"

  gs4 a4 gs4 a4 | as4 b4 as4 b4 | d2 c4 c4~ | c1 |
  \break
  d2 c4 c4~ | c2 \tuplet 3/2 { d,4 fs4 b4 } | a2 af2 | g1 |

  \sect "A3"

  g2 bf2 | a2. g4 | \tuplet 3/2 { f4 f4 f4 } e4 e4 | d2. c4 |
  \break
  \tuplet 3/2 { f4 f4 f4 } e4 d4 | \tuplet 3/2 { g4 g4 g4 } f4 e4 | a2 a2 | c1 |

  \bar "|."
}

\include "../Include/paper.ily"

\include "../Include/refrain.ily"
