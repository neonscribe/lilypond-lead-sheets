%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Midnight in Moscow"
  subtitle = \instrument
  poet = ""
  composer = "Based on a song by Vassili Soloviev-Sedoy and M. Matusovsky, New Music by Kenny Ball"
  copyright = "© 1961 Tyler Music, Ltd."
}

refrainLyrics = \lyricmode {
_ _ Still -- ness in the grove, not a rus -- tling sound;
soft -- ly shines the moon clear and bright.

Dear, if you could know __ _ how I trea -- sure so __
this _ most beau -- ti -- ful Mos _ -- cow _ night.

Dear, if you could know __ _ how I trea -- sure so __
this _ most beau -- ti -- ful Mos _ -- cow _ night. __
}

refrainChords = \chordmode {
  s2
  
  d1:m g1:m d2:m a2:7 d1:m
  f1 g2:m7 c2:7 f1 e2:7 a2:7
  
  d1:m d1:m g1:m g1:m
  d1:m a1:7 d1 e2:7 a2:7

  d1:m d1:m g1:m g1:m
  d1:m a1:7 d1:m d1:m
}

refrainKey = d

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Swing" 4 = 170

  \partial 2 a,4 cs4 |
  \bar "$"

  \xTextMark \markup{ \bold \box "A" }
  
  d4 f4 a4 f4 | g2 f4 e4 | a2 g2 | d1 |
  \break
  f4 a4 c4 c4 | d2 c4 bf4 | a1 | b2 cs2 |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "B1" }
  
  e4 d4 a2~ | a4 f4 e4 d4 | a'4 g4 bf2~ | bf2 c8. c16 bf4 |
  \break
  a2 g4 f4 | a4 g4 f4 e4 | d2. r4 | b'2 cs2 |

  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "B2" }
  
  e4 d4 a2~ | a4 f4 e4 d4 | a'4 g4 bf2~ | bf2 c8. c16 bf4 |
  \break
  a2 g4 f4 | a4 g4 f4 e4 | d1~ | d4 r4 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
