%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "True Love"
  subtitle = \instrument
  poet = ""
  composer = "Cole Porter"
  copyright = \markup \small { \now " " "© 1955 Chappell & Co., Inc." }
}

refrainLyrics = \lyricmode {
While I give to you and you give to me
true love, true love.
So, on and on it will al -- ways be
true love, true love.
For you and I have a guard -- ian an -- gel on high
with no -- thing to do __
but to give to you and to give to me
love for -- ev -- er true. __
}

refrainLyricsTwo = \lyricmode {
}

refrainChords = \chordmode {
  s2
  
  g2. c2. g2.:dim7 g2.
  d2.:7 d2.:7  
  c2./g g2.
  
  g2. c2. g2.:dim7 g2.
  d2.:7 d2.:7  
  d2.:7 g2.
  
  c2.:m7 f2.:7 bf2. g2.:7
  c2.:m7 f2.:7 bf2.:7 d2.:7

  g2. c2. g2.:dim7 g2.
  d2.:7 d2.:7 g2.
  \chordInsideParens{ d2.:7 }
}

refrainKey = g

refrainMelody = \relative f' {
  \time 3/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Slow Waltz [Bing Crosby 1956]" 4 = 75

  \partial 2 d4 d4 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  d2 g4 | g4 fs4 e4 |
  cs2 e4 | d2. |
  \break
  d2. | c2. | e2. | d2 d4 |

  \sect "A2"
  
  d2 g4 | g4 fs4 e4 |
  cs2 e4 | d2. |
  \break
  d2. | c2. | a'2. | g2 g4 |

  \sect "B"
  
  g2 bf4 | bf4 a4 g4 | f2 a4 | a4 g4 f4 |
  \break
  ef2 g4 | g4 f4. ef8 | d2.~ | d4 d4 d4 |

  \sect "A2"
  
  d2 g4 | g4 fs4 e4 | cs2 e4 | d2. |
  \break
  a'2 b4 | c2 fs,4 | g2.~ | g4 r4 r4 |
  

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
