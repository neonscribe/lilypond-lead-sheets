%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "What Is This Thing Called Love?"
  subtitle = \instrument
  poet = ""
  composer = "Cole Porter"
  copyright = "© 1930 HARMS Inc."
}

refrainLyrics = \lyricmode {
What is this thing called love?
This fun -- ny thing called love?
Just who can solve its mys -- ter -- y?
Why should it make a fool of me?
I saw you there one won -- der -- ful day,
You took my heart and threw it a -- way.
That's why I ask the lord in hea -- ven a -- bove,
What is this thing called love?
}

refrainChords = \chordmode {
  s4
  
  g1:m7.5- c1:7.9- f1:m6 f1:m6
  d1:m7.5- g1:7.5+.9- c1:6 c1:6

  g1:m7.5- c1:7.9- f1:m6 f1:m6
  d1:m7.5- g1:7.5+.9- c1:6 c1:6

  c1:m7 f1:7 bf1:maj7 bf1:maj7
  af1:7 af1:7 d1:m7.5- g1:7.5+

  g1:m7.5- c1:7.9- f1:m6 f1:m6
  d1:m7.5- g1:7.5+.9- c1:6 c1:6
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 140

  \partial 4 bf4 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  bf4 g4 g2~ | g2 bf2 | af1 | r2 r4 af4 |
  \break
  af8 g4 g8~ g2~ | g2 ds2 | e1 | r2 r4 bf'4 |

  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  bf4 g4 g2~ | g4 bf4 bf4. a8 | af1 | r2 r4 af4 |
  \break
  af8 g4 g8~ g2~ | g4 ef4 ef8 ef4. | c1 | r2 r4 ef'4 |

  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  ef4 c4 c2~ | c4 ef4 \tuplet 3/2 { ef4 f4 ef4 } | d1 | r2 r4 d4 |
  \break
  c4 af4 af2~ | af4 c4 \tuplet 3/2 { c4 bf4 af4 } | g1 | r4 bf4 bf4 bf4 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A3" }

  bf4 g4 g2~ | g4 bf4 bf8 c4 bf8 | af1 | r2 r4 af4 |
  \break
  af4 g4 g2~ | g2 ef'2 | c1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
