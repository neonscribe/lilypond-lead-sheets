%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "One Note Samba (Samba de uma Nota Só)"
  subtitle = \instrument
  poet = "Newton Mendonça, Jon Hendricks"
  composer = "Antônio Carlos Jobim"
  copyright = "© 1960 Jobim Music"
}

bossaRhythm = ##t

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  s4.

  d1:m7 df1:7 c1:m7 b1:7.5-
  d1:m7 df1:7 c1:m7 b1:7.5-

  f1:m7 bf1:7 ef1:maj7 af1:7
  d1:m7 df1:7 c2:m7 b2:7.5- bf1:6
  
  ef1:m7 af1:7 df1:maj7 df1:maj7
  df1:m7 gf1:7 b1:maj7 c2:m7.5- b2:7.5-

  d1:m7 df1:7 c1:m7 b1:7.5-
  d1:m7 df1:7 c1:m7 b1:7.5-

  f1:m7 bf1:7 ef1:maj7 af1:7
  df1:6 c1:7 b1:maj7 bf2:6
  \chordInsideParens{ f2:7.5+ }
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Samba" 4 = 150

  \partial 4. f4 f8 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  f4 f8 f8~ f8 f4 f8~ | f4. f8 r8 f4 f8 | f4 f8 f8~ f8 f4 f8~ | f2 r8 f4 f8 |
  \break
  f4 f8 f8~ f8 f4 f8~ | f4. f8 r8 f4 f8 | f4 f8 f8~ f8 f4 f8~ | f2 r8 bf4 bf8 |

  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B1" }
  
  bf4 bf8 bf8~ bf8 bf4 bf8~ | bf8 bf8 bf4~ bf8 bf4 bf8 |
  bf4 bf8 bf8~ bf8 bf4 bf8~ | bf4. r8 r8 f4 f8 |
  \break
  f4 f8 f8~ f8 f4 f8~ | f8 f4 f8~ f8 f8 f4 | f4 f8 f8~ f8 f4 bf8 | r1 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "C" }
  
  bf8 c8 df8 ef8 df8 c8 bf8 af8 | gf8 f8 ef8 df8 c8 df8 ef8 f8 |
  c4. bf8 r8 c8 df8 f8 | c4. bf8 r2 |
  \break
  af'8 bf8 cf8 df8 cf8 bf8 af8 gf8 | ff8 ef8 df8 cf8 bf8 cf8 df8 ef8 |
  bf4. af8 r8 bf8 cf8 ef8 | gf4. f8 r8 f4 f8 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  f4 f8 f8~ f8 f4 f8~ | f4. f8 r8 f4 f8 | f4 f8 f8~ f8 f4 f8~ | f2 r8 f4 f8 |
  \break
  f4 f8 f8~ f8 f4 f8~ | f4. f8 r8 f4 f8 | f4 f8 f8~ f8 f4 f8~ | f2 r8 bf4 bf8 |

  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B2" }

  bf4 bf8 bf8~ bf8 bf4 bf8~ | bf4. bf8 r8 bf4 bf8 |
  bf4 bf8 bf8~ bf8 bf4 bf8~ | bf2 r8 bf4 bf8 |
  \break
  bf4 bf8 bf8~ bf8 bf4 bf8~ | bf8 bf4 bf8 bf4 bf4~ |
  bf4 bf8 bf8~ bf8 bf4 bf8 | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
