%% -*- Mode: LilyPond -*-

#(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "The Folks Who Live on the Hill"
  subtitle = \instrument
  poet = "Oscar Hammerstein II"
  composer = "Jerome Kern"
  copyright = "© 1937 Chappell & Co."
}

verseLyrics = \lyricmode {
  Man -- y men with loft -- y aims,
  Strive for loft -- y goals.
  Oth -- ers play at small -- er games,
  be -- ing simp -- ler souls.
  I am of the lat -- ter breed; 
  all I want to do
  is to find a spot of land
  and live there with you.
}

verseChords = \chordmode {
  c1 g1:7sus f2/g g2:7 c1:maj7/g
  a1:m7 d1:m7 g1:7 c1:6/g
  c1/e d1:m7 g1:7 c1:6
  c1:m6 g1/d d1:7.9- g2:7.5+ g2:7
}

verseKey = c

verseMelody = \relative g' {
  \time 2/2
  \key \verseKey \major
  \clef \whatClef
  \tempo "Moderately"

  \xTextMark \markup{ "Verse" }
  
  c4 g4 g4 c4 | c4 g4 g2 | c4 g4 g4 b4 | b1 |
  \break
  b4 g4 g4 b4 | b4 g4 g2 | b4 g4 g4 a4 | a1 |
  \break
  c,4 c4 c4 c4 | g'4 g4 g2 | b,4 b4 b4 b4 | a'1 |
  \break
  g4 g4 g4 g4 | d'4 e4 d2\fermata | r4 ef,4 \tuplet 3/2 { ef4 ef4 ef4 } | g1 |

  \bar "||"

  \xPageBreak
}

refrainLyricsOne = \lyricmode {
  Some -- day we'll build a home
  on a hill -- top high, you _ and I, __
  Shin -- y and new, a cot -- tage that two can fill.
  And we'll be pleased to be called __

  The folks who live on the hill.

  Our ver -- an -- da will com -- mand a view of mea -- dows green,
  The sort of view that seems to want to be seen.
  And when the kids grow up and

  leave us,
  We'll sit and look at the same old view, just we two.
  Dar -- by and Joan who, used to be Jack and Jill,
  The folks who like to be called __
  what they have al -- ways been called __
  The folks who live on the hill. __
}

refrainLyricsTwo = \lyricmode {
  Some -- day we may be add -- ing
  a thing or two, a wing or two.
  We will make chan -- ges as an -- y fam -- ily will.
  But we will al -- ways be called
}

refrainChords = \chordmode {
  c2:maj7 cs2:dim7 d2:m7 g2:7 e2:m7 ef2:dim7 d2:m7 g2:7
  e2:m7 a2:m7 d2:m7 g2:7 bf2:7.5- a2:7 d2:m7 g2:7
  e2:m7 a2:m7 d2:m7 g2:7 
  c4:6 
  \chordOpenParen{ a4:m7 }
  d4:m7
  \chordCloseParen{ g4:7 }

  \chordOpenParen{ fs2:m7.5- }
  \chordCloseParen{ b2:7.9- }
  
  e1:m fs2:m7.5- b2:7.9- e2:m e2:m/ds e2:m/d a4:7/cs d4:7
  g2:6 g2:7/f e4:m7 a4:7 d4:m7 g4:7
  
  c2:maj7 cs2:dim7 d2:m7 g2:7 e2:m7 ef2:dim7 d2:m7 g2:7
  e2:m7 a2:m7 d2:m7 g2:7 bf2:7.5- a2:7 d2:m7 g2:7
  e2:m7 a2:m7 d2:m7 g2:7 e2:m7.5- a2:7 d2:m7 g2:7
  c2:6
  \chordOpenParen{ a2:m7 }
  d2:m7
  \chordCloseParen{ g2:7 }
}

refrainKey = c

refrainMelody = \relative g' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef

  \xTextMark \markup{ "Refrain" \bold \box "A1,A2" }
  \set Score.currentBarNumber = #1
  \tempo "Ballad" 4 = 70
  
  \bar ".|:"
  

  \repeat volta 2 {
    e2 e2 | r8 f8 g8 a8 c8 c4 b8 | d4 a8 c8~ c2 | 

    {
      \set melismaBusyProperties = #'()
      \slurDown
      \slurDashed
      b8( b8)
      \unset melismaBusyProperties
    }

    f8 a8~ a2 |
    \break
    g8 a8 g8 c8~ c4 c4 | e,8 f8 e8 a8~ a4 a4 | e1 | r8 f8 g8 a8 b8 a8 b8 g8~ |
    \break
    g1 | r8 f8 g8 a8 d,8 c8 d8 c8~ |
    c1^\markup{ "Turnaround to " \bold \box "A2" } |
    r1^\markup{ "Turnaround to " \bold \box "B" } |
  }
  
  \set Score.currentBarNumber = #13
  \sectNoBar "B"
  
  g'2~ g8 b8 c8 b8 | fs8 b8 c8 b8 b,8 fs'8 g8 fs8 | g2~ g8 g8 a8 g8 | b8 g8 a8 g8 b8 g8 a4 |
  g1 | r8 g8 a8 g8 a8 g8 a8 g8 |

  \sect "A3"

  e2 e2 | r8 f8 g8 a8 c8 c4 b8 | d4 a8 c8~ c2 | b4 f8 a8~ a2 |
  \break
  g8 a8 g8 c8~ c4 c4 | e,8 f8 e8 a8~ a4 a4 | e1 | r8 f8 g8 a8 b8 a8 b8 g8~ |
  \break
  g1 | r8 f8 g8 a8 d8 c8 d8 e8~ | e1 | r8 c8 d8 e8 d8 c8 d8 c8~ | c1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/verse.ily"

\include "../Include/refrain-two-verses.ily"
