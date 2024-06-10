%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Now's the Time"
  subtitle = \instrument
  poet = ""
  composer = "Charlie Parker"
  copyright = "© 1945 Atlantic Music Corp."
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  s8

  f1:7 bf1:7 f1:7 f1:7
  bf1:7 b1:dim7 f2:7/c e2:7 
  ef2:7 d2:7.5+.9+ g1:m7 c1:7 f1:7 f1:7

  f1:7 bf1:7 f1:7 f1:7
  bf1:7 bf1:7 f1:7 f1:7
  g1:m7 c1:7 f1:7 f1:7
  
  f1:7 f1:7
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Fast Blues" 4 = 194

  \partial 8 c8 |

  \xTextMark \markup { \bold \box "Refrain" }

  \bar ".|:"
  \repeat volta 2 {
  f8 f8 g8 c,8 f4-. r8 c8 | f8 f8 g8 c,8 f4-. r8 c8 | f8 f8 g8 c,8 f8 f8 g8 c,8 | f8 f8 g8 c,8 f4-. r8 c8 |
  \break
  f8 f8 g8 c,8 f8 bf,4.-> | f'8 f8 g8 c,8 f8 b,4.-> | f'8 f8 g8 c,8 f8 f8 g8 c,8 | f8 f8 g8 c,8 f4-. r8 af8~-> |
  \break
  \tuplet 3/2 { af16 bf16 af16 } f8 d8 c8 d4-. r4 | r8 g4.-> f8 g8 f8 ef8 \textToCodaLastTime |
  r8 c4-. bf8 c4-. r4 | r2 r4 r8
  \once \override Parentheses.font-size = #5
  \parenthesize c8 |
  }
  \break
  
  \xTextMark \markup { \bold \box "Solos" }
  
  \bar ":|.|:"
  \repeat volta 2 {
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  }
  \bar "||-:|."
  
  \textCodaBreak
  
  r8 c4-. bf8 c4-. r8 ef8-> | r8 c4-. bf8 c4-. e8-- f8-> |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup{ "Play head twice before and twice after solos, take coda second time at end." }
