%% -*- Mode: LilyPond -*-

%{

"Customizer": { "choices": { "alternateChords": [ "cowboy", "jazz" ] } }

%}

\version "2.26.0"

songID = "2026-06-01T22:16:23.926892Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Act Naturally"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Voni Morrison, Johnny Russell"
headerCopyright = "© 1963 Blue Book Music Co."

refrainLyrics = \lyricmode {
  \time 2/2
  \tempoFour "Medium-Up Country Swing [The Beatles 1964]" 186
\sect "Intro/Outro"
_1 _ _ _
\break
\sect "Verse 1"
They're2. gonna4 put4 me in the8 movies,8*9 _1
\break
They're4 gonna4 make4 a8 big4. star4 out of me.2. _4 _2 _4 _8 
\break
We'll8 make4 a8 film4 about4 a8 man4 that's sad and8 lonely,8*9 _2 _4 _8
\break
and8 all8 I gotta4 do8 is2 act4 natural8*5 -- ly.2. _4 _2 _8
\break
\sectNoBar "Bridge"
Well,8 I4
bet4 you4. I'm4. gonna2 be4 a8 big4. star,2 _4 _2 _8
\break
might4. win4 an8 Oscar,8*5 you4 can4. never4 tell.8*5  _2 _2 _4 _8
\break
The8 movies2 gonna2 make2 me4 a8 big4. star2 _4 _2 _4 _8
\break
'cause8 I4 can play the8 part8*5 _8 so4 well.8*9 _2 _8
\break
\sectNoBar "Verse 2"
Well,4 I8 hope4 you'll come and see me in the8 movies,8*9 _1
\break
then8 I'll4. know4 that4 you4 will4 plainly2 see2. _4 _2 _4 _8
\break
the8 biggest2 fool4. that8 ever2 hit4 the8 big4. time.2. _2 _4 _8
\break
and8 all8 I gotta4 do8 is2 act4 natural8*5 -- ly.2. _4 _1
\break
\sect "Interlude"
_1 _ _ _ _ _ _ _
\bar "||"
}

refrainCowboyChords = \chordmode {
  d1:7 d1:7 g1 g1

  g1 g1 c1 c1
  g1 g1 d1:7 d1:7

  g1 g1 c1 c1
  d1:7 d1:7 g1 g4 r2.

  d1:7 d1:7 g1 g1
  d1:7 d1:7 g1 g1
  d1:7 d1:7 g1 g1
  a1:7 a1:7 d1:7 d1:7

  g1 g1 c1 c1
  g1 g1 d1:7 d1:7

  g1 g1 c1 c1
  d1:7 d1:7 g1 g4 r2.

  d1:7 d1:7 g1 g1
  d1:7 d1:7 g1 g1
}

refrainJazzChords = \chordmode {
  d1:7 d1:7 g1 g1

  g2 g2:maj7 g1:7 c1 c1:6
  g2 g2:maj7 g2:6 gs2:dim7 a1:m11 d1:7

  g2 g2:maj7 g1:7 c1 c1:6
  a1:m11 d1:7 g1 g4 r2.

  a1:m11 d1:7 g1 g1:maj7
  a1:m11 d1:7 g1 g1:maj7
  a1:m11 d1:7 g1 g2:maj7 gs2:dim7
  a1:7 a1:7 d1:sus7 d1:7

  g2 g2:maj7 g1:7 c1 c1:6
  g2 g2:maj7 g2:6 gs2:dim7 a1:m11 d1:7

  g2 g2:maj7 g1:7 c1 c1:6
  a1:m11 d1:7 g1 g4 r2.

  d1:7 d1:7 g1 g1
  d1:7 d1:7 g1 g1
}

alternateChords = #(if (and (defined? 'alternateChords) alternateChords)
		    alternateChords
		    "cowboy")

refrainChords = #(let ((v (assoc alternateChords
			   (list
			    (cons "jazz" refrainJazzChords)
			    (cons "cowboy" refrainCowboyChords)
			  ))))
		  (if v (cdr v) #{ \chordmode { } #}))

refrainKey = g

whatKey = #(or whatKey refrainKey)

afterText =
\markup {
  \column
  {
   \line { \large { \bold { Verse 3 } } }
   \line { \large { We'll make the scene about a man that's sad and lonely } }
   \line { \large { And begging down upon his bended knee } }
   \line { \large { I'll play the part and I won't need rehearsing } }
   \line { \large { All I have to do is act naturally } }
 }
  \column
  {
    \hspace #4
    }
  \column
  \bold
  {
   \line { \large { Bridge } }
   \vspace #1
   \line { \large { Verse 2 } }
   \vspace #1
   \line { \large { Outro } }
   }
}

\include "../Include/chordsonly.ily"
