%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "Nobody Knows You When You're Down and Out"
  subtitle = \instrument
  poet = ""
  composer = "Jimmie Cox"
  copyright = \markup \small { \now " " "© 1923 Universal Music Corp." }
}

refrainLyrics = \lyricmode {
I once lived the life of a mil -- lion -- aire, __
Spend -- ing my mon -- ey, I did -- n't care.
Al -- ways tak -- ing my friends out for a good time, __
Buy -- ing cham -- pagne, __ gin and wine. __
But just as soon __ as my dough got low, __
I could -- n't find a friend, no place I'd go. __
If I ev -- er get my hands on a dol -- lar a -- gain, __
I'm gon -- na squeeze it and squeeze it __ till the ea -- gle grins. __

No -- bod -- y knows you when you're down and out.
In your poc -- ket not one pen -- ny, and your friends, you have -- n't an -- y.
And soon as you get on your feet a -- gain, __
Ev -- 'ry -- bod -- y is your long lost friend. __
It's might -- y strange, with -- out a doubt, __
but no -- bod -- y knows you __ when you're down and out. __
}

refrainChords = \chordmode {
  s4
  
  f2 a2:7 d1:7 g2:m d2:7 g1:m
  bf2 b2:dim7 f2/c d2:7 g1:7 g2:7.5- c2:7
  f2 a2:7 d1:7 g2:m d2:7 g1:m
  bf2 b2:dim7 f2/c d2:7 g1:7 g2:7.5- c2:7
  
  f2 a2:7 d1:7 g2:m d2:7 g1:m
  bf2 b2:dim7 f2/c d2:7 g1:7 c1:7
  f2 a2:7 d1:7 g2:m d2:7 g1:m
  bf2 b2:dim7 f2/c d2:7 g1:7 c2:7 f2
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Slow Blues [Bessie Smith 1929]" 4 = 88

  \partial 4 c4 |

  \sectNoBreak "Verse"
  
  a'4 a8 a8 g4 g8 g8 | fs4 fs8 d8~ d2 | d'8 d8 d8 c8~ c8 c4 c8 | bf4 bf8 g8~ g2 |
  d'8 d8 \tuplet 3/2 { d8 d8 d8 } e8 d4. | c8 c8 c8 a8~ a2 | a8 a8 a8 a8~ a2 | a8 f4 g8~ g4 r8 c,8 |
  a'4 a8 g8~ g4 g8 g8 | fs4 fs8 d8~ d4. d8 | d'8 d8 d8 d8 c4. c8 | bf4 bf8 g8~ g4 \tuplet 3/2 { r8 f8 f8 } |
  d'8 d8 d8 d8 e4 d8 d8 | c8 c8 c8 a8~ a4 \tuplet 3/2 { d,8 a'8 d,8 } |
  a'8 a4 d,8 a'8 a8~ \tuplet 3/2 { a8 d,8 f8 } | a8 f4 g8~ g2 |

  \sect "Chorus"
  
  a2 g4. a8 | fs2 d2 | r8 d'4 d8 c4 c4 | bf1 |
  r8 d4 d8 e8 d4. | r8 c4 c8 c8 a4. | r8 a4 a8 a2 | r8 d,8 a'8 d,8 a'8 g4 c,8 |
  a'4 a8 a8 g8 g4 g8 | fs4 fs8 d8~ d2 | r8 bf'4 bf8 a8 a8 a8 a8 | g8 a4 bf8~ bf2 |
  r8 f8 d'8 d8 e4. d8 | c4 c8 a8~ a4. d,8 | a'4 f8 d8 a'8 a8~ \tuplet 3/2 { a8 f8 d8 } | a'4 a8 f8~ f4 r4 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
