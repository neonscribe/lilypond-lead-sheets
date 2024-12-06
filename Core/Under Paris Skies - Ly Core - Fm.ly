%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  (set-global-staff-size 16))

\header {
  title = "Sous le Ciel de Paris (Under Paris Skies)"
  subtitle = \instrument
  poet = "Jean Drejac"
  composer = "Hubert Giraud"
  copyright = "© 1951 Editions Choudens"
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  f2.:m7 f2.:m7 f2.:m7 f2.:m7
  b2.:m7 bf2.:m7/af bf2.:m7/g bf2.:m7/f
  c2.:7 c2.:7 c2.:7 c2.:7
  
  f2.:m f2.:m/ef bf2.:m7/df c2.:7
  
  f2.:m bf2.:m7 f2.:m r2.
  
  bf2.:m7 bf2.:m7  ef2.:7 ef2.:7
  af2.:6 af2.:6 af2.:6 af2.:6

  df2. bf2.:m7 g2.:7.5- g2.:7.5-
  c2.:7 c2.:7/bf f2.:m/af c2.:7/g
  
  f2.:m7 f2.:m7 f2.:m7 f2.:m7
  bf2.:m7 bf2.:m7/af bf2.:m7/g bf2.:m7/f
  c2.:7 c2.:7 c2.:7 c2.:7
  f2. f2. f2 r4*4
  
  f2.:maj7 f2.:maj7 f2.:maj7 f2.:maj7
  c2.:m7 c2.:m7 f2.:7 f2.:7
  bf2.:maj7 bf2.:maj7 bf2.:6 bf2.:6
  bf2.:m7 bf2.:m7 ef2.:7 ef2.:7
  
  f2. a2.:7/a d2.:m a2.:7/cs
  d2.:m c2.:7 f2. g2.:m7
  
  f2. f2. fs2:dim7 r4*4
  c2.:7 c2.:7/bf f2.:m/af c2.:7/g
  
  f2.:m bf2.:m f2.:m f2.:m
}

refrainKey = f

refrainMelody = \relative f' {
  \time 3/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Waltz" 4 = 150

  \xTextMark \markup{ \bold \box "A1,A2,A4" }
  
  \bar ".|:"
  \repeat volta 2 {
  c4 f4 g4 | af2 bf4 | c4 bf4 af4 | g4 f4 ef4 |
  df2. | c'2. | bf2.~ | bf2 r4 | c,4 e4 f4 | g2 af4 |
  bf4 df4 c4 | bf4 af4 g4 \textToCodaLastTime |
  \alternative { \volta 1 {
  f2.~ | f2.~ | f2. | R2.*1 |
  } \volta 2 {
  f2.~ | f2.~ | f2 r4 | g4 af4 g4 |
  } } }
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  f2. | f2. | f2. | g4 af4 g4 |
  f2. | f2. | f2. | g4 af4 g4 |
  f2 g4 | af2 bf4 | c4 df4 ef4 | df4 c4 bf4 |
  c2.~ | c2.~ | c2.~ | c4 r4 r4 |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "A3" }
  
  c,4 f4 g4 | af2 bf4 | c4 bf4 af4 | g4 f4 ef4 |
  df2. | c'2. | bf2.~ | bf2 r4 |
  c,4 e4 f4 | g2 af4 | bf4 df4 c4 | bf4 a4 g4 |
  a2.~ | a2.~ | a4 r4 c4 | c4 a4 f4 |

  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "C" }
  
  \key \refrainKey \major

  e2. | e2.~ | e4 r4 c'4 | c4 a4 f4 |
  ef2. | ef2.~ | ef4 r4 c'4 | c4 a4 f4 |
  d2. | d2.~ | d4 r4 bf'4 | bf4 f4 d4 |
  df2.~ | df2.~ | df2. | f4 ef4 df4 |
  c2 c4 | cs2 cs4 | d2 d4 | e2 e4 |
  f2 f4 | g2 g4 | a2 r4 | bf4 a4 bf4 |
  c2.~ | c2.~ | c4 r4 c4 | d4 bf4 g4 |
  c2.~ | c2.~ | c2.~ | c2 r4 \daCapo |

  \bar "|."
  
  \textCodaBreak
  
  \key \refrainKey \minor

  f2.~ | f2.~ | f2.~ | f4 r4 r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
