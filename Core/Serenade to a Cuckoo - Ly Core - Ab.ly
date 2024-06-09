%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Serenade to a Cuckoo"
  subtitle = \instrument
  poet = ""
  composer = "Roland Kirk"
  copyright = "© 1964 Second Floor Music"
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  f2:m f2:m/ef f2:m/df c2:7.9- f2:m/bf f2:m/af g2:m7.5- c2:7.9-
  f2:m f2:m/ef f2:m/df c2:7.9- f2:m/bf f2:m/af g2:m7.5- c2:7.9-
  bf2:m7 ef2:7 af2:maj7 df2:maj7 g2:m7.5- c2:7 f2:m f2:7
  bf2:m7 ef2:7 af2:maj7 df2:maj7 g2:m7.5- c2:7 f2:m f2:7
  g2:m7.5- c2:7 f1:m
}

refrainKey = af

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 144

  \textMark \markup{ \bold \box "Refrain" }
  
  r8 c'8-. r8 f,8 c'4. f,8 | c'8 c8 bf8 bf8 af8 f8 r8 ef8 | f4 f8 f8 af8 af8 r8 c8~ | c1 |
  \break
  r8 c8-. r8 f,8 c'4. f,8 | c'8 c8 bf8 bf8 af8 f8 r8 ef8 | f4 f8 f8 af8 f8 ef8 f8~ | f2. r4 |
  \break
  r8 f'8-^ r4 bf,2 | r8 ef8-^ r4 af,2 | r8 df8-^ r4 g,2 | g8 af8 bf8 c8~ c2 |
  \break
  r8 f8-^ r4 bf,2 | r8 ef8-^ r4 af,2 | r8 df8-^ r4 g,2 | g8 af8 g8 f8~ f2 |

  \bar "|."
  \break

  \textMark \markup{ \bold \box "Outro" }
  
  c'8 c8 c8 ef8-^ r8 df4.-> | c4-> r4 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
