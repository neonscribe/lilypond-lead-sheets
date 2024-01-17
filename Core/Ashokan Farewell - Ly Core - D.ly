%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Ashokan Farewell"
  subtitle = \instrument
  poet = ""
  composer = "Jay Ungar"
  copyright = "© 1990 Swinging Door Music, USA"
}

straightEighths = ##t

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  s4

  d2. d2.:7 g2. e2.:m d2. b2.:m e2.:m9 a2.
  d2. d2.:7 g2. e2.:m d2. b2.:m a2. d2.
  d2. d2.:7 g2. d2. d2. b2.:m a2. a2.:7
  d2. c2. g2. d2.
  
  d2. b2.:m a2. d2.

  d2. b2.:m a2. d2.
}

refrainKey = d

refrainMelody = \relative f' {
  \time 3/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Freely" 4 = 88
  
  \partial 4 a8 cs8 |

  \mark \markup{ \box "A" }
  \bar ".|:"
  \repeat volta 2 {

  d4. cs8 b8 a8 | fs2 e8 fs8 | g4. fs8 e8 d8 | b4 d4. b8 |
  \break
  a4 d4 fs4 | a4 d4 fs4 | fs4. g8 fs4 | e2 a,8 cs8 |
  \bar "||"
  \break
  \mark \markup{ \box "B" }
  d4. cs8 b8 a8 | fs2 e8 fs8 | g4. fs8 e8 d8 | b4 d4. b8 |
  \break
  a4 d4 fs4 | a4 d4 fs4 | a,4 cs4 e4 | d2 fs,8 g8 |
  \bar "||"
  \break
  \mark \markup{ \box "C" }
  a4. fs8 d4 | d'2 a4 | b4. cs8 d4 | a8 fs4. e4 |
  \break
  fs4. e8 d4 | b2 g4 | a2. | a'2 fs8 e8 |
  \bar "||"
  \break
  \mark \markup{ \box "D" }
  d4 fs4 a4 | c2. | b4. cs8 d4 | a4 fs4. d8 |
  \break
  } \alternative {{
    a4 d4 fs4 | a8 d4. fs,4 | e4. d8 cs4 | d2 a'8 cs8 |
    \break
    }{
    a,8 d8 fs8 a8 d8 fs8 | a8 d4. fs,4 | e4. a,8 cs4 | d2. |
    }}
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
