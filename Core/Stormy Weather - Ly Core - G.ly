%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Stormy Weather (Keeps Rainin' All the Time)"
  subtitle = \instrument
  poet = "Ted Koehler"
  composer = "Harold Arlen"
  copyright = "© 1933 Mills Music Inc."
}

refrainLyricsOne = \lyricmode {
Don't know why there's no sun up in the sky, storm -- y weath -- er. __
Since my man and I ain't to -- geth -- er, __
keeps rain -- in' all __ the time. __
Life is
_ _ _
When he went a -- way __ the blues walked in and met me.
If he stays a -- way __ old rock -- in' chair will get me.
All I do is pray __ the Lord a -- bove will let me
walk in the sun once more.
Can't go on, ev -- 'ry -- thing I have is gone, storm -- y weath -- er. __
Since my man and I ain't to -- geth -- er, __
keeps rain -- in' all __ the time. __
}

refrainLyricsTwo = \lyricmode {
_ _
bare, gloom and mis -- 'ry ev -- 'ry -- where, storm -- y weath -- er. __
Just can't get my poor self to -- geth -- er, __
I'm wea -- ry all __ the
_ _ _
time, __ the time. __
}

refrainChords = \chordmode {
  s4
  g2:maj7 e2:7.9- a2:m7 d2:7 b2:m7 e2:7.9- a2:m7 d2:9
  g2:6 e2:7.9- a2:m7 d2:7.5+.9-
  
  g2:7 e2:m7 a2:m7 d2:7.9-
  
  g1:6 d2:m7 g2:7.9-
  
  c2:6 cs2:dim7 g2:6/d g2:7 c2:6 cs2:dim7 g2:6/d g2:7
  c2:6 cs2:dim7 g2:6/d g2:6 b2:m7 e2:m7 ef2:9.11+ d2:9

  g2:maj7 e2:7.9- a2:m7 d2:7 b2:m7 e2:7.9- a2:m7 d2:9
  g2:6 e2:7.9- a2:m7 d2:7.5+.9- g2:6
  \chordOpenParen{ e2:m7 }
  a2:m7
  \chordCloseParen{ d2:7.9- }
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Ballad" 4 = 98

  \partial 4 as8 b8 |

  \bar ".|:"
  \repeat volta 2 {

  \xTextMark \markup{ \bold \box "A1,A2" }
  
  d2. as8 b8 | d8 b8 d8 df8 c4 as8 b8 | d8 d,4.~ d2 | a'8 a8 a8 a8 a4 g8 e8 |
  \break
  g8 d4.~ d2 | c8 e8 g8 as8~ as4. as8 |
  \alternative { \volta 1 {
  b8( g4.~ g2) | r2 r4 as8 b8 |
  } \volta 2 {
  b8( g4.~ g4) g4 | e8( d4.~ d2) |
  } } }
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  e8 fs8 \tuplet 3/2 { g8 a8 g8~ } g8 g8 g8 g8 | g4. g8 b8 g4. |
  e8 fs8 \tuplet 3/2 { g8 a8 g8~ } g8 g8 g8 g8 | g4. g8 e8 d4. |
  \break
  e8 fs8 \tuplet 3/2 { g8 a8 g8~ } g8 g8 g8 g8 | g4. g8 c8 b4. |
  d4 b8 a8 g4 e4 | a2. as8 b8 |

  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "C" }
  
  d2. as8 b8 | d8 b8 d8 df8 c4 as8 b8 | d8 d,4.~ d2 | a'8 a8 a8 a8 a4 g8 e8 |
  \break
  g8 d4.~ d2 | c8 e8 g8 as8~ as4. as8 | b8( g4.~ g2~ | g2) r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"
