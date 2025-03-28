%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  (set-global-staff-size 16))

\header {
  title = "Goodbye Pork Pie Hat"
  subtitle = \instrument
  poet = ""
  composer = "Charles Mingus"
  copyright = \markup \small "© 1959 Jazz Workshop, Inc."
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  s4
  
  ef2:7.9+ b2:9.13 e2:maj9 a2:7.11+ df2:sus9 b2:9.13
  df2:sus7 ef2:7 af2:m11 b2:7.13 f2:m7.5- bf2:7.5+.9+
  c2:13.11+ f2:7.13 b2:7 e2:maj7 a2:7.13 af2:7
  bf2:7 df2:7 ef2:7.9+ b2:7 e2:maj7.11+ a2:7.11+
  
  ef2:m7 af2:m7 ef2:m7 af2:m7 ef2:m7 af2:m7 ef2:m7 a2:7.5+ af1:m7 b2:7 bf2:7.5+
  ef2:m7 af2:m7 ef2:m7 af2:m7 c2:m7.5- f2:7.5+.9+ fs2:m7 b4:7 
  \chordInsideParens{ bf4:7 } ef2:m7 af2:7 ef2:m7 af2:7
  
  e2:maj7.11+ a2:7.11+ ef1:m e1:maj7 ef1:m
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad" 4 = 56

  \partial 4 \invisEighth bf,8 |
  \bar "||"

  \xTextMark \markup{ \bold \box "Head" \musicglyph #"scripts.segno" }
  
  ef8 gf4 ef16 gf16 af8 gf4 ef16 df16 | ef8 gf4 ef16 df16 ef4. bf8 |
  \break
  ef8 gf4 ef16 gf16 a8 af4 ef16 df16 | ef8 gf4 ef16 df16 ef4. ef8 |
  \break
  bf'8 df4 ef,16 gf16 af8 gf4 ef16 gf16 |
  bf8 ef4 gf,16 af16 \tuplet 3/2 { df4 bf8 } \tuplet 3/2 { gf8 d8 b8 } |
  \break
  \tuplet 3/2 { fs'4 a8~ } a8 <e ds>8 \tuplet 3/2 { d4 a'8~ } a8 f8 |
  fs2 ds4. a'16 gs16 |
  \break
  fs2 ef2 | af8 gf8 ef8 df8 a'8 af8 gf8 ef8 |
  \break
  fs2 ds2 \textToCodaLastTime | \tuplet 3/2 { as'4 gs4 fs4 } \tuplet 3/2 { ds4 cs4 bf4 } |

  \break

  \xTextMark \markup{ \bold \box "Solos" }
  
  \bar ".|:-||"
  \repeat volta 2 {
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \dalSegno \rsq |
  }
  \bar "||-:|."

  \textCodaBreak
  
  \tuplet 3/2 { as'4 gs4 fs4 } \tuplet 3/2 { ds4 cs4 bf4 } |
  af'1~\fermata | af1~\fermata | af1\fermata | 
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
