%% -*- Mode: LilyPond -*-

%{

"Customizer": { "choices": { "alternateChords": [ "hlrb", "simple" ] } }

%}

songID = "2026-06-01T22:16:38.119982Z"

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

headerTitle = "I'm an Old Cowhand"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Johnny Mercer"
headerCopyright = "© 1936 EMI Feist Catalog Inc."

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

refrainHLChords = \chordmode {
  f2:m7 bf2:7 ef2:6 c2:7 f2:m7 bf2:7 ef4:6 r2.

  f1:m7 bf1:7 ef1:6 ef1:6
  f1:m7 bf1:7 ef1:6 ef1:6

  c1:m g1:m c1:m g1:m
  a2:m7.5- d2:7 g2:m7 c2:7.9-

  f2:m7 bf2:7 ef2:6 c2:7
  f2:m7 bf2:7 ef4:6 r2.

  ef1:6

  f1:m7 bf1:7 ef1:6 ef4:6 s2.
}

refrainSimpleChords = \chordmode {
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

alternateChords = #(if (defined? 'alternateChords)
		    alternateChords
		    "hlrb")

refrainChords = #(let ((v (assoc alternateChords
			   (list
			    (cons "simple" refrainSimpleChords)
			    (cons "hlrb" refrainHLChords)
			  ))))
		  (if v (cdr v) #{ \chordmode { } #}))

refrainKey = ef

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Hollywood Cowboy Swing [Sons of the Pioneers 1936]" 205

  \sectNoBar "Intro"

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

\include "../Include/refrain.ily"

\pageBreak

\markup {
  \column
  \bold
  {
   \vspace #1
   \line { \large { Intro. } }
   \vspace #1
   \line { \large { 1. } }
   \vspace #3
   \line { \large { 2. } }
   \vspace #3
   \line { \large { 3. } }
   \vspace #3
   \line { \large { 4. } }
   \vspace #3
   \line { \large { Coda. } }
   }
  \column
  {
    \hspace #2
    }
  \column
  {
   \vspace #1
   \line { \large { Yippee-yi-o-ki-yay, yippee-yi-o-ki-yay. } }
   \vspace #1
   \line { \large { I'm an old cowhand from the Rio Grande. But my legs ain't bowed and my cheeks ain't tanned. } }
   \line { \large { I'm a cowboy who never saw a cow. Never roped a steer, 'cause I don't know how. } }
   \line { \large { And I shore ain't fixin' to start in now. Yippee-yi-o-ki-yay, yippee-yi-o-ki-yay. } }
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
   \vspace #1
   \line { \large { Yipp-e-e-yi-o-o-ki-i-yay. } }
 }
}
