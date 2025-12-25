%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "The Long Black Veil"
  subtitle = \instrument
  poet = ""
  composer = "Marijohn Wilkin and Danny Dill"
  copyright = \markup \small { \now " " "© 1959 Cedarwood Publishing" }
}

refrainLyrics = \lyricmode {
Ten years a -- go __ on a cold, dark night __
there was some -- one killed __ 'neath the town hall __ light.
There were few at the scene, __ but they __ all a -- greed __
that the slay -- er who ran __ looked a lot like __ me. __

The

She walks these hills in a long __ black veil,
she vis -- its my grave when the night winds wail. __
No -- bod -- y knows, __ no -- bod -- y sees,
No -- bod -- y knows __ but __ me.

The

No -- bod -- y knows __ but __ me.
}

refrainChords = \chordmode {
  e1 e1 e1 e1
  b1:7 b1:7 a1 e1

  e1 e1 e1 e1
  b1:7 b1:7 a1 e1
  
  e1
  
  e1
  
  a1 e1 a1 e1
  a1 e1 a1 e1
  
  e1 e1 e1 a1
  e1 a1 b1:7 e1 e1
  
  e1 a1 b1:7 e1 e1
}

refrainKey = e

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
  \tempo "Medium [Lefty Frizzell 1959]" 4 = 130

  \sectStart "Verse"
  
  \bar ".|:"
  \repeat volta 2 {
  e2 e4 e8 e8( | b2) r4 gs'8 gs8 | gs2 gs4. gs8( | e2) ds4 e4 |
  \break
  fs2 fs4. fs8~ | fs2 gs4 fs4 | e2 cs8( e4.) | b2 r8 b8 cs4 |
  \break
  e2 r8 e8 e8 e8~ | e2 r4 fs8 gs8~ | gs2 gs4 fs8 gs8( | e2) ds4 e4 |
  \break
  fs2 fs4 fs8 fs8~ | fs2 gs4 fs4 | e2 cs8( e4.) | e8( b4.~ b2) |
  \alternative { \volta 1 {
  r2 r4 e4 |
  \break
  } \volta 2 {
  r2 r4 b4 |
  } } }
  \sectNoBreak "Chorus"

  cs2 e2 | b2 r4 b8. b16 | cs4.( e8~ e4) e4 | gs2. b,4 | 
  \break
  cs2 e4 e4 | b2 r4 b8 b8 | cs2 e2 | gs2~( gs8 fs8 gs8 fs8 |
  \break
  e2) r2 | b'2~ b8 b8 cs8 b8~( | b8 gs4 fs8 e2) | r4 e2 e8 e8 |
  \break
  g2 r2 | cs,4(  e4~ e8) e8 e8 fs8~( | fs4 b,2) cs8( e8) |
  fs8( e4.~ e2) \textToCoda | r2 r4 e4 \daCapoSecondEnding |
  
  \bar "|."
  
  \xPageBreak

  \textCodaBreak
  
  r1 |
\repeat volta 2 {
  cs2 e4 e8 fs8~( | fs4 b,2) cs8( e8) | e1 | r1 |
  }
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
   \line { \large { Chorus } }
   \vspace #4
   \line { \large { Verse 3 } }
   \vspace #4
   \line { \large { Chorus } }
   }
  \column
  {
    \hspace #4
    }
  \column 
  {
   \vspace #2
   \line { \large { Ten years ago, on a cold dark night } }
   \line { \large { There was someone killed 'neath the town hall light } }
   \line { \large { There were few at the scene, but they all agreed } }
   \line { \large { That the slayer who ran looked a lot like me } }
   \vspace #1
   \line { \large { The judge said, “Son what is your alibi? } }
   \line { \large { If you were somewhere else then you won't have to die” } }
   \line { \large { I spoke not a word though it meant my life } }
   \line { \large { For I had been in the arms of my best friend's wife } }
   \vspace #1
   \line { \large { She walks these hills in a long black veil } }
   \line { \large { She visits my grave when the night winds wail } }
   \line { \large { Nobody knows, nobody sees } }
   \line { \large { Nobody knows but me } }
   \vspace #1
   \line { \large { The scaffold is high, and eternity nears } }
   \line { \large { She stood in the crowd and shed not a tear } }
   \line { \large { But sometimes at night when the cold wind mourns } }
   \line { \large { In a long black veil she cries over my bones } }
   \vspace #1
   \line { \large { She walks these hills in a long black veil } }
   \line { \large { She visits my grave when the night winds wail } }
   \line { \large { Nobody knows, nobody sees } }
   \line { \large { Nobody knows but me, nobody knows but me, nobody knows but me } }
 }
}


