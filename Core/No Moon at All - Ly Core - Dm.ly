%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "No Moon at All"
  subtitle = \instrument
  composer = "Redd Evans & Dave Mann"
  copyright = \markup \small "© 1947 Jefferson Music Co., Inc."
}

refrainLyrics = \lyricmode {
No moon at all, __ what a night, __
E -- ven light -- nin' bugs have dimmed their light, __
Stars have dis -- ap -- peared from sight
and there's no moon at all. __
Don't make a sound, __ it's so dark, __
E -- ven Fi -- do is a -- fraid to bark, __
What a per -- fect chance to park,
and there's no moon at all. __
Should we want at -- mos -- phere __ for in -- spir -- a -- tion, dear, __
One kiss will make __ it clear
that to -- night is right and bright moon -- light might in -- ter -- fere. __
No moon at all __ up a -- bove, __
This is no -- thing like they told us of, __
Just to think we fell in love
and there's no moon at all. __
}

refrainNRChords = \chordmode {
  d1:m a1:7 d1:7.9- g1:6
  e1:m7.5- d2:m bf4:7 a4:7 d1:m bf2:7 a2:7

  d1:m a1:7 d1:7.9- g1:6
  e1:m7.5- d2:m bf4:7 a4:7 d1:m d1:m

  d1:7 d1:7 g1:7 g1:7
  c1:7 c1:7 f1:6 e2:m7.5- a2:7

  d1:m a1:7 d1:7.9- g1:6
  e1:m7.5- d2:m7 bf4:7 a4:7 d1:m
  \chordOpenParen{ bf2:7 }
  \chordCloseParen{ a2:7 }
}

refrainHLChords = \chordmode {
  d1:m6 a1:7.9-/cs d1:7/c g1/b
  e1:m7.5-/bf d2:m/a bf4:7 a4:7.9- d1:m6 bf2:7 a2:7.9-

  d1:m6 a1:7.9-/cs d1:7/c g1/b
  e1:m7.5-/bf d2:m/a bf4:7 a4:7.9- d1:m6 d1:m6

  d1:7 d1:7 g1:7 g1:7
  c1:7 c1:7 f1:maj7 e2:m7.5- a2:7.5+

  d1:m6 a1:7.9-/cs d1:7/c g1/b
  e1:m7.5-/bf d2:m/a bf4:7 a4:7.9- d1:m6
  \chordOpenParen{ bf2:7 }
  \chordCloseParen{ a2:7.9- }
}

refrainChords = \refrainHLChords

refrainKey = d

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium-Up Swing"

  \xTextMark \markup{ \bold \box "A1" }

  a8 f8 g8 a8~ a2 | r8 a8 e8 a8~ a2 | r8 a4 fs8 a8 g8 fs8 a8 | g4 d8 g8~ g2 |
  r8 g4 e8 g8 f8 e8 g8 | f8 b,8 c8 f8~ f8 d8 e8 d8~ | d1 | r1 |

  \sect "A2"

  a'8 f8 g8 a8~ a2 | r8 a8 e8 a8~ a2 | r8 a4 fs8 a8 g8 fs8 a8 | g4 d8 g8~ g2 |
  r8 g4 e8 g8 f8 e8 g8 | f8 b,8 c8 f8~ f8 d8 e8 d8~ | d1 | r1 |

  \sect "B"
  
  r8 d4. fs8 a4 d,8~ | d4 fs8 a8~ a2 | r8 g4. b8 d4 g,8~ | g4 b8 d8~ d2 |
  \break
  r8 c4. bf8 g4 c8~ | c4 bf8 g4. f8 g8 | a8 a8 a8 a8 a8 a8 a8 a8 | r8 cs8 bf8 a8~ a2 |
  
  \sect "A3"

  a8 f8 g8 a8~ a2 | r8 a8 e8 a8~ a2 | r8 a4 fs8 a8 g8 fs8 a8 | g4 d8 g8~ g2 |
  r8 g4 e8 g8 f8 e8 g8 | f8 b,8 c8 f8~ f8 d8 e8 d8~ | d1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
