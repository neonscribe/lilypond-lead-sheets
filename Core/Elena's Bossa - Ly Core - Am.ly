%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
   (set-global-staff-size 18))

\header {
  title = "Elena's Bossa"
  subtitle = \instrument
  poet = ""
  composer = "Gonzalo Bergara"
  copyright = "© 2008"
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  a1:m f1 e1:7
  
  a1:m
  
  a1:m
  
  a1:m a1:m f1 f1
  e1:7 e1:7
  
  a1:m e1:7
  
  a1:m a1:7
  
  d1:m7 g1:7 c1:maj7 f1:maj7
  b1:m7.5- e1:7 a1:m a1:7

  d1:m7 g1:7 c1:maj7 f1:maj7
  b1:m7.5- e1:7 a1:m e4:7 r2.
  
  a1:m f1 e1:7
  
  a1:m
  
  a1:m
}

refrainKey = a

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium" 4 = 160

  \xTextMark \markup{ \bold \box "Intro" }
  
  \bar ".|:"
  \repeat volta 2 {
  r8 e8 a8 gs8 a4 a4~ | a8 e8 a8 gs8 a4 a4~ | a8 e8 a8 gs8 a4 a4~ |
  \alternative { \volta 1 {
  a8 e8 a8 gs8 a4 a4 |
  } \volta 2 {
  <c a e a,>2 r8 gs8 a8 b8 |
  } } }
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "A1,A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  c4. b8 c8 b8 a8 e8~ | e2 r8 gs8 a8 b8 | c4. d8 c8 b8 a8 f8~ | f2 r8 gs8 a8 as8 |
  \break
  b2 gs8 a8 as8 b8~ | b2 gs8 a8 b8 c8 |
  \alternative { \volta 1 {
  b4 a8 e8~ e2 | r2 r8 gs8 a8 b8 |
  } \volta 2 {
  b4 a8 c8~ c2 | <e cs>8 <e cs>8 <e cs>8 <e cs>8 <e cs>8 <e cs>8 <e cs>8 <e cs>8 |
  } } }
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "B1" }
  
  f2 c8 d8 c8 b8~ | b2~ b8 f'8 e8 d8 | e2 b8 c8 b8 a8~ | a2 e'4. d16 c16 |
  \break
  d4. c8 d16 c16 b8~ b8 a8 | gs4 r8 <b d>8 <b d>8 <b d>8 <b d>8 <b d>8 |
  <b d>8 <a c>8 <gs b>8 <a c>8~ <a c>4 r4 |
  <e' cs>8 <e cs>8 <e cs>8 <e cs>8 <e cs>8 <e cs>8 <e cs>8 <e cs>8 |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "B2" }
  
  <f d>8 <f d>8 <f d>8 <f d>8 <f d>8 <e c>8 r8 <d b>8~ |
  <d b>4 r8 <d b>8 <d b>8 <d b>8 <c a>8 <d b>8 |
  r8 <e c>8~ <e c>8 <e c>8 <e c>8 <d b>8 r8 <c a>8~ |
  <c a>4 <c a>8 <c a>8 <c a>8 <c a>8 <c a>8 <c a>8 |
  \break
  r8 <d b>8 <d b>8 <d b>8 <d b>8 <cs as>8 <c a>8 <b gs>8~ |
  <b gs>2 <b gs>2 \textToCodaLastTime |
  c8 b8 a8 e8~ e2 | <e d b>1 |
  
  \break

  \textCoda

  \bar ".|:-|."
  \repeat volta 2 {
  r8 e8 a8 gs8 a4 a4~ | a8 e8 a8 gs8 a4 a4~ | a8 e8 a8 gs8 a4 a4~ |
  \alternative { \volta 1 {
  a8 e8 a8 gs8 a4 a4 |
  } \volta 2 {
  <c a e a,>1 |
  } } }

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
