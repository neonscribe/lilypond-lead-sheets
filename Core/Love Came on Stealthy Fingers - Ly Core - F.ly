%% -*- Mode: LilyPond -*-

songID = "2026-10-09T02:12:11.300413Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Love Came on Stealthy Fingers"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Bob Dorough"
headerCopyright = "© 1965 Hullabaloo Music"

refrainLyrics = \lyricmode {
Love came __ on steal -- thy fin -- gers __ and took __ me by sur -- prise.
I fell __ a -- gainst my wish -- es, __ though I was wise, oh so wise.
For love to me was not a to -- tal stran -- ger, __ I've seen it come and go and come a -- gain.
I know the sweet -- ness and I know the dan -- ger, __ and, oh yes, __ I know the pain. __
Love came, __ that old ma -- gi -- cian, __ and beat __ me at the game.
Once more __ I'm lost for -- ev -- er, __ I'll nev -- er be the same. __
But af -- ter all what would life be like with -- out it?
Noth -- ing's to be done a -- bout it.
Might as well be hap -- py while I may.
Love came __ on steal -- thy fin -- gers and stole my heart a -- way.
}

refrainChords = \chordmode {
  c4:13.9-.11+
  
  f2:maj7 a2:m7.5- a2:m7.5- d2:7.9- g1:m7 c1:13.9-
  f2:maj7 a2:m7.5- a2:m7.5- d2:7.9- g2:maj7 a4:m9 d4:13 g2.:maj7  b4:m7
  
  bf2:m9 ef2:7.9+.5+ af1:maj9 af2:m9 df2:7.9+.5+ gf1:maj9
  fs2:m9 b2:7.9+.5+ e2:maj9 cs2:m9 bf2:m11 ef2:7.5+ af2:maj9 g4:m7 c4:13.9-
  
  f2:maj7 a2:m7.5- a2:m7.5- d2:7.9- g1:m7 c1:13.9-
  f2:maj7 a2:m7.5- a2:m7.5- d2:7.9- g2:maj7 gs2:m7 g2:m7 c4:7 \tuplet 3/2 { d8:m d4:m7/c }
  
  b2:m11.5- e2:7.9+.5+ a2:m11.5- d2:7.9+.5+ g1:m11
  bf2:m7 ef2:7.11+ f2:maj7 a2:m7.5- a2:m7.5- d2:7.9- g2:m7 df4:7.5- c4:13 f2.:6
  \chordInsideParens{ c4:13 }
}

refrainKey = f

whatKey = #(or whatKey refrainKey)


refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Ballad or Medium [Valentina Marino 2016]" 130

  \partial 4 r8 a8 |

  \sectNoBreak "A1"
  
  c,2~ c8 d8 ef8 g8 | d'8 c4.~ c4 a4 | bf,2~ bf8 d8 c'8. bf16 | a2.. a8 |
  \break
  c,2~ c8 d8 ef8 g8 | d'8 c4.~ c4 d4 | b8 b8 b2 b8 a8 | fs2. b4 |
  
  \sect "B"
  
  c8 bf8 af8 g8 fs8 g8 af8 g8 | bf8 bf4.~ bf4. bf8 | bf8 af8 gf8 f8 e8 f8 g8. f16 | af2.. af8 |
  \break
  gs8 fs8 e8 ds8 d8 ds8 e8. ds16 | fs8 fs4.~ fs4 e8 fs16 ef16~ | ef2~ ef8 ef8 ef8 ef8 | c2~ c4. a'8 |
  
  \lyricsPageBreak "A2" "||" "||-||"

  c,2~ c8 d8 ef8 g8 | d'8 c4.~ c4 a4 | bf,2~ bf8 d8 c'8. bf16 | a2.. a8 |
  \break
  c,2~ c8 d8 ef8 g8 | d'8 c4.~ c4 d4 | b4 b4 b4 b4 | c2~ c8 e,8 \tuplet 3/2 { f8 a8 c8 } |
  
  \sect "C"
  
  e8 d8 c8 b8 as8 b8 c8 b8 | d8 c8 bf8 a8 gs8 a8 bf8 a8 | c8 bf8 a8 g8 fs8 g8 a8 g8 | bf2. a4 |
  \break
  c,2~ c8 d8 ef8 g8 | d'4 c4 bf4( a4) | c4 bf4 g4. a8 | f2. r4 |

  \bar "|."
}

\include "../Include/refrainonly.ily"
