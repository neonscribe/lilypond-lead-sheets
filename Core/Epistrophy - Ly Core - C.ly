%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  (set-global-staff-size 16))

\header {
  title = "Epistrophy"
  subtitle = \instrument
  poet = ""
  composer = "Thelonious Monk and Kenny Clarke"
  copyright = "© 1947 Embassy Music Corporation and Music Sales Corporation"
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  cs2:7 d2:7 cs2:7 d2:7 cs2:7 d2:7 cs2:7 d2:7 
  ds2:7 e2:7 ds2:7 e2:7 ds2:7 e2:7 ds2:7 e2:7 
  
  ds2:7 e2:7 ds2:7 e2:7 ds2:7 e2:7 ds2:7 e2:7 
  cs2:7 d2:7 cs2:7 d2:7 cs2:7 d2:7 cs2:7 d2:7 

  fs1:m6 fs1:m6 fs1:m6 fs1:m6 
  b1:7 b1:7 df1:7 d1:7

  ds2:7 e2:7 ds2:7 e2:7 ds2:7 e2:7 ds2:7 e2:7 
  cs2:7 d2:7 cs2:7 d2:7 cs2:7 d2:7 cs2:7 d2:7 

  cs2:7 d2:7 gf2:7.11+
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 133

  \xTextMark \markup{ \bold \box "A1" }
  
  r4 cs8 d8 as'8 b4. | cs,8 d8 as'8 b8~ b4 r4 |
  r4 cs,8 d8 bf'8 e,4. | cs8 d8 bf'8 e,8~ e4 r4 |
  \break
  r4 ds8 e8 c'8 cs4. | ds,8 e8 c'8 cs8~ cs4 r4 |
  r4 ds,8 e8 c'8 fs,4. | ds8 e8 c'8 fs,8~ fs4 r4 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  r4 ds8 e8 c'8 cs4. | ds,8 e8 c'8 cs8~ cs4 r4 |
  r4 ds,8 e8 c'8 fs,4. | ds8 e8 c'8 fs,8~ fs4 r4 |
  \break
  r4 cs8 d8 as'8 b4. | cs,8 d8 as'8 b8~ b4 r4 |
  r4 cs,8 d8 bf'8 e,4. | cs8 d8 bf'8 e,8~ e4 r4 |

  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  r2 cs8 ds8 fs8 gs8 | a4 gs8 a8 fs4 ds4 |
  r2 cs8 ds8 fs8 a8 | r8 a4 gs8 fs4 ds4 |
  \break
  r2 cs8 ds8 fs8 gs8 | b4 a8 b8 a4 fs4 |
  f8 af8 cf8 ef8~ ef8 cf4. | fs,8 a8 c8 e8~ e8 c4. |
  
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A3" }

  r4 ds,8 e8 c'8 cs4. | ds,8 e8 c'8 cs8~ cs4 r4 |
  r4 ds,8 e8 c'8 fs,4. | ds8 e8 c'8 fs,8~ fs4 r4 |
  \break
  r4 cs8 d8 as'8 b4. | cs,8 d8 as'8 b8~ b4 r4 |
  r4 cs,8 d8 bf'8 e,4. \textToCodaLastTime | cs8 d8 bf'8 e,8~ e4 r4 |

  \bar "||-|."

  \textCodaBreak
  
  cs8 d8 as'8 b8~ b4 a8 c8~ | c1\fermata

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
