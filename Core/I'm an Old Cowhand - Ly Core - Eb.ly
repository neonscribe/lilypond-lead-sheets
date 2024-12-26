%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  (set-global-staff-size 18))

\header {
  title = "I'm an Old Cowhand (From the Rio Grande)"
  subtitle = \instrument
  poet = ""
  composer = "Johnny Mercer"
  copyright = "© 1936 EMI Feist Catalog Inc."
}

refrainLyrics = \lyricmode {
(Yipp -- ee -- yi -- o -- ki -- yay, yipp -- ee -- yi -- o -- ki -- yay.)
I'm an old cow -- hand __ from the Ri -- o Grande. __
But my legs ain't bowed and my cheeks ain't tanned.
I'm a cow -- boy who nev -- er saw a cow.
Nev -- er roped a steer, 'cause I don't know how.
And I shore ain't fix -- in' to start in now.
Yipp -- ee -- yi -- o -- ki -- yay, yipp -- ee -- yi -- o -- ki -- yay.
(I'm an old cow-)
-yay
Yipp -- ee -- yi -- o -- ki -- yay. __
}

refrainJazzChords = \chordmode {
  f2:m7 bf2:7 ef2:maj7 c2:m7 f2:m7 bf2:7 ef4:maj7 r2.
  
  f1:m7 bf1:7 ef1:maj7 c1:m7
  f1:m7 bf1:7 ef1:maj7 ef1:maj7

  c1:m7 g1:m7 c1:m7 g1:m7
  a2:m7.5- d2:7 g2:m7 c2:7

  f2:m7 bf2:7 ef2:maj7 c2:m7
  f2:m7 bf2:7 ef4:maj7 r2.
  
  ef1:maj7

  f1:m7 bf1:7 ef1:maj7 ef4:maj7 s2.
}

refrainCowboyChords = \chordmode {
  f2:m bf2:7 ef1 f2:m bf2:7 ef4 r2.
  
  f1:m f2:m bf2:7 ef1 ef1
  f1:m f2:m bf2:7 ef1 ef2 ef2/g
  
  c1:m g1:m c1:m g1:m
  c1:m g2:m c2:7
  
  f2:m bf2:7 ef1 f2:m bf2:7
  ef4 r2.
  ef1
  
  f1:m bf1:7 ef1 ef4 s2.
}

refrainChords = $(if (and (defined? 'useJazzChords) useJazzChords)
		  #{ \refrainJazzChords #}
		  #{ \refrainCowboyChords #} )

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Hollywood Cowboy Swing" 4 = 160

  \xTextMark \markup{ \bold \box "Intro" }
    g8 g8 f4 ef4 f4 | ef1 |
    g8 g8 f4 ef4 f4 | ef4

  bf'8 bf8 g4 ef4 |
  \sect "Refrain"
  f1~ | f4 f8 f8 af4 g4 | ef1~ | ef4 bf'8 bf8 g4 ef4 |
  \break
  f1~ | f4 f8 f8 af4 g4 | bf1~ | bf2 r4 g8 bf8 |
  \break
  c4 c4 c4 d8 c8 | bf4 g4 g4 g8 bf8 | c4 c4 c4 d8 c8 | bf4 g4 g4 g8 bf8 |
  \break
  c4 c4 c4 d8 c8 | bf4 g4 g2 |
  \break
  g8 g8 f4 ef4 f4 | ef1 |
  g8 g8 f4 ef4 f4 \textToCodaLastTime |
  
  ef4
  \override Parentheses.font-size = #5
  \startParenthesis \parenthesize
  bf'8
  bf8 g4
  \endParenthesis \parenthesize
  ef4 |
  \bar "||-|."

  \textCodaBreak

  ef2 r2 | g4 g2 f4 | ef2 f2 | ef'1~ | ef4 r4 r2 |

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
   \vspace #1
   \line { \large { 2. } }
   \vspace #3
   \line { \large { 3. } }
   \vspace #3
   \line { \large { 4. } }
   }
  \column
  {
    \hspace #2
    }
  \column 
  {
   \vspace #1
   \line { \large { I'm an old cowhand from the Rio Grande. And I learned to ride, 'fore I learned to stand. } }
   \line { \large { I'm a ridin' fool who is up to date. I know every trail in the Lone Star State. } }
   \line { \large { 'Cause I ride the range in a Ford V8. Yippee-yi-o-ki-yay, yippee-yi-o-ki-yay. } }
   \vspace #1
   \line { \large { I'm an old cowhand from the Rio Grande. And i come to town just to hear the band. } }
   \line { \large { I know all the songs that the cowboys know 'bout the big corral where the dogies go } }
   \line { \large { 'cause i learned them all on the radio. Yippee-yi-o-ki-yay, yippee-yi-o-ki-yay. } }
   \vspace #1
   \line { \large { I'm an old cowhand from the Rio Grande. Where the west is wild, 'round the border land. } }
   \line { \large { Where the buffalo roam around the zoon and the indians make you a rug or two. } }
   \line { \large { And the old Bar-X is a Bar-B-Q. Yippee-yi-o-ki-yay, yippee-yi-o-ki-yay. } }
   \line { \large { Yipp-e-e-yi-o-o-ki-i-yay. } }
 }
}
