%% -*- Mode: LilyPond -*-

%{

"Customizer": { "choices": { "alternateChords": [ "dfb", "djam" ] } }

%}

songID = "2026-08-25T00:39:27.436052Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Dinette"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Django Reinhardt"
headerCopyright = "© 1941 Publications Francis Day S.A."

refrainLeadingEighth = ##t

refrainDFBChords = \chordmode {
  s8
  
  af1 df1:9 af1 e1:7
  bf1:m7 ef1:7.9- af2 f2:m7 bf2:m7 ef2:7

  af1 df1:9 af1 e1:7
  bf1:m7 ef1:7.9- af2 df2 af2 c2:7
  
  f1:m f1:m/e f1:m/ef f1:m/d
  f1:m bf1:7 bf1:m7 ef1:7

  af1 df1:9 af1 e1:7
  bf1:m7 ef1:7.9- af2 df2 af1
}

refrainDjamChords = \chordmode {
  s8
  
  af1 df1:7 af1 e1:7
  bf1:m7 ef1:7 af2 a2:dim7 bf2:m7 ef2:7

  af1 df1:7 af1 e1:7
  bf1:m7 ef1:7 af2 ef2:7 af1
  
  f1:m f1:m/e f1:m/e f1:m/cs
  f1:m/ef bf1:7 bf1:m7 ef1:7

  af1 df1:7 af1 e1:7
  bf1:m7 ef1:7 af2 ef2:7 af1
}

alternateChords = #(if (and (defined? 'alternateChords) alternateChords)
		    alternateChords
		    "dfb")

refrainChords = #(let ((v (assoc alternateChords
			   (list
			    (cons "dfb" refrainDFBChords)
			    (cons "djam" refrainDjamChords)
			  ))))
		  (if v (cdr v) #{ \chordmode { } #}))
refrainKey = af

whatKey = #(or whatKey refrainKey)


refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "" 200

  \partial 8 b8 |

  \sectNoBreak "A1"
  
  c8 g'8 r4 g4. c,8 | b8 f'8 r4 f4. b,8 | c8 g'8 r4 g4. c,8 | b8 fs'8 r4 fs2 |
  \break
  bf,8 f'8 r4 f2 | bf,8 e8 r4 e4 ef8 df8 | c8 df8 ef2 df8 c8 | bf8 c8 df2 r8 b8 |
  
  \sect "A2"

  c8 g'8 r4 g4. c,8 | b8 f'8 r4 f4. b,8 | c8 g'8 r4 g4. c,8 | b8 fs'8 r4 fs2 |
  \break
  bf,8 f'8 r4 f2 | bf,8 e8 r4 e4 ef8 df8 | c8 bf8 af2. | r1 |

  \sect "B"
  
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  
  \sect "A3"

  c8 g'8 r4 g4. c,8 | b8 f'8 r4 f4. b,8 | c8 g'8 r4 g4. c,8 | b8 fs'8 r4 fs2 |
  \break
  bf,8 f'8 r4 f2 | bf,8 e8 r4 e4 ef8 df8 | c8 bf8 af2. | r1 |

  \bar "|."
}

\include "../Include/refrainonly.ily"
