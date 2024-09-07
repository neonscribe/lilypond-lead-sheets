%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "When I Fall in Love"
  subtitle = \instrument
  poet = "Edward Heyman"
  composer = "Victor Young"
  copyright = "© 1952 Chappell & Co."
}

refrainLyrics = \lyricmode {
When I fall in love
it will be for -- ev -- er,
or I'll nev -- er fall in love. __
In a rest -- less world like this is,
love is end -- ed be -- fore it's be -- gun,
And too man -- y moon -- light kiss -- es
seem to cool in the warmth of the sun.
When I give my heart
it will be com -- plete -- ly,
or I'll nev -- er give my heart, __
And the mo -- ment I can feel
that you feel that way too,
is when I fall in love with you.
}

refrainChords = \chordmode {
  ef2:maj7 c2:7 f2:m7 bf2:7 ef2:maj7 c2:7 f2:m7 bf2:7
  ef2:maj7 af2:7 df2:7 c2:7 f2:7 b2:7.5- bf1:7

  ef2:maj7 a2:7.5- af2:maj7 df2:7 g2:m7 af2:maj7 g2:m7.5- c2:7.5+.9-
  f1:m7 c1:7.9- f2:m7 c2:7.5+ f2:m7 bf2:7

  ef2:maj7 c2:7 f2:m7 bf2:7 ef2:maj7 c2:7 f2:m7 bf2:7
  ef2:maj7 af2:7 df2:7 c2:7 f2:7 b2:7.5- bf1:7

  ef2:maj7 a2:7.5- af1:maj7 g2:m7 c2:7 f2:m7 df2:7
  ef2:maj7 c2:7 f2:m7 bf2:7 ef1:6
  \chordOpenParen{ f2:m7 }
  \chordCloseParen{ bf2:7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad" 4 = 100

  \xTextMark \markup{ \bold \box "A1" }
  
  bf,4 ef4 af4 g4 | ef1 | bf4 ef4 af4 g4 | ef4 f2. |
  \break
  bf,4 ef4 c'4 bf4 | af2 g2 | f1~ | f2. g8 af8 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  bf4. ef,8 ef4 ef4 | g4 f2 g8 af8 |
  \tuplet 3/2 { bf4 g4 af4 } \tuplet 3/2 { bf4 g4 af4 } | bf2. af8 bf8 |
  \break
  c4. f,8 f4 f4 | af4 g2 af8 bf8 |
  \tuplet 3/2 { c4 af4 bf4 } \tuplet 3/2 { c4 af4 c4 } | bf1 |

  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  bf,4 ef4 af4 g4 | ef1 | bf4 ef4 af4 g4 | ef4 f2. |
  \break
  bf,4 ef4 c'4 bf4 | af2 g2 | f1~ | f2. g8 af8 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "C" }
  
  bf4. ef,8 ef4 ef4 | d'4 c2 c,4 | c'4 bf2 c4 | af2. f4 |
  \break
  bf,4 ef4 af4 g4 | ef2 f2 | ef1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
