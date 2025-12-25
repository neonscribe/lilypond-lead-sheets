%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "The Rainbow Connection"
  subtitle = \instrument
  poet = ""
  composer = "Ken Ascher, Paul Williams"
  copyright = \markup \small { \now " " "© 1979 Fuzzy Muppet Songs" }
}

refrainLyrics = \lyricmode {
Why are there so man -- y songs a -- bout rain -- bows,
and what's on the oth -- er side? __

Rain -- bows are vi -- sions, but on -- ly il -- lu -- sions,
and rain -- bows have no -- thing to hide. __

So we've been told, and some choose to be -- lieve it.
I know they're wrong, wait and see. __

Some -- day we'll find it, the rain -- bow con -- nec -- tion,
the lov -- ers, the dream -- ers and me.

La da da de da da do la la da da da de da do. __
}

refrainChords = \chordmode {
  g2.:maj7 e2.:m7 a2.:m7 d2.:sus7
  g2.:maj7 e2.:m7 c2.:maj7 d2.:sus9

  g2.:maj7 e2.:m7 a2.:m7 d2.:sus7
  g2.:maj7 e2.:m7 c2.:maj7 c2.:maj7
  
  c2.:maj7 c2.:maj7 c2.:maj7 c2.:maj7
  b2.:m7 b2.:m7 e2.:sus9 e2.:9
  
  a2.:m7 d2.:7 b2.:m7 e2.:7
  a2.:m7 d2.:7 g2.:6
  \chordOpenParen{ e2.:m7 }
  a2.:m7
  \chordCloseParen{ d2.:7 }
  
  d2./fs e2.:m7 g2./d c2. d2.:7 g2. g2.
}

refrainKey = g

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \time 3/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Kermit 1979]" 4 = 115

  \sectStart "A1"
  
  b,4 d4 g4 | a8 b8 b2 | c,4 d4 g4 | g4 a4. a,8 |
  \break
  b4 d4 fs4 | g2 d4 | e2.~ | e2 r4 |
  
  \sect "A2"
  
  b4 d4 g4 | a8 b8~ b4. b8 | c,4 d4 g4 | g4 a4. a,8 |
  \break
  b4 d4 fs4 | g8 g4. d4 | e2.~ | e2 r4 |
  
  \sect "B"
  
  e4 b'4 e,4 | b'4 e,4 b'4 | e,4 b'4 e,4 | b'4 e,2 |
  fs4 fs4 fs4 | a4 fs4 d4 | fs2.~ | fs2 r4 |

  \sect "C"

  c4 e4 g4 | fs4 g4. d8 | d4 fs4 a4 | fs4 gs4. b,8 |
  c4 e4 g4 | b8 b4. a4 | g2. \textToCodaLastTime | R4*3 | R4*3 | R4*3 |

  \bar "|."
  
  \xPageBreak
  
  \textCoda
  
  a4. g8 a4 | b4. a8 g4 | d2 d4 | e4. fs8 g4 | d4 g4 fs4 | g2.~ | g2. |

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
   \line { \large { Verse 2 } }
   \vspace #8
   \line { \large { Verse 3 } }
   }
  \column
  {
    \hspace #4
    }
  \column 
  {
   \vspace #2
   \line { \large { Who said that every wish would be heard and answered } }
   \line { \large { When wished on the morning star? } }
   \line { \large { Somebody thought of that, and someone believed it; } }
   \line { \large { Look what it's done so far. } }
   \line { \large { What's so amazing that keeps us stargazing } }
   \line { \large { And what do we think we might see? } }
   \line { \large { Someday we'll find it, the rainbow connection; } }
   \line { \large { The lovers, the dreamers, and me. } }
   \vspace #1
   \line { \large { Have you been half asleep, and have you heard voices? } }
   \line { \large { I've heard them calling my name. } }
   \line { \large { Is this the sweet sound that calls the young sailors? } }
   \line { \large { The voice might be one and the same. } }
   \line { \large { I've heard it too many times to ignore it } }
   \line { \large { It's something that I'm s'posed to be. } }
   \line { \large { Someday we'll find it, the rainbow connection; } }
   \line { \large { The lovers, the dreamers, and me. } }
 }
}
