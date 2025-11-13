%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Between the Devil and the Deep Blue Sea"
  subtitle = \instrument
  poet = "Ted Koehler"
  composer = "Harold Arlen"
  copyright = \markup \small { \now " " "© 1931 Mills Music, Inc." }
}

refrainLyrics = \lyricmode {
I don't want you, but I'd hate to lose you.
You've got me in be -- tween __ the dev -- il and the deep blue sea. __

_

I ought to cross you off my list, but when you come knock -- ing at my door,
fate seems to give my heart a twist, and I come run -- ning back for more.

I should hate you, but I guess I love you,
You've got me in be -- tween __ the dev -- il and the deep blue sea. __
}

refrainLyricsTwo = \lyricmode {
I for -- give you, 'cause I can't for -- get you,
}

refrainChords = \chordmode {
  g1:maj7 a2:m7 d2:7 g1:maj7 a2:m7 d2:7
  d2:m7 g2:7 c2:maj7 f2:7 a2:m7 d2:7
  
  g2:6 d2:7
  
  g2:6 fs2:7
  
  b1:maj7 cs2:m7 fs2:7 b2:maj7 b2:dim7 cs2:m7 fs2:7
  d1:maj7 e2:m7 a2:7 bf1:7 a2:7 d2:7

  g1:maj7 a2:m7 d2:7 g1:maj7 a2:m7 d2:7
  d2:m7 g2:7 c2:maj7 f2:7 a2:m7 d2:7 g2:6
  \chordInsideParens{ d2:7 }
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Blossom Dearie 1956]" 4 = 136

  \xTextMark \markup{ \bold \box "A1,A2" }
  \bar ".|:"
  \repeat volta 2 {
  r4 b2 d,4 | b'2 d2 | r4 b8 as8 b4 d,4 | b'4 d2. |
  \break
  r4 e4 e8 g,4. | d'4 c8 g'8~ g4. ef8 | d8 g8 d8 df8 c4 b8 g8~ |
  \alternative { \volta 1 {
  g2 r2 |
  } \volta 2 {
  g2\repeatTie r2 |
  } } }
  \sect "B"
  
  r4 r8 fs'8 ds8 cs8 b8 gs8 | b8 gs4 gs8~ gs2 | b4 b4 b8 c8 b8 gs8 | b4 ds8 fs8~ fs2 |
  \break
  r4 r8 fs8 e8 d8 b8 d8 | e8 e4 e8~ e4. e8 | f8 f8 e8 d8 c4 bf4 | a2 r2 |
  
  \sect "A"
  
  r4 b2 d,4 | b'2 d2 | r4 b8 as8 b4 d,4 | b'4 d2. |
  \break
  r4 e4 e8 g,4. | d'4 c8 g'8~ g4. ef8 | d8 g8 d8 df8 c4 b8 g8~ | g2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
