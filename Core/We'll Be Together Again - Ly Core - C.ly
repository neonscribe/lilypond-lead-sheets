%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "We'll Be Together Again"
  subtitle = \instrument
  poet = "Frankie Laine"
  composer = "Carl Fischer"
  copyright = \markup \small "© 1945 Fischer-Carey Music"
}

refrainLyrics = \lyricmode {
No tears, no fears, __ re -- mem -- ber there's al -- ways to -- mor -- row
So what if we have to part, we'll be to -- geth -- er a -- gain.
Your kiss, your smile, __ are mem -- 'ries I'll treas -- ure for -- ev -- er,
So try think -- ing with your heart, we'll be to -- geth -- er a -- gain.
Times when I know you'll be lone -- some, times when I know you'll be sad,
don't let temp -- ta -- tion sur -- round you, don't let the blues make you bad.
Some -- day, some -- way, we both have a life -- time be -- fore us,
for part -- ing is not good -- bye. We'll be to -- geth -- er a -- gain.
}

refrainChords = \chordmode {
  g4:7
  
  c4:6 \chordSlash 2 af4:7 d2:m7 g2:7 a1:m7 d1:7.11+
  bf2:m7 ef2:7 af1:maj7 d2:m7.5- af2:7 g1:7

  c4:6 \chordSlash 2 af4:7 d2:m7 g2:7 a1:m7 d1:7.11+
  bf2:m7 ef2:7 af1:maj7 d2:m7.5- g2:7 c1:6
  
  af2:7 g2:7.9- c1:m6 af2:7 g2:7 c1:m6
  d2:m7.5-/af g2:7 c2:m7.5-/gf f2:7 a2:m7.5- af2:7 g2:7

  c4:6 \chordSlash 2 af4:7 d2:m7 g2:7 a1:m7 d1:7.11+
  bf2:m7 ef2:7 af1:maj7 d2:m7.5- g2:7 c2:6
  \chordOpenParen{ d4:m7 }
  \chordCloseParen{ g4:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad [Frank Sinatra 1956]" 4 = 70

  \partial 4 e4 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  c2. bf'4 | g2~ g4. g8 | \tuplet 3/2 { c4 d4 c4 } \tuplet 3/2 { d4 e,4 g4 } | b4 gs2 a4 |
  \break
  \tuplet 3/2 { c4 c4 c4 } bf4 g4 | ef1 | \tuplet 3/2 { af4 bf4 af4 } bf4 af8 bf8 | g2. e4 |
  
  \sect "A2"
  
  c2. bf'4 | g2~ g4. g8 | \tuplet 3/2 { c4 d4 c4 } \tuplet 3/2 { d4 e,4 g4 } | b4 gs2 a4 |
  \break
  \tuplet 3/2 { c4 c4 c4 } bf4 g4 | ef1 | \tuplet 3/2 { af4 bf4 af4 } \tuplet 3/2 { g4 e4 e4 } | c1 |
  
  \sect "B"
  
  \tuplet 3/2 { af'4 bf4 af4 } bf4 af8 bf8 | g4 g2. | \tuplet 3/2 { af4 bf4 af4 } b4 af8 bf8 | g1 |
  \break
  \tuplet 3/2 { f4 g4 f4 } \tuplet 3/2 { g4 f4 g4 } | ef4 ef2. | \tuplet 3/2 { d4 ef4 d4 } f4 ef8 f8 | d2. e4 |

  \sect "A3"

  c2. bf'4 | g2~ g4. g8 | \tuplet 3/2 { c4 d4 c4 } \tuplet 3/2 { d4 e,4 g4 } | b4 gs2 a4 |
  \break
  \tuplet 3/2 { c4 c4 c4 } bf4 g4 | ef1 | \tuplet 3/2 { af4 bf4 af4 } \tuplet 3/2 { g4 e4 e4 } | c1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
