%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Bewitched"
  subtitle = \instrument
  poet = "Lorenz Hart"
  composer = "Richard Rodgers"
  copyright = \markup \small "© 1941 Chappell & Co. Inc."
}

refrainLyricsOne = \lyricmode {
I'm wild a -- gain, be -- guiled a -- gain,
A sim -- per -- ing, whim -- per -- ing child a -- gain.
Be -- witched, both -- ered and be -- wil -- dered am I. __
wil -- dered am I. __
Lost my heart, but whst of it?
He is cold, I a -- gree.
He can laugh but I love it __ al -- though the laugh's on me.
I'll sing to him, each spring to him,
and long for the day when I'll cling to him.
Be -- witched, both -- ered and be -- wil -- dered am I. __
}

refrainLyricsTwo = \lyricmode {
_ Could -- n't sleep, and would -- n't sleep,
when love came and told me I should -- n't sleep.
}

refrainChords = \chordmode {
  s4
  c2:maj7 cs2:dim7 d2:m7 ds2:dim7 c2/e e2:7 f2:maj7 fs2:dim7
  c2/g ef2:dim7
  
  d4:m7 \chordSlash 1 g4:7 a4:7.9- d1:m7 g1:7
  
  d4:m7 \chordSlash 1 g4:m7 c4:7 f1:maj7 e2:m7.5- a2:7.9-
  
  d2:m d2:m7+ d2:m7 d2:m6 a2:m a2:m7+ a2:m7 a2:m6
  d2:m7 g2:7 d2:m7 g2:7 e2:m7 ef2:dim7 d2:m7 g2:7

  c2:maj7 cs2:dim7 d2:m7 ds2:dim7 c2/e e2:7 f2:maj7 fs2:dim7
  c2/g ef2:dim7 d2:m7 g2:7 c2:6
  \chordOpenParen{ a2:m7 }
  d2:m7
  \chordCloseParen{ g2:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad [Mel Torme 1950]" 4 = 82
  
  \partial 4 g4 |

  \xTextMark \markup{ \bold \box "A1,A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  e8 b'8 c2 e,4 | f8 b8 c2 fs,4 | g8 b8 c4 gs8 b8 c4 | a8 b8 c2 b4 |
  \break
  c4 r4 b8 a8 g8 fs8 |
  \alternative { \volta 1 {
  g4 d2 e4 | f1~ | f2 r2 |
  \break
  } \volta 2 {
  g4 d2 e4 | a1~ | a1 |
  } } }
  \sect "B"
  
  b8 a8 f2 b8 a8 | f4 f2. | b8 a8 e2 b'8 a8 | e1 |
  \break
  c'8 b8 g2 c8 b8 | g4 g4~ g8 a8 b8 c8 | d2 c2 | f,2. g4 |
  
  \sect "A3"
  
  e8 b'8 c2 e,4 | f8 b8 c2 fs,4 | g8 b8 c4 gs8 b8 c4 | a8 b8 c2 b4 |
  \break
  c4 r4 b8 a8 g8 fs8 | g4 d'2 g,4 | c1~ | c2. r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"
