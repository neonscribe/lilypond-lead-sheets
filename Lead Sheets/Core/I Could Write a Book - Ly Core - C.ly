%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "I Could Write A Book"
  subtitle = \instrument
  poet = "Lorenz Hart"
  composer = "Richard Rodgers"
  copyright = "© 1940 Chapell & Co"
}

refrainLyrics = \lyricmode {
  If they asked me I could write a book, __
  a -- bout the way you walk and whis -- per and look. __
  I could write a pre -- face on how we met,
  so the world would nev -- er for -- get. __
  And the sim -- ple se -- cret of the plot __
  is just to tell them that I love you a lot. __
  Then the world dis -- cov -- ers as my book ends,
  how to
  make two lov -- ers of friends.
}

refrainChords = \chordmode {

  s2

  c2:maj7 a2:m7 d2:m7 g2:7 e2:m7 a2:m7 d2:m7 g2:7
  c1:maj7 e2:m7 a2:7.9- d1:m7 b2:m7.5- e2:7
  
  a1:m7 d2:m7 g2:7 fs2:m7.5- b2:7 e1:m7
  a1:m7 d1:7 d1:m7 g1:7

  c2:maj7 a2:m7 d2:m7 g2:7 e2:m7 a2:m7 d2:m7 g2:7
  c1:maj7 e2:m7 a2:7.9- d1:m7 b2:m7.5- e2:7
  
  a1:m7 af1:7 g2:m7 c2:7 f2:maj7 bf2:7
  e2:m7 a2:7.9- d2:m7 g2:7 c1:6
  
  \chordOpenParen{ d2:m7 }
  \chordCloseParen{ g2:7 }
}

refrainKey = c

refrainMelody = \relative c' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Fast Swing" 4 = 150

  \partial 2 e4 f
  \bar "||"

  \xTextMark \markup{ \bold \box A1 }
  g2 b | a4 g e d | e1~ | e4 g e d |
  \break
  e4 g e d | e c'2 e,4 | g1~ | g2 a4 b
  \bar "||"
  \break


  \xTextMark \markup{ \bold \box B }
  c2 c | c4 d2 b4 | a2 a | g e4 fs |
  \break
  g2 g | g4 a2 fs4 | g1~ | g4 r4 e f |
  \bar "||"
  \break
  
  \xTextMark \markup{ \bold \box A2 }
  g2 b | a4 g e d | e1~ | e4 g e d |
  \break
  e4 g e d | e c'2 e,4 | g1~ | g2 a4 b |
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box C }
  c2 c | c4 d2 b4 | bf2 bf | a g4 f |
  \break
  e2 e | d4 c'2 b4 | c1 | r1

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

performanceNotes =
\markup {
  \column {
    \line { \huge { Bass & vocal A1 & B. Band joins A2 & C.  } }
    \line { \huge { Clarinet solo full chorus. } }
    \line { \huge { Vocal out chorus, segue to A Beautiful Friendship. } }
    \line { \huge { Bass walks throughout, switches to two-feel after segue. } }
  }
}

\include "../Include/notes.ily"
