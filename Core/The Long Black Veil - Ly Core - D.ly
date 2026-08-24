%% -*- Mode: LilyPond -*-

\version "2.26.0"

songID = "2026-08-09T17:51:09.409553Z"

\include "../Include/lead-sheets.ily"

headerTitle = "The Long Black Veil (Country Gentlemen Arrangement)"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Marijohn Wilkin and Danny Dill"
headerCopyright = "© 1959 Cedarwood Publishing"

refrainLyrics = \lyricmode {
Ten years a -- go _ on a cold, dark night __
there was some -- one killed __ 'neath the town hall __ light.
The peo -- ple that saw, _ they __ all a -- greed __
that the slay -- er who ran __ looked a lot like __ me.

The

me.

She walks these hills __ in a long __ black veil, __
she vis -- its my grave __ when the night winds wail. __
No -- bod -- y knows, __ no -- bod -- y sees, __
No -- bod -- y knows __ but me. __

The

No -- bod -- y knows __ but __ me. __
}

refrainChords = \chordmode {
  d1 d1 d1 d1
  a1 a1 g1 d1 d1

  d1 d1 d1 d1
  a1 a1 g1 
  
  d1 d1
  
  d1 d1
  
  g1 d1 g1 d1 d1
  g1 d1 g1 d1 d1
  d1 d1 d1 d1
  g1 a1 d1 d1
  
  g1 a1 d1 d1
}

refrainKey = d

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium [The Band 1968]" 140

  \sectNoBarNoBreak "Verse"

  \bar ".|:"
  \repeat volta 2 {
  d'2 d4 d8 d8~ d4 \parenthesize a4 d4 e8 fs8~ | fs2 fs2 | fs8( e8 d4) d4 d8 e8~ |
  \break
  e2 e2 | e4 r4 a,4 a8 b8~( | b4 d4) d4( e4) | d1 | r2 r4 d8 d8~ |
  \break
  d2 d4 d8 d8~ | d4 r4 \parenthesize d4 e4 | fs2 fs2 | fs8( e8 d4) d4 d4 | e2 e4 fs4 |
  \break
  e4 r4 a,4 a8 b8~( | b4 d4) d4( e4) |
  \alternative { \volta 1 {
  d1 | r2 r4 d4 |
  \break
  } \volta 2 {
  d1 | r2 r4 a4 |
  } } }
  \sectNoBreak "Chorus"

  b2 d2 | b8( a4.) r4 a8 a8 | b2 d2 | fs2.~( fs8 e8 | d2) r4 a4 | b2 d8 d4. |
  \break
  b8( a4.) r4 a8 a8 | b2 d2 | fs2.~( fs8 e8 | d2) r2 | a'2 a4 b8 a8~ | a2 r2 |
  \break
  fs2 fs4 g8 fs8~ | fs2 r2 \textToCodaLastTime | d2 d4 d8 e8~ |
  e2 r4 fs4 | fs8( e8 d2.) | r2 r4 d4 \daCapoThirdVerse |

  \bar "||-|."

  \xPageBreak

  \textCodaBreak

  d2 d4^"rit." d8 e8~ | e2 r4 fs4 | fs2.~( fs8 e8 | d2) r2\fermata |
  
  \bar "|."
}

afterText =
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
   \line { \large { Solo } }
   \vspace #2
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
   \line { \large { The people that saw, they all agreed } }
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
   \line { \large { \italic { "(First half of chorus, with extra bar of " \tpNote { d } " before and after)" } } }
   \line { \large { \tpNote { d }
		    " || " \tpNote { g }
		    " | " \tpNote { d }
		    " | " \tpNote { g }
		    " | " \tpNote { d }
		    " | " \tpNote { d }
		    " || " \tpNote { g }
		    " | " \tpNote { d }
		    " | " \tpNote { g }
		    " | " \tpNote { d }
		    " | " \tpNote { d }
		    " || " \tpNote { d }
		  } }
   \vspace #1
   \line { \large { The scaffold was high, and eternity near } }
   \line { \large { She stood in the crowd and shed not a tear } }
   \line { \large { And sometimes at night when the cold wind moans } }
   \line { \large { In a long black veil she cries o'er my bones } }
   \vspace #1
   \line { \large { She walks these hills in a long black veil } }
   \line { \large { She visits my grave when the night winds wail } }
   \line { \large { Nobody knows, nobody sees } }
   \line { \large { Nobody knows but me, nobody knows but me, nobody knows but me } }
 }
}

\include "../Include/refrainonly.ily"
