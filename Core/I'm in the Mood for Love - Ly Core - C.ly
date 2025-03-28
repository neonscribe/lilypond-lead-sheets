%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "I'm in the Mood for Love"
  subtitle = \instrument
  poet = "Dorothy Fields"
  composer = "Jimmy McHugh"
  copyright = \markup \small "© 1935 Robbins Music Corporation"
}

refrainLyrics = \lyricmode {
I'm in the mood for love sim -- ply be -- cause you're near me.
Fun -- ny, but when you're near me, I'm in the mood for love.

Hea -- ven is in your eyes, bright as the stars we're un -- der.
Oh, is it an -- y won -- der I'm in the mood for love?

Why stop to think of wheth -- er this lit -- tle dream might fade?
We've put our hearts to -- geth -- er. Now we are one, I'm not a -- fraid.

If there's a cloud a -- bove, if it should rain we'll let it.
But for to -- night, for -- get it. I'm in the mood for love.
}

refrainChords = \chordmode {
  c1 f1:6 g1:7 c1
  e2:m7 ef2:dim7 d1:m7 g1:7 c2 g2:7

  c1 f1:6 g1:7 c1
  e2:m7 ef2:dim7 d1:m7 g1:7 c1
  
  f2:6 g2:7 c2 e4:m7.5- a4:7 f2:m6/af g2:7 c1
  a2:m6 b2:7 e1:m a2:m7.5- d4:7.5- d4:7 f2:m6 g2:7

  c1 f1:6 g1:7 c1
  e2:m7 ef2:dim7 d1:m7 g1:7 c2
  \chordInsideParens{ g2:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 140

  \xTextMark \markup{ \bold \box "A1" }
  
  \tuplet 3/2 { e4 f4 e4 } d4 c4 | d1 | \tuplet 3/2 { d4 e4 f4 } g4 a4 | b4 c2. |
  \break
  d8 b4 d8 b4 bf4 | a4 c2. | a8 g4 a8 g4 b,4 | g'1 |
  
  \sect "A2"
  
  \tuplet 3/2 { e4 f4 e4 } d4 c4 | d1 | \tuplet 3/2 { d4 e4 f4 } g4 a4 | b4 c2. |
  \break
  d8 b4 d8 b4 bf4 | a4 c2. | a8 g4 a8 g4 b,4 | c1 |
  
  \sect "B"
  
  d8 e4 f8 e4 d4 | g4 g2. | d8 e4 f8 e4 d4 | g1 |
  \break
  fs8 g4 a8 g4 fs4 | b4 b2. | b8 c4 b8 d2 | d,8 e4 d8 f2 |
  
  \sect "A3"

  \tuplet 3/2 { e4 f4 e4 } d4 c4 | d1 | \tuplet 3/2 { d4 e4 f4 } g4 a4 | b4 c2. |
  \break
  d8 b4 d8 b4 bf4 | a4 c2. | a8 g4 a8 g4 b,4 | c2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
