%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Blue in Green"
  subtitle = \instrument
  poet = ""
  composer = "Bill Evans (credited to Miles Davis)"
  copyright = "© 1959 Jazz Horn Music"
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  g1:m7 a1:7.9+ d4:m7 \chordSlash 2 df4:7.5- c2:m7 f2:7.9-
  bf1:maj7.11+ a1:7.9+ d1:m7
  e1:7.5+.9+ a1:m7 d1:m7
  
  d1:m7 g1:m7 a1:7.9+ d1:m6.9
}

refrainKey = d

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Ballad" 4 = 55

  \xTextMark \markup{ \bold \box "Head" }
  
  e'2. d4 | c2. bf4 | a2.  g4 | f4 d'2. |
  \break
  e,4. d8 cs8 d8 f8 a8 | c2. a4 | g2. f4 |
  \break
  c'2. gs4 | b2. a4 \textToCodaLastTime | f'1 |
  
  \break

  \textCodaBreak
  \bar "||-|."
  
  f2. cs4 | e2. d4 | c2. bf4 | a1\fermata |

  \bar "|."
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  \sect "C"

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
