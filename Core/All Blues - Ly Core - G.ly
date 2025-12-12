%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "All  Blues"
  subtitle = \instrument
  poet = "Oscar Brown, Jr."
  composer = "Miles Davis"
  copyright = \markup \small { \now " " "© 1959 Jazz Horn Music" }
}

refrainChords = \chordmode {
  g2.:7 g2.:7 g2.:7 g2.:7
  g2.:7 g2.:7 g2.:7 g2.:7
  
  g2.:7 g2.:7 g2.:7 g2.:7
  c2.:7 c2.:7 g2.:7 g2.:7
  d2.:7 ef4.:7 d4.:7 g2.:7 g2.:7
}

refrainKey = g

refrainMelody = \relative f' {
  \time 6/8
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Miles Davis 1959]" 8 = 135

  \xTextMark \markup{ \bold \box "Intro" }
  
    \new Voice 
    { \voiceOne
      \repeat tremolo 12 { g,32 a } | \repeat tremolo 12 { g32 a } |
      \repeat tremolo 12 { g32 a } | \repeat tremolo 12 { g32 a } |
      <d' b>4 <e c>8 <f d>4 <e c>8 | <d b>4 <e c>8 <f d>4 <e c>8 |
      <d b>4 <e c>8 <f d>4 <e c>8 |
    }
  <<
    \new Voice 
    { \voiceOne
      <d b>4 <e c>8 <f d>4 <e c>8 |
    }
    { \voiceTwo r4 r8 r4 r16 d,16 | }
  >>
  \oneVoice

  \sect "Head"
  
  b'4.~ b4~ b16 d,16 | b'8 c16 b8. r4 r16 d,16 | b'16 c16 b4~ b4~ b16 d,16 | b'4. r4. |
  a4 bf8 c4 d8 | c4 bf8 a4~ a16 d,16 | b'2.~ | b4. r4 r16 g16 |
  a2. | bf2. | a4. b4. | a4. g4. |
  
  \bar "|."
}

refrainBass = \relative f' {
  \time 6/8
  \key \refrainKey \major
  \clef bass

  g,,8. d'16 e16 d16 f8. d16 e16 d16 |
  g,8. d'16 e16 d16 f8. d16 e16 d16 |
  g,8. d'16 e16 d16 f8. d16 e16 d16 |
  g,8. d'16 e16 d16 f8. d16 e16 d16 |

  g,8. d'16 e16 d16 f8. d16 e16 d16 |
  g,8. d'16 e16 d16 f8. d16 e16 d16 |
  g,8. d'16 e16 d16 f8. d16 e16 d16 |
  g,8. d'16 e16 d16 f8. d16 e16 d16 |
  
  \bar "||-||"
  \break

  g,8. d'16 e16 d16 f8. d16 e16 d16 |
  g,8. d'16 e16 d16 f8. d16 e16 d16 |
  g,8. d'16 e16 d16 f8. d16 e16 d16 |
  g,8. d'16 e16 d16 f8. d16 e16 d16 |

  g,8. d'16 e16 d16 f8. d16 e16 d16 |
  g,8. d'16 e16 d16 f8. d16 e16 d16 |
  g,8. d'16 e16 d16 f8. d16 e16 d16 |
  g,8. d'16 e16 d16 f8. d16 e16 d16 |

  d4. af'8~ af8. af16 |
  ef4~ ef16 af16 d,4. |
  g,8. d'16 e16 d16 f8. d16 e16 d16 |
  g,8. d'16 e16 d16 f8. d16 e16 d16 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
