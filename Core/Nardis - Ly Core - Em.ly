%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Nardis"
  subtitle = \instrument
  poet = ""
  composer = "Miles Davis"
  copyright = "© 1958 Jazz Horn Music"
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  s2
  
  e1:m7 f1:maj7 b1:7 c1:maj7
  a1:m7 f1:maj7 e1:maj7

  e1:m7

  e1:m7
  
  a1:m7 f1:maj7 a1:m7 a1:maj7
  d1:m7 g1:7 c1:maj7 f1:7

  e1:m7 f1:maj7 b1:7 c1:maj7
  a1:m7 f1:maj7 e1:maj7 e1:m7
}

refrainKey = e

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium" 4 = 120

  \partial 2 b2 |
  
  \xTextMark \markup{ \bold \box "A1, A2" }
  
  \bar ".|:"
  \repeat volta 2 {
    e1 | r8 ds,8 e8 e'8 ds4. c8 | b1~ | b1 |
    \break
    r8 b4. a4 g4 | e4. a8~ a2 | \tuplet 3/2 { gs8 a8 gs8 } f2 e4~ |
  \alternative { \volta 1 {
    e2 b'2 |
  } \volta 2 {
    e,2 e2 |
  } } }
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  b'2. b4~ | b2 b,8 c8 e8 g8 | b2. b4~ | b2. r4 |
  \break
  r8 e4. d4 c4 | e2 d2 | b2. b4~ | b2 b2 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A3" }
  
  e1 | r8 ds,8 e8 e'8 ds4. c8 | b1~ | b1 |
  \break
  r8 b4. a4 g4 | e4. a8~ a2 | \tuplet 3/2 { gs8 a8 gs8 } f2 e4~ | e2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
