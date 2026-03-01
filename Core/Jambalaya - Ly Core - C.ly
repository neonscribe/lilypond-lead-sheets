%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "Jambalaya (On the Bayou)"
  subtitle = \instrument
  poet = ""
  composer = "Hank Williams"
  copyright = \markup \small { \now " " "© 1952 Acuff-Rose Publications" }
}

refrainLyrics = \lyricmode {
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Good -- bye, Joe, me got -- ta go, me oh my oh. __
Me got -- ta go pole the pi -- rogue down the bay -- ou. __
My Y -- vonne, the sweet -- est one, me oh my oh. __
Son of a gun, we'll have big fun on the bay -- ou. __

Jam -- ba -- la -- ya and a craw -- fish pie and fi -- lé gum -- bo, __
'cause to -- night I'm gon -- na see my ma cher a -- mi -- o. __
Pick gui -- tar, fill fruit jar and by gay -- o. __
Son of a gun, we'll have big fun on the bay -- ou. __
}

refrainChords = \chordmode {
  s2
  
  g1:7 g1:7 c1 c1
  
  c1 c1 g1:7 g1:7
  g1:7 g1:7 c1 c1
  c1 c1 g1:7 g1:7
  g1:7 g1:7 c1 c1

  c1 c1 g1:7 g1:7
  g1:7 g1:7 c1 c1
  c1 c1 g1:7 g1:7
  g1:7 g1:7 c1 c1
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
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium [Hank Williams 1952]" 164
  
  \ambitusOff
  \partial 2 
  <c' g>4_"Double-stop fiddle" <c g>4 |

  \sectNoBreak "Intro"
  
  \slashedGrace a8_( <b) d,>4. <b d,>8 \tuplet 3/2 { <a d,~>8 <b d,~>8 <a d,>8 } <g g,>4 |
  a4. <g g,>8~ <g g,>4. <e g,>8 | \tuplet 3/2 { <d g,~>8 <e g,~>8 <d g,> } c4~ c8 c8 d8 e8 |
  c8 g4.
  \ambitusOn

  e'4 g4 |
  
  \sect "Verse"
  
  a2 e8 g4 g8 | a2 g4 e4 | g4 d2.~ | d2 g8 g4 g8 |
  b2 b4. b8 | a4 g4 a4. g8 | g4 e2.~ | e2 c'4 c4 |
  c4. c8 a8 g4. | c2 a4 g4 | g4 d2.~ | d2 g8 g8 g4 |
  b4. b8 a4 g4 | a2 g4. e8 | d4 c2.~ | c2 e'4 e4 |
  
  \sect "Chorus"
  
  e8 e8 e8 e8 c4 a4 | c4. c8 a8 g4. | g4 d2.~ | d2 g4 g4 |
  b4 b4 b4. a8 | g8 g4 g8 a4 g4 | g4 e2.~ | e2 c'4 c4 |
  c2 a4 g4 | c2 a4 g4 | g4 d2.~ | d2 g8 g8 g4 |
  b4. b8 a4 g4 | a2 g4. e8 | d4 c2.~ | c2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\pageBreak

\markup {
  \column 
  \bold
  {
   \vspace #2
   \line { \large { Intro } }
   \vspace #1
   \line { \large { Verse 1 } }
   \vspace #4
   \line { \large { Chorus } }
   \vspace #4
   \line { \large { Solo } }
   \vspace #1
   \line { \large { Verse 2 } }
   \vspace #4
   \line { \large { Chorus } }
   \vspace #4
   \line { \large { Solo } }
   \vspace #1
   \line { \large { Chorus } }
   }
  \column
  {
    \hspace #4
    }
  \column 
  {
   \vspace #4
   \line { \large { Goodbye Joe me gotta go me oh my oh } }
   \line { \large { Me gotta go pole the pirogue down the bayou } }
   \line { \large { My Yvonne the sweetest one me oh my oh } }
   \line { \large { Son of a gun we'll have big fun on the bayou } }
   \vspace #1
   \line { \large { Jambalaya and a crawfish pie and filé gumbo } }
   \line { \large { Cause tonight I'm gonna see my ma cher amio } }
   \line { \large { Pick guitar fill fruit jar and be gay-o } }
   \line { \large { Son of a gun we'll have big fun on the bayou } }
   \vspace #1
   \line { \large { \italic { (verse form) } } }
   \vspace #1
   \line { \large { Thibodaux Fontaineaux the place is buzzin' } }
   \line { \large { Kinfolk come to see Yvonne by the dozen } }
   \line { \large { Dress in style and go hog wild me oh my oh } }
   \line { \large { Son of a gun we'll have big fun on the bayou } }
   \vspace #1
   \line { \large { Jambalaya and a crawfish pie and filé gumbo } }
   \line { \large { Cause tonight I'm gonna see my ma cher amio } }
   \line { \large { Pick guitar fill fruit jar and be gay-o } }
   \line { \large { Son of a gun we'll have big fun on the bayou } }
   \vspace #1
   \line { \large { \italic { (verse form) } } }
   \vspace #1
   \line { \large { Jambalaya and a crawfish pie and filé gumbo } }
   \line { \large { Cause tonight I'm gonna see my ma cher amio } }
   \line { \large { Pick guitar fill fruit jar and be gay-o } }
   \line { \large { Son of a gun we'll have big fun on the bayou } }
 }
}

%{
   \vspace #1
   \line { \large { Settle down far from town get me a pirogue } }
   \line { \large { And I'll catch all the fish in the bayou } }
   \line { \large { Jambalaya and a crawfish pie and filé gumbo } }
   \line { \large { Cause tonight I'm gonna see my ma cher amio } }
   \vspace #1
   \line { \large { Pick guitar fill fruit jar and be gay-o } }
   \line { \large { Son of a gun we'll have big fun on the bayou } }
   \line { \large { Later on, swap my mon, get me a pirogue } }
   \line { \large { And I'll catch all the fish on the bayou } }
   \vspace #1
   \line { \large { Swap my mon, to buy Yvonne what she need-oh } }
   \line { \large { Son of a gun we'll have big fun on the bayou } }
   \line { \large { Jambalaya and a crawfish pie and filé gumbo } }
   \line { \large { Cause tonight I'm gonna see my ma cher amio } }
   \line { \large { Pick guitar fill fruit jar and be gay-o } }
   \line { \large { Son of a gun we'll have big fun on the bayou } }
%}
