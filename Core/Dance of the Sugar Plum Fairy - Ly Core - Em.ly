%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Dance of the Sugar Plum Fairy"
  subtitle = "The Nutcracker (Щелкунчик) Op. 71 "
  subsubtitle = \instrument
  poet = ""
  composer = "Pyotr Il'yich Tchaikovsky (Пётр Ильич Чайковский)"
  copyright = "1892"
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  e2:m a2:m6/e e2:dim7 ds2:dim7/e
  
  e2.:m a4:m6/e ds4:dim/e e4:dim d2:dim7/e
  e2:dim7 ds2:dim7/e e4:m a4:m e2:m
  
  c2:7 a2:dim7 ds4:dim7/e e4:m fs2:7.9-
  b2:m/fs fs2:7 b4 fs4:7.5- b2
  
  e2.:m a4:m6/e ds4:dim7/e e4:dim7 d2:dim7/e
  e2:dim7 ds2:dim7/e e4:m a4:m e2:m

  fs2.:7 b4:7 e2.:7 a4:7
  d2.:7 g4 b2:7 e2:m
}

refrainKey = e

refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium-Fast" 4 = 180

  \xTextMark \markup{ \bold \box "Intro" }
  
  \bar ".|:"
  \repeat volta 2 {
  r4 e4 r4 fs4 | r4 g4 r4 ds4 |
  }

  \break

  \xTextMark \markup{ \bold \box "A" }
  
  r4 fs'8 e8 g4 fs4 | ds4 e4 d8 d8 d4 |
  \break
  cs8 cs8 cs4 c8 c8 c4 | b8 e8 c8 e8 b4 e,16 d16 c16 b16 |
  \break
  bf4 g''8 e8 g4 fs4 | c'4 b4 g8 g8 g4 |
  \break
  fs8 fs8 fs4 e8 e8 e4 | ds8 fs8 e8 fs8 ds4 b,16 a16 g16 fs16 |
  
  \sect "B"
  
  e4 g''8 e8 g4 fs4 | ds4 e4 d8 d8 d4 |
  \break
  cs8 cs8 cs4 c8 c8 c4 | b8 e8 c8 e8 b4 g16 fs16 e16 d16 |
  \break
  cs4 e'8 cs8 e4 ds4 | b,4 d'8 b8 d4 cs4 |
  \break
  a,4 c'8 a8 c4 b4 | b,4 b'16 ds16 fs16 b16 e,4 e,4 |
  
  \sect "C"

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
