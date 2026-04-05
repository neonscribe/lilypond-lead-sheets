%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "St. James Infirmary"
  subtitle = \instrument
  poet = ""
  composer = "Joe Primrose"
  copyright = \markup \small { \now " " "© 1929 Gotham Music Service Inc." }
}

refrainChords = \chordmode {
  s4

  d2:m a2:7/e d2:m/f a2:7/e
  d2:m e2:m7.5- a4:7 e4:m7/b e4:m7.5-/c a4:7/cs
  d2:m a2:7/cs d2.:m/c g4/b
  bf2:7 a2:7 d2:m \chordInsideParens{ a2:7/e }
}

refrainKey = d

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempoFour "Slow Blues [Louis Armstrong 1928]" 112
  
  \partial 4 d8 f8 |
  \bar "||"
  
  a4 a8 a8 g4. a8 | f8 d4. r4 a'4 |
  \break
  a4. a8 d4 bf8 a8~ | a2 r4 d,8 f8 |
  \break
  a4 a8 a8 g4. a8 | f8 d4. r4 r8 e8 |
  \break
  f4. d8 f4 e8 d8~ | d2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup {
  \column 
  \bold
  {
   \vspace #2
   \line { \large { Verse 1 } }
   \vspace #4
   \line { \large { Verse 2 } }
   \vspace #4
   \line { \large { Verse 3 } }
   }
  \column
  {
    \hspace #4
    }
  \column 
  {
   \vspace #2
   \line { \large { I went down to the St. James Infirmary } }
   \line { \large { Saw my baby there } }
   \line { \large { Stretched out on a long white table } }
   \line { \large { So sweet, so cold, so fair } }
   \vspace #1
   \line { \large { Let her go, let her go, God bless her } }
   \line { \large { Wherever she may be } }
   \line { \large { She can look this wide world over } }
   \line { \large { She'll never find a sweet man like me } }
   \vspace #1
   \line { \large { When I die, want you to dress me in straight-lace shoes } }
   \line { \large { Box-back coat and a Stetson hat } }
   \line { \large { Put a twenty-dollar gold piece on my watch chain } }
   \line { \large { So the boys'll know that I died standin' pat } }
 }
}

