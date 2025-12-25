%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Chicago"
  subtitle = \instrument
  poet = ""
  composer = "Fred Fisher"
  copyright = \markup \small { \now " " "© 1922 Fred Fisher, Inc." }
}

refrainLyrics = \lyricmode {
Chi -- ca -- go, __ Chi -- ca -- go, __ that tod -- dl -- in' town, __ tod -- dl -- in' town, __
Chi -- ca -- go, __ Chi -- ca -- go, __ I'll show you a -- round, __ I love it.
Bet your bot -- tom dol -- lar you lose the blues in Chi -- ca -- go, __ Chi -- ca -- go, __
The town that Bil -- ly Sun -- day could not __ put down. __
On State Street, __ that great street, __ I just want to say, just want to say, __
They do things __ they don't do on Broad -- way.
Say, they have the time, the time __ of their life,
I saw a man, he danced __ with his wife,
in Chi -- ca -- co, __ Chi -- ca -- go my home town. __
}

refrainChords = \chordmode {
  s4

  c2:maj7 d2:m7 e2:m7 a2:7 d2:m7 g2:7 d2:m7 g4:7 a4:7.5+
  d2:m7 g4:7 af4:7 g2.:7 f4:dim7 c2/e ef2:dim7 d2:m7 g2:7
  
  c1:maj7 c1:maj7 d2.:7 ef4:9.11+ d2.:7 a4:7.9-
  d2:m7 g2:7 d2:m7 g4:7 f4:dim7 e2:m7 ef2:7 d2:m7 g2:7
  
  c2:maj7 d2:m7 e2:m7 a2:7 d2:m7 g2:7 d2:m7 g4:7 a4:7.5+
  d1:m7 b2:m7 e2:7 a1:m7 a1:7
  
  f1:maj7 bf1:9 c2:maj7 g2:7.5+ c2.:maj7 ef4:dim7
  g2.:7 af4:7 g1:7 c1:6
  \chordOpenParen{ d2:m7 }
  \chordCloseParen{ g2:7 }
}

refrainKey = c

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
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Frank Sinatra 1957]" 4 = 150
  
  \partial 4 c'4 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  b4. a8~ a4 c4 | b4. a8~ a4 e4 | f8 e8 d8 g8~ g2 | f8 e8 d8 g8~ g4 f4 |
  \break
  e4. d8~ d4 f4 | e4. d8~ d4 b4 | c8 b8 a8 c8~ c2 | r8 e4. e8 d4. |
  
  \sect "B"
  
  c8 d8 e8 f8 g8 a4 g8 | b4 g8 a8~ a8 g8 b4 | e,4. d8~ d4 a'4 | e4. d8~ d4 e4 |
  \break
  f4 g4 e8 d4. | e8 g8 f8 e8~ e4 d4 | g1~ | g2 r4 c4 |

  \sect "A2"
  
  b4. a8~ a4 c4 | b4. a8~ a4 e4 | f8 e8 d8 g8~ g2 | f8 e8 d8 g8~ g4 f4 |
  \break
  e4. d8~ d4 f4 | e4 e4 d8 e4. | c1 | cs1 |
  
  \sect "C"
  
  e8 d4 e8 d4 e8 d8~ | d8 e8 d4 d2 | a'8 g4 a8 g4 a8 g8~ | g8 a8 g4 g4 c8 a8 |
  \break
  b4. a8~ a4 c4 | b4 b4 a8 b4 c8~ | c1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
