%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Let's Call the Whole Thing Off"
  subtitle = \instrument
  poet = "Ira Gershwin"
  composer = "George Gershwin"
  copyright = "© 1937 Gershwin Publishing Corporation"
}

refrainLyricsOne = \lyricmode {
You say ee -- ther and I say eye -- ther.
You say nee -- ther and I say ny -- ther.
Ee -- ther, eye -- ther, nee -- ther, ny -- ther!
Let's call the whole thing off.

You like po -- tay -- to and I like po -- tah -- to.
You like to -- may -- to and I like to -- mah -- to.
Po -- tay -- to, po -- tah -- to, to -- may -- to, to -- mah -- to!
Let's call the whole thing off.

But oh! If we call the whole thing off,
Then we must part.
And oh! If we ev -- er part
then, that might break my heart.
So, if you like pa -- jam -- as and I like pa -- jahm -- as,
I'll wear pa -- jam -- as and give up pa -- jahm -- as.
For we know we need each oth -- er,
so we bet -- ter call the call -- ing off off.
Let's call the whole thing off.
}

refrainLyricsTwo = \lyricmode {
}

refrainChords = \chordmode {
  g2 e2:m7 a2:m7 d2:7 g2 e2:m7 a2:m7 d2:7
  g2 g2:7/f c2/e c2:m/ef g2/d e2:m a2:7 d2:7

  g2 e2:m7 a2:m7 d2:7 g2 e2:m7 a2:m7 d2:7
  g2 g2:7/f c2/e c2:m/ef g2/d d2:7 g1
  
  cs1:m7.5- fs2:7 b2:m7 e2:7.9- a2:m7 d1:9
  cs1:m7.5- fs2:7 b2:m7 e2:7.9- a2:m7 d1:9

  g2 e2:m7 a2:m7 d2:7 g2 e2:m7 a2:m7 d2:7
  g2 g2:7/f c2/e c2:m/ef g2/d d2:7 b2:7 e2:7 a2:m7 d2:7
  g2:6
  \chordInsideParens{ d2:7 }
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Brightly" 4 = 126

  \xTextMark \markup{ \bold \box "A1" }
  
  g4 e8 fs8~ fs8 fs4 e8 | g4 a8 b8~ b8 b4. |
  g4 e8 fs8~ fs8 fs4 e8 | g4 a8 b8~ b8 b4. |
  \break
  d8 g,8 r4 d'8 g,8 r4 | d'8 g,8 r4 d'8 g,8 r4 |
  d'4 c8 b8 a4 g4 | a2. r4 |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  g8 g4 e8 fs8 fs4 e8 | g8 g4 a8 b8 b4. |
  g8 g4 e8 fs8 fs4 e8 | g8 g4 a8 b8 b4 b8 |
  \break
  d8 g,8 r8 g8 d'8 g,8 r8 g8 | d'8 g,8 r8 g8 d'8 g,8 r4 |
  d'4 c8 b8 a4 g4 | g2 r4 g4 |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  e'1 | d8 cs8 b8 cs8 d4 d4 | b4 b4 c4 c4 | a2. e4 |
  \break
  e'1 | d8 cs8 b8 cs8 d4 d4 | b4 b4 c4 c4 | a2. d,8 d8 |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "A3" }

  g8 g4 e8 fs8 fs4 e8 | g8 g4 a8 b8 b4. |
  g8 g4 e8 fs8 fs4 e8 | g8 g4 a8 b8 b4. |
  \break
  d8 g,8 r4 d'8 g,8 r4 | d'8 d8 g,8 g8 d'8 g,4. | 
  d'8 d8 c8 b8 c8 b8 a4 | b2. r4 | e4 d8 c8 b4 a4 | g2. r4 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"
