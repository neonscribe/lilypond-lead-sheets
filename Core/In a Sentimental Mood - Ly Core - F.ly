%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "In a Sentimental Mood"
  subtitle = \instrument
  poet = "Irving Mills and Manny Kurtz"
  composer = "Duke Ellington"
  copyright = "© 1935 Milsons Music Publishing Corp."
}

refrainLyricsOne = \lyricmode {
In a sen -- ti -- men -- tal mood __
I can see the stars come thru my room __
While your lov -- ing at -- ti -- tude __
Is like a flame that lights the gloom.
On the wings of ev -- 'ry
_
Rose pet -- als seem to fall.
It's all like a dream to call you mine.
_ _ _ _ _ _ _ _ _
My heart's a light -- er thing
since you made this night a thing di -- vine.

In a sen -- ti -- men -- tal mood __
I'm with -- in a world so heav -- en -- ly __
For I never dreamt that you'd __
Be lov -- ing sen -- ti -- men -- tal me.
}

refrainLyricsTwo = \lyricmode {
_ _ _ _ _ _ kiss __
Drifts a mel -- o -- dy so strange and sweet. __
In this sen -- ti -- men -- tal bliss __
You make my par -- a -- dise com-
_ _ _ _ _ _ _
plete.
}

refrainChords = \chordmode {
  s1

  d2:m d2:m7+ d2:m7 d2:m7 d2:m g2:m7+ g2:m7 g4:m6 a4:7
  d1:m d1:7 g2:m7 gf2:7
  
  f1:maj7
  
  f2:maj7 ef4:m7 af4:7
  
  df2:maj7 bf2:m7 ef2:m7 af2:7 df2:maj7 bf2:7 ef2:7 af2:7
  df2:maj7 bf2:m7 ef2:m7 af2:7 g1:m7 c1:7

  d2:m d2:m7+ d2:m7 d2:m7 d2:m g2:m7+ g2:m7 g4:m6 a4:7
  d1:m d1:7 g2:m7 c2:7.9- f1:maj7
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad" 4 = 120

  r4 f8 g8 a8 c8 d8 f8 |

  \mark \markup{ \box "A1, A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  g1~ | g4 f8 g8 f8 e8 d8 c8 | a4 d8 a8~ a2~ | a4 a8 c8 d8 af8 g8 f8 |
  \break
  d2~ d8 f8 a8 c8 | e2. d4 | bf2 e,2 |
  } \alternative { {
  g4 f8 g8 a8 c8 d8 f8 |
  } {
  f,2. r4 |
  } }
  \bar "||"
  \break

  \mark \markup{ \box "B" }
  
  c'4 bf8 c8 ef8 df8 c8 bf8 | f4 ef8 f8 gf8 af8 f8 ef8 |
  df2 \tuplet 3/2 { fs4 g4 bf4 } | \tuplet 3/2 { b4 c4 ef4 } \tuplet 3/2 { e4 f4 af4 } |
  \break
  c,4 bf8 c8 ef8 df8 c8 bf8 | f4 ef8 f8 gf8 af8 f8 ef8 |
  c1 | r4 f8 g8 a8 c8 d8 f8 |
  
  \bar "||"
  \break

  \mark \markup{ \box "A3" }

  g1~ | g4 f8 g8 f8 e8 d8 c8 | a4 d8 a8~ a2~ | a4 a8 c8 d8 af8 g8 f8 |
  \break
  d2~ d8 f8 a8 c8 | e2. d4 | bf2 e,2 | f1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"
