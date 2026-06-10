%% -*- Mode: LilyPond -*-

%{

"Customizer": { "choices": { "alternateChords": [ "hlrb", "newreal", "newrealalt" ],
	                     "singerGender": [ "male", "female" ] } }

%}

songID = "2026-06-01T22:16:43.380478Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Lucky to Be Me"
headerSubtitle = \subtitle
headerPoet = "Adolph Green, Betty Comden"
headerComposer = "Leonard Bernstein"
headerCopyright = "© 1944 Warner Bros, Inc."

refrainMaleSingerLyrics = \lyricmode {
What a day! For -- tune smiled and came my way,
bring -- ing love I nev -- er thought I'd see.
I'm so luck -- y to be me.

What a night! Sud -- den -- ly you came in sight,
look -- ing just the way I'd hoped you'd be.
I'm so luck -- y to be me.

I am sim -- ply thun -- der -- struck at this change in my luck.
Knew at once I want -- ed you, nev -- er dreamed you'd want me too.

I'm so proud you chose me from all the crowd.
There's no oth -- er guy I'd rath -- er be.
I'm so luck -- y to be me.
}

refrainFemaleSingerLyrics = \lyricmode {
What a day! For -- tune smiled and came my way,
bring -- ing love I nev -- er thought I'd see.
I'm so luck -- y to be me.

What a night! Sud -- den -- ly you came in sight,
look -- ing just the way I'd hoped you'd be.
I'm so luck -- y to be me.

I am sim -- ply thun -- der -- struck at this change in my luck.
Knew at once I want -- ed you, nev -- er dreamed you'd want me too.

I'm so proud you chose me from all the crowd.
There's no oth -- er gal I'd rath -- er be.
I'm so luck -- y to be me.
}

refrainLyrics =
#(if (and (defined? 'singerGender)
          (equal? singerGender "female"))
  refrainFemaleSingerLyrics
  refrainMaleSingerLyrics)

refrainHLChords = \chordmode {
  f1 bf2 c2:7 f1 g2:m a2:7
  d2:m d2:m7/c b2:m7.5- g2:7 bf1/c f1:6

  f1 bf2 c2:7 f1 g2:m a2:7
  d2:m d2:m7/c b2:m7.5- g2:7 bf1/c f1

  c1 f1:6 g1:7 c1/e
  af1 bf1:m ef1:7 df2:7 c2:7.5-

  f1 bf2 c2:7 f1 g2:m a2:7
  d2:m d2:m7/c b2:m7.5- g2:7 bf1/c bf1/c f1
}

refrainSRBChords = \chordmode {
  f2:maj7 d2:7.9- g2:m7 c2:9 f2:maj7 c4:m7 f4:7 e2:m7.5- a2:7.5+
  d1:m7 g1:9 g2:m7 c2:sus9 f2:6 c2:sus9

  f2:maj7 d2:7.9- g2:m7 c2:9 f2:maj7 c4:m7 f4:7 e2:m7.5- a2:7.5+
  d1:m7 g1:9 g2:m7 c2:sus9 f2:6 \chordInsideParens{ g2:13 }

  c2:maj7 a2:13 d1:m7 af2:13 g2:13.9- c2:maj7 bf4:m9 ef4:9
  af2:maj9 f2:13.9- bf1:m7 ef1:7 df2:9 c2:9

  f2:maj7 d2:7.9- g2:m7 c2:9 f2:maj7 c4:m7 f4:7 e2:m7.5- a2:7.5+
  d1:m7 g1:13 g2:m7 c2:sus9 f1:6
  \chordOpenParen{ g2:m7 }
  \chordCloseParen{ c2:sus9 }
}

refrainSRBAlternateChords = \chordmode {
  f2:maj7 d2:7.9- g2:m7 c2:9 f2:maj7 c4:m7 f4:7 bf2:maj7 e4:m7.5- a4:7.9-
  d1:m7 g1:9 c1:sus9 f2:6 c2:sus9

  f2:maj7 d2:7.9- g2:m7 c2:9 f2:maj7 c4:m7 f4:7 bf2:maj7 e4:m7.5- a4:7.9-
  d1:m7 g1:9 c1:sus9 f2:6 \chordInsideParens{ g2:13 }

  c2:maj7 a2:13 d2:m7 g2:9 af2:13 g2:13.9- c2:maj7 bf4:m9 ef4:9
  af2:maj9 f2:13.9- bf1:m7 a2:13 af2:13 g2:13 gf2:9.11+

  f2:maj7 d2:7.9- g2:m7 c2:9 f2:maj7 c4:m7 f4:7 bf2:maj7 e4:m7.5- a4:7.9-
  d1:m7 g1:13 g2:m7 c2:sus9 f1:6
  \chordOpenParen{ g2:m7 }
  \chordCloseParen{ c2:sus9 }
}

alternateChords = #(if (defined? 'alternateChords)
		    alternateChords
		    "hlrb")

refrainChords = #(let ((v (assoc alternateChords
			   (list
			    (cons "newreal" refrainSRBChords)
			    (cons "newrealalt" refrainSRBAlternateChords)
			    (cons "hlrb" refrainHLChords)
			  ))))
		  (if v (cdr v) #{ \chordmode { } #}))

refrainKey = f

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Ballad [Blossom Dearie 1959] or Medium [Tommy Flanagan 1959]" 160

  \sectNoBarNoBreak "A1"

  c'4 a4 c,2 | d4 f4 d'4 c4 | a4 f4 c2 | bf4 d4 a'4 g4 |
  f4 g4 a4 e'4 | d2. d,8 f8 | g4 a4 f4 f4 | f2 r2 |

  \sect "A2"

  c'4 a4 c,2 | d4 f4 d'4 c4 | a4 f4 c2 | bf4 d4 a'4 g4 |
  f4 g4 a4 e'4 | d2. d,8 f8 | g4 a4 f4 f4 | f2 r2 |

  \sect "B"

  e4 f4 fs4 g4 | af4 a4 a2 | bf4 b4 b2 | b4 c4 c2 |
  c,4 df4 d4 ef4 | e4 f4 f2 | fs4 g4 af4 bf4 | b4 c4 c2 |

  \sect "A2"

  c4 a4 c,2 | d4 f4 d'4 c4 | a4 f4 c2 | bf4 d4 a'4 g4 |
  f4 g4 a4 d4 | e2. d,8 f8 | g4 a4 f4 f4 | f1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\include "../Include/refrain.ily"
