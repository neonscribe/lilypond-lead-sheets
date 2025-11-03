%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "I'm a Fool to Want You"
  subtitle = \instrument
  poet = ""
  composer = "Jack Wolf, Joel Herron and Frank Sinatra"
  copyright = \markup \small "© 1951 Barton Music Corp."
}

refrainLyrics = \lyricmode {
I'm a fool to want you
I'm a fool to want you
To want a love that can't be true
A love that's there for oth -- ers too

I'm a fool to hold you
Such a fool to hold you
To seek a kiss not mine a -- lone
To share a kiss the dev -- il has known

Time and time a -- gain I said I'd leave you
Time and time a -- gain I went a -- way
But then would come the time when I would need you
And once a -- gain these words I'll have to say

Take me back, I love you
Pit -- y me, I need you
I know it's wrong, it must be wrong
But right or wrong I can't get a -- long
With -- out you
}

refrainChords = \chordmode {
  s2.
  
  e1:m7 e2:m7 e2:7.9- a1:m7 fs2:m7.5- b2:7.9-
  e1:m7 a1:m7 c1:9 b2:7 b2:7.9-

  e1:m7 e2:m7 e2:7.9- a1:m7 fs2:m7.5- b2:7.9-
  e1:m7 a1:7 fs2:m7.5- b2:7.9- e1:m7
  
  a2:m a2:m7+ a2:m7 d2:7 g1:maj7 g1:6
  a2:m a2:m7+ a2:m7 d2:7 g1:maj7 g1:6

  fs1:m7.5- b1:7.9- e1:m7 e1:m7
  g1:m7 c1:9 fs1:m7.5- b1:7.9-

  e1:m7 e2:m7 e2:7.9- a2:m7 fs2:m7.5- b2:7.9-
  e1:m7 c1:9 a1:7 fs2:m7.5- b2:7.9-
  e1:m7 e2:m7
  \chordInsideParens{ b2:7.5+.9- }
}

refrainKey = e

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Slow Ballad [Frank Sinatra 1951]" 4 = 60

  \partial 2. bf,8 b8 g'4. ds8 |

  \sectNoBreak "A1"
  
  fs8 e4.~ e2 | r4 ds8 e8 c'4. gs8 | b8 a4.~ a2 | r4 a4 b4 c4 |
  \break
  c4 b4 fs4 g4 | a4. e8 fs4 g4 | a4. g8 fs8 e4 fs8~ | fs4 bf,8 b8 g'4. ds8 |

  \sect "A2"
  
  fs8 e4.~ e2 | r4 ds8 e8 c'4. gs8 | b8 a4.~ a2 | r4 a4 b4 c4 |
  \break
  c4 b4 fs4 g4 | a4. e8 fs4 g4 | b4. b8 b8 fs4 g8 | e2. r4 |
  \bar "||"
  
  \xPageBreak

  \sectNoBarNoBreak "B"
  
  e'4. e8 e4. e8 | e2 \tuplet 3/2 { e4 e4 e4 } | e4 e2.~ | e2. r4 |
  \break
  c4. c8 c4. c8 | c2 \tuplet 3/2 { c4 d4 c4 } | b1~ | b2 r4 b4 |
  \break
  a4. a8 a4. a8 | a4. a8 a4. a8 | a4 g2.~ | g2 r4 e4 |
  \break
  g4. g8 g4. g8 | g4 e4 fs4 e4 | fs1 | r4 bf,8 b8 g'4. ds8 |
  
  \sect "A3"

  fs8 e4.~ e2 | r4 ds8 e8 c'4. gs8 | b8 a4.~ a2 | r4 a4 b4 c4 |
  \break
  c4. b8 fs4 g4 | a4. e8 fs4 g4 | d'4. d8 \tuplet 3/2 { c4 d4 c4 } |
  \break
  b2~ b8 fs8 g4 |
  e1~ | e2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
