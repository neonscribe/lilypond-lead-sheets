%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Close Your Eyes"
  subtitle = \instrument
  poet = ""
  composer = "Bernice Petkere"
  copyright = \markup \small "© 1933 Miller Music Corporation"
}

refrainLyrics = \lyricmode {
Close your eyes. __ Rest your head on my shoul -- der and sleep.
Close your eyes __ and I will close mine. __

Close your

_ _ play __ some -- thing dream -- y for danc -- ing while we're here ro -- manc -- ing.
It's love's hol -- i -- day __ and love will be our guide.

Close your eyes. __ When you o -- pen them, dear, I'll be near, by your side,
so won't you close your eyes.
}

refrainLyricsTwo = \lyricmode {
_ _ eyes. __ Let's pre -- tend that we're both count -- ing sheep.
Close your eyes. __ Oh, this is di -- vine. _ _ Mu -- sic
}

refrainChords = \chordmode {
  s2
  
  g1:m7.5- c1:7.9- g1:m7.5- c1:7.9- 
  f1:m g2:m7.5- c2:7.9- f1:m
  
  f1:m
  
  f1:m
  
  c1:m7 f1:7 c1:m7 f1:7
  bf1:7 bf1:7 df1:7 c1:7.9-

  g1:m7.5- c1:7.9- g1:m7.5- c1:7.9- 
  f1:m g2:m7.5- c2:7.9- f1:m f1:m
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium [Tony Bennett 1955]" 4 = 162
  
  \partial 2 c'4. g8 |
  
  \xTextMark \markup{ \bold \box "A1,A2" }

  \bar ".|:"
  \repeat volta 2 {
  bf1 | r2 c4. g8 | \tuplet 3/2 { bf4 c4 bf4 } \tuplet 3/2 { g4 bf4 g4 } | e2 af4. e8 |
  \break
  f1 | r4 f4 \tuplet 3/2 { g4 af4 bf4 } | c1 |
  \alternative { \volta 1 {
  r2 c4. g8 |
  } \volta 2 {
  r2 f'4. c8 |
  } } }
  \sect "B"
  
  ef1 | r2 f4. c8 |
  \tuplet 3/2 { ef4 f4 ef4 } \tuplet 3/2 { c4 ef4 c4 } |
  \tuplet 3/2 { a4 c4 a4 } \tuplet 3/2 { f4 g4 f4 } |
  \break
  af4. f8 g8 f4. | r2 \tuplet 3/2 { f4 g4 f4 } | af2 f4. g8 | r2 c4. g8 |
  
  \sect "A3"
  
  bf1 | r2 c4. g8 | \tuplet 3/2 { bf4 c4 bf4 } \tuplet 3/2 { g4 bf4 g4 } | e2 af4. e8 |
  \break
  f1 | \tuplet 3/2 { g4 af4 bf4 } c4 c4 | c1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
