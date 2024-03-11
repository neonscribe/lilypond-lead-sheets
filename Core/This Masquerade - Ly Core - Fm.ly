%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "This Masquerade"
  subtitle = \instrument
  poet = ""
  composer = "Leon Russell"
  copyright = "© 1977 Skyhill Music"
}

introLyrics = \lyricmode {
}

introChords = \chordmode {
  f1:m7 bf1:7
}

introKey = f

introMelody = \relative f' {
  \time 4/4
  \key \introKey \minor
  \clef \whatClef
  \tempo "Medium-Slow Latin/Rock" 4 = 91
  
  \bar ".|:"
  \repeat volta 2 {
  \rsq-"Vamp until cue" \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  }
}

refrainLyrics = \lyricmode {
  Are we real -- ly hap -- py here
  with this lone -- ly game we play, __
  Look -- ing for words __ to say? __
  Search -- ing but not find -- ing un -- der -- stand -- ing an -- y -- way, __
  We're lost __ in a mas -- quer -- ade. __
  Both a -- fraid to say __ we're just __ too far __ a -- way __
  From be -- ing close to -- geth -- er from the start. __
  We tried to talk __ it o -- ver, but the words __ got in the __ way. __
  We're lost __ in -- side __ this lone -- ly game we play. __
  Thoughts of leav -- ing dis -- ap -- pear
  ev -- 'ry time I see your eyes __
  No mat -- ter how hard __ I try. __
  To un -- der -- stand the rea -- sons that we __ car -- ry on this way, __
  We're lost __ in a mas -- quer -- ade. __
}

refrainNewRealChords = \chordmode {
  f1:m f1:m7+ f1:m7 bf1:13
  f1:m7 df1:9 g1:m7.11 c1:7.5+.9+
  
  f1:m f1:m7+ f1:m7 bf1:13
  df1:7 c1:7.5+ f1:m7 f2:m7 e4:m7 a4:7
  
  ef1:m7 af1:13.9- df1:maj7 df1:maj7
  ef1:m7 af1:13.9- df1:maj7 df1:maj7

  d1:m7 g2:13 g2:7.5+ c1:maj7 c1:maj7
  g1:m7 g2:13 g2:7.5+ c1:sus9 c4:sus9 gf2.:13.11+

  f1:m f1:m7+ f1:m7 bf1:13
  f1:m7 df1:9 g1:m7.11 c1:7.5+.9+
  
  f1:m f1:m7+ f1:m7 bf1:13
  df1:7 c1:7.5+ f1:m7 bf1:13
}

refrainRealBookCDChords = \chordmode {
  f1:m f1:m7+ f1:m7 bf1:7
  f1:m7 df1:7 g1:m7 c1:7.5+
  
  f1:m f1:m7+ f1:m7 bf1:7
  df1:7 c1:7.5+ f1:m7 f2:m7 e2:m7
  
  ef1:m7 af1:7 df1:maj7 bf1:7.5+
  ef1:m7 af1:7 df1:maj7 df1:maj7

  d1:m7 g2:13 g2:7.5+ c1:maj7 c1:maj7
  g1:m7 g2:13 g2:7.5+ g1:m7/c g4:m7/c gf2.:13

  f1:m f1:m7+ f1:m7 bf1:7
  f1:m7 df1:7 g1:m7 c1:7.5+
  
  f1:m f1:m7+ f1:m7 bf1:7
  df1:7 c1:7.5+ f1:m7 bf1:7
}

refrainChords = \refrainRealBookCDChords

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef

  \mark \markup{ \box "A1" }
  
  r4 f8 g8 af8 bf4 c8~ | c8 g'4 f8~ f4 c8 bf8 | af4. bf8 c4 af8 f8~ | f2 r2 |
  \break
  r2 af8 g8 af8 ef'8~ | ef2. ef8 c8~ | c2 r2 | r1 |
  \break

  r4 f,8 g8 af8 bf4 c8~ | c8 g'4 f8~ f8 cf8( bf8) af8~ | af4 bf8 c4 af4 f8~ | f2 r4 c8 f8~ |
  \break
  f2 r8 af8 bf8 cf8~( | cf8 bf8~ bf2) af8 f8~ | f1 | r1 |

  \bar "||"
  \pageBreak

  \mark \markup{ \box "B" }

  r4 df'8 ef8 f4 gf8 f8~ | f4 ef8 df8~ df4 ef8 f8~ | f8 af,8( f8) af8~ af2 | r1 |
  \break
  r8 af8 df8 ef8 f4 gf8 f8~ | f8 ef4. df4 af'8 af8( | f1) | r2 r4 r8 f8 |
  \break
  d4 e8 f8~ f4 g8 af8~ | af8 g4. r8 g8 f8 g8~ | g4 g,8 g4 g8( e8) g8~ | g2 r4 g8 bf8~ |
  \break
  bf2 r4 g8 b8~ | b2 r4 g8 c8~ | c4 d8 bf8~ bf4 c8 g8~ | g4 r4 r2 |

  \bar "||"

  \mark \markup{ \box "A2" }
  
  r4 f8 g8 af8 bf4 c8~ | c8 g'4 f8~ f4 c8 bf8 | af4. bf8 c4 af8 f8~ | f2 r2 |
  \break
  r4 r8 af8 af8 g8 af8 ef'8~ | ef2. ef8 c8~ | c2 r2 | r1 |
  \break

  r8 c,8 f8 g8 af8 bf4 c8~ | c8 g'4 f8~ f8 cf8( bf8) af8~ | af4 bf8 c4 af4 f8~ | f2 r4 c8 f8~ |
  \break
  f2 r8 af8 bf8 cf8~( | cf8 bf8~ bf2) af8 f'8~ | f1 | r1 |

  \bar "|."
}

outroLyrics = \lyricmode {
}

outroChords = \chordmode {
  f1:m7 bf1:7
}

outroKey = f

outroMelody = \relative f' {
  \time 4/4
  \key \outroKey \minor
  \clef \whatClef
  
  \bar ".|:"
  \repeat volta 2 {
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  }
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/intro.ily"
\include "../Include/refrain.ily"
\include "../Include/outro.ily"

performanceNotes =
\markup {
  \vspace #1
  \column {
    \line { \huge { Vamp in i-IV7, Vocal A1,B,A2, guitar solo A1 (no turnaround), } }
    \line { \huge { accordion solo repeat A1, Vocal B,A2, vamp out i-IV7 } }
  }
}

\include "../Include/notes.ily"
