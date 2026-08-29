%% -*- Mode: LilyPond -*-

%{

"Customizer": { "choices": { "alternateChords": [ "dfb", "djam" ] } }

%}

songID = "2026-08-28T21:13:55.191985Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Swing Guitars"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Django Reinhardt"
headerCopyright = "© 1937 Publications Francis Day S.A."

refrainDFBChords = \chordmode {
  c2 ef2:dim7 d2:m7 g2:7 c2 ef2:dim7 d2:m7 g2:7
  c2 c2:7 f2 f2:m d2:m7 g2:7 c2 g2:7

  c2 ef2:dim7 d2:m7 g2:7 c2 ef2:dim7 d2:m7 g2:7
  c2 c2:7 f2 f2:m d2:m7 g2:7 c2 c2:7

  f1 fs1:dim7 c1 c1 d1:7 d1:7 d1:m7 g1:7

  c2 ef2:dim7 d2:m7 g2:7 c2 ef2:dim7 d2:m7 g2:7
  c2 c2:7 f2 f2:m d2:m7 g2:7 c2 
  \chordInsideParens{ g2:7 }
}

refrainDjamChords = \chordmode {
  c2 ef2:dim7 d2:m g2:7 c2 ef2:dim7 d2:m g2:7
  c2 c2:7 f2 f2:m c2:7 g2:7 c2 g2:7

  c2 ef2:dim7 d2:m7 g2:7 c2 ef2:dim7 d2:m7 g2:7
  c2 c2:7 f2 f2:m c2:7 g2:7 c2 c2:7

  f1 fs1:dim7 c1 c1 d1:7 d1:7 d1:7 df1:9

  c2 ef2:dim7 d2:m g2:7 c2 ef2:dim7 d2:m g2:7
  c2 c2:7 f2 f2:m c2:7 g2:7 c2 
  \chordInsideParens{ g2:7 }
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
refrainKey = c

whatKey = #(or whatKey refrainKey)


refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium Fast [Django Reinhardt 1937]" 200

  \sectNoBar "A1"
  
  c'8 e8 g8 c8 r8 b4-. a8 | gs8 a8 f8 d8 g2 | c,8 e8 g8 c8 r8 b4-. a8 | gs8 a8 f8 d8 g2 |
  c,8 e8 g8 c8 r8 a4. | g8 f8 r8 e8 r8 d4. | \tuplet 3/2 { g8 a8 g8 } fs8 g8 ef'8 d4 c8~ | c2. r4 | 
  
  \sect "A2"

  c,8 e8 g8 c8 r8 b4-. a8 | gs8 a8 f8 d8 g2 | c,8 e8 g8 c8 r8 b4-. a8 | gs8 a8 f8 d8 g2 |
  c,8 e8 g8 c8 r8 a4. | g8 f8 r8 e8 r8 d4. | \tuplet 3/2 { g8 a8 g8 } fs8 g8 ef'8 d4 c8~ | c2 r8 e,4 c8 |
  
  \sect "B"
  
  d8 d8 d8 d8~ d4. c8 | ds8 ds8 ds8 ds8~ ds2 | r8 b'4. b8 a8 b4 | e,1 |
  b'8 b8 b8 b8~ b8 a8 b4 | e,1 | r8 b'4 a8 b8 a8 b4 | ds,2 e2 |

  \sect "A3"

  c8 e8 g8 c8 r8 b4-. a8 | gs8 a8 f8 d8 g2 | c,8 e8 g8 c8 r8 b4-. a8 | gs8 a8 f8 d8 g2 |
  c,8 e8 g8 c8 r8 a4. | g8 f8 r8 e8 r8 d4. | \tuplet 3/2 { g8 a8 g8 } fs8 g8 ef'8 d4 c8~ | c1 |
  
  \bar "|."
}

\include "../Include/refrainonly.ily"
