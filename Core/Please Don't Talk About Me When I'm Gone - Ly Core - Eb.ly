%% -*- Mode: LilyPond -*-

%{

"Customizer": { "choices": { "alternateChords": [ "hlrb", "newreal" ] } }

%}

songID = "2026-06-01T22:16:48.150289Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Please Don't Talk About Me When I'm Gone"
headerSubtitle = \subtitle
headerPoet = "Sidney Clare"
headerComposer = "Sam H. Stept"
headerCopyright = "© 1930 Remick Music Corp."

refrainLyrics = \lyricmode {
Please don't talk a -- bout __ me when I'm gone. __
Oh, hon -- ey, though our friend -- ship ceas -- es from now on. __

And, lis -- ten, if you can't say an -- y -- thing real nice, __
it's bet -- ter not to talk at all __ is my ad -- vice. __

We're part -- ing, you go your way, __ I'll go mine, __ it's best that we do. __
Here's a kiss! __ I hope that this __ brings lots of luck to you.

Makes no diff -- 'rence how __ I car -- ry on, __ re -- mem -- ber,
please don't talk a -- bout me when I'm gone.
}

refrainHLChords = \chordmode {
  ef1:6 g1:7 c1:7 c1:7
  f1:7 bf1:7 g2:m7 c2:7 f2:m7 bf2:7

  ef1:6 g1:7 c1:7 c1:7
  f1:7 bf1:7 ef2:6 af2:m ef1:6
  
  g1:7 g1:7 c1:7 c1:7 f1:7 f1:7 f1:m7 bf1:7

  ef1:6 g1:7 c1:7 c1:7
  f1:7 bf1:7 ef1:6
  \chordOpenParen{ f2:m7 }
  \chordCloseParen{ bf2:7 }
}

refrainSRBChords = \chordmode {
  ef1:6 g1:7 c1:7 c1:7
  f1:7 bf1:7 g2:m7 c2:7.9- f2:m7 bf2:7

  ef1:6 g1:7 c1:7 c1:7
  f1:7 bf1:7 ef2:6 
  \chordOpenParen{ f2:m7 }
  fs2:dim7
  \chordCloseParen{ ef2:6/g }
  
  g1:7 g1:7 c1:7 c1:7 f1:7 f1:7 f1:m7 bf1:7

  ef1:6 g1:7 c1:7 c1:7
  f1:7 bf1:7 ef2:6
  \chordOpenParen{ c2:7.9- }
  f2:m7
  \chordCloseParen{ bf2:7 }
}

alternateChords = #(if (and (defined? 'alternateChords) alternateChords)
		    alternateChords
		    "hlrb")

refrainChords = #(let ((v (assoc alternateChords
			   (list
			    (cons "newreal" refrainSRBChords)
			    (cons "hlrb" refrainHLChords)
			  ))))
		  (if v (cdr v) #{ \chordmode { } #}))

refrainKey = ef

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium [Mills Brothers 1951]" 115

  \sectNoBar "A1"
  
  ef'4 g,4 bf8 ef4 d8~ | d4 g,4 b8 d4 c8~ | c1~ | c4 bf4 af4 g4 |
  \break
  g4 ef4 f8 fs4 g8~ | g4 c4 bf8 c4 g8~ | g1 | r4 bf4 c4 d4 |
  
  \sect "A2"

  ef4 g,4 bf8 ef4 d8~ | d4 g,4 b8 d4 c8~ | c1~ | c4 bf4 af4 g4 |
  \break
  g4 ef4 f8 g4 c8~ | c4 c4 bf4 g4 | ef1~ | ef4 f4 g4 bf4 |
  
  \sect "B"
  
  ef8 d4 f8~ f4 g,4 | ef'8 d4 f8~ f4 ef4 | d4 c4 d4 c4~ | c1 |
  \break
  d8 c4 ef8~ ef4 f,4 | d'8 c4 f8~ f4 d4 | c4 bf4 a4 c4 | bf1 |
  
  \sect "A3"

  ef4 g,4 bf8 ef4 d8~ | d4 g,4 b8 d4 c8~ | c1~ | c4 bf4 af4 g4 |
  \break
  ef'4 c4 c4. ef8 | f4 f4 ef4 d4 | ef1 | r1 |

  \bar "|."
}

\include "../Include/refrainonly.ily"
