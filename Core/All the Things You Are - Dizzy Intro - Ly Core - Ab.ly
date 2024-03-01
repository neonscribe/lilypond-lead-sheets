%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "All the Things You Are"
  subtitle = \instrument
  poet = "Oscar Hammerstein II"
  composer = "Jerome Kern"
  copyright = "© 1939 T.B. Harms Co."
}

introLyrics = \lyricmode {
}

introChords = \chordmode {
  s8
  s4 s8 df8*9:7.9+ s2
  s4 s8 c8*9:7.9+ s2
  s4 s8 df8*9:7.9+ s2
  s4 s8 c8*9:7.9+ s2
}

introKicksOverTime = {
  \partial 8 s8 |
  r4 r8 df8~ df2~ | df2 r2 | r4 r8 c8~ c2~ | c2 r2 |
  r4 r8 df8~ df2~ | df2 r2 | r4 r8 c8~ c2~ | c2 r2 |
}

introKey = af

introMelody = \relative f' {
  \time 4/4
  \key \introKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 130

  \mark \markup{ \box "Intro" }
  
  \partial 8 a8 |
  af8 df,8~ df2~ df8 a'8 | af8 df,4 a'8 af8 df,4 af'8 | g8 c,8~ c2~ c8 af'8 | g8 c,4 af'8 g8 c,4 a'8 |
  af8 df,8~ df2~ df8 a'8 | af8 df,4 a'8 af8 df,4 af'8 | g8 c,8~ c2~ c8 af'8 | g8 c,4 af'8 g8 c,4 r8 |

  \bar "|."
}

outroLyrics = \lyricmode {
}

outroChords = \chordmode {
  s8
  s4 s8 df8*9:7.9+ s2
  s4 s8 c8*9:7.9+ s2
  s4 s8 df8*9:7.9+ s2
  s4 s8 c8*5:7.9+ s1
}

outroKicksOverTime = {
  \time 4/4
  \partial 8 s8 | r4 r8 df8~ df2~ | df2 r2 | r4 r8 c8~ c2~ | c2 r2 |
  r4 r8 df8~ df2~ | df2 r2 | r4 r8 c8~ c2\fermata | r1 |
}

outroKey = af

outroMelody = \relative f' {
  \time 4/4
  \key af \major
  \clef \whatClef
  \tempo "Medium" 4 = 130

  \mark \markup{ \box "Outro" }
  
  \partial 8 a8 |
  af8 df,8~ df2~ df8 a'8 | af8 df,4 a'8 af8 df,4 af'8 | g8 c,8~ c2~ c8 af'8 | g8 c,4 af'8 g8 c,4 a'8 |
  af8 df,8~ df2~ df8 a'8 | af8 df,4 a'8 af8 df,4 af'8 | g8 c,8~ c2\fermata r4 | r1 |

  \bar "|."
  \pageBreak
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/intro-with-kicks.ily"

\markup {
  % Leave a gap between
  \vspace #4
}

\include "../Include/outro-with-kicks.ily"
