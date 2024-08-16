%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "It Don't Mean a Thing (If It Ain't Got That Swing)"
  subtitle = \instrument
  poet = "Irving Mills"
  composer = "Duke Ellington"
  copyright = "© 1932 Mills Music"
}

refrainLyrics = \lyricmode {
  It don't mean a thing if it ain't got that swing,
  doo wah, doo wah, doo wah, doo wah, doo wah, doo wah, doo wah, doo wah.
  It don't mean a thing, all you got to do is sing,
  doo wah, doo wah, doo wah, doo wah, doo wah, doo wah, doo wah, doo wah.
  It makes no diff -- 'rence if it's sweet or hot;
  Just give that rhy -- thm ev -- 'ry -- thing you got.
  It don't mean a thing if it ain't got that swing,
  doo wah, doo wah, doo wah, doo wah, doo wah, doo wah, doo wah, doo wah.
}

refrainChords = \chordmode {
  s4
  g2:m g2:m/fs g2:m/f g2:m/e ef2:7 d2:7 g1:m
  c1:7 f1:sus7 bf1:6 d1:7.5+

  g2:m g2:m/fs g2:m/f g2:m/e ef2:7 d2:7 g1:m
  c1:7 f1:sus7 bf1:6 bf1:6
  
  f1:m7 bf1:7 ef1:maj7 ef1:maj7
  g1:m7 c1:7 f1:7 d1:7

  g2:m g2:m/fs g2:m/f g2:m/e ef2:7 d2:7 g1:m
  c1:7 f1:sus7 bf1:6 bf1:6
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Fast Swing" 4 = 210

  \partial 4 d'4 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  g,2 g4 bf4 | d2 g,4 bf4 | df2 c8 bf4 g8~ | g1 |
  \break
  r4 bf8 bf8~ bf8 bf8 bf4 | bf8 bf4 bf8 bf4 bf8 bf8~ |
  bf8 bf8 bf4 bf8 bf4 bf8 | bf4 r4 r4 bf4 |

  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  g2 g4 bf4 | d2~ d8 bf4 g8 | bf4 bf4 bf4 g4 | bf1 |
  \break
  r4 bf8 bf8~ bf8 bf8 bf4 | bf8 bf4 bf8 bf4 bf8 bf8~ |
  bf8 bf8 bf4 bf8 bf4 bf8 | bf2. c4 |

  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  c4 c4 c8 bf4 c8~ | c4 bf4 c8 bf4. | g1~ | g2. c4 |
  \break
  c4 c4 c8 c4. | c4 bf4 c8 c4. | f,1 | r2 r4 bf4 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A3" }

  g2 g4 bf4 | d2 g,4 bf4 | df2 c8 bf4 g8~ | g1 |
  \break
  r4 bf8 bf8~ bf8 bf8 bf4 | bf8 bf4 bf8 bf4 bf8 bf8~ |
  bf8 bf8 bf4 bf8 bf4 bf8 | bf4 r4 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
