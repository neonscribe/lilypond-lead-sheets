%% -*- Mode: LilyPond -*-

%{

"Customizer": { "choices": { "alternateChords": [ "hlrb", "newreal" ] } }

%}

songID = "2026-11-01T21:27:23.019032Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Will You Still Be Mine"
headerSubtitle = \subtitle
headerPoet = "Tom Adair"
headerComposer = "Matt Dennis"
headerCopyright = "© 1940 Dorsey Bros. Music"

refrainLyrics = \lyricmode {
When lov -- ers make no ren -- dez -- vous __ to stroll a -- long Fifth Av -- e -- nue. __
When this fa -- mil -- iar world is through, __ will you still be mine? __

When cabs don't drive a -- round the park. __ No win -- dows light the sum -- mer dark. __
When love has lost its sec -- ret spark, __ will you still be mine?

When moon -- light on the Hud -- son's not ro -- man -- cy __
and spring no long -- er turns a young man's fan -- cy.

When glam -- our girls have lost their charms. __
When si -- rens just mean false a -- larms. __
When lov -- ers heed no call to arms. __
Will you still be mine? __
}

refrainNRChords = \chordmode {
  ef1:maj7 g2:m7 c2:7 f1:m7 bf1:7
  ef1:maj7 g2:m7 c2:7 f1:m7 d2:m7.5- g2:7
  
  c1:m7 c1:m7 f1:13 f1:13
  fs2:m7 b2:7 bf1:7.9+.5+ ef2:maj7 c2:7 f2:m7 bf2:7

  ef1:maj7 g2:m7 c2:7 f1:m7 bf1:7
  g1:7 g1:7 c1:m7 c1:m7

  c1:m7 c1:m7 f1:13 f1:13
  fs2:m7 b2:7 bf1:7.9+.5+ ef1:sus9 ef1:7
  
  af1:maj7 af1:maj7 df1:9 df1:9
  ef1:maj7 ef1:maj7 fs2:m7 b2:7 b2:m7 bf2:7

  ef1:maj7 g2:m7 c2:7 f1:m7 bf1:7
  ef1:maj7 g2:m7 c2:7 f1:m7 d2:m7.5- g2:7

  c1:m7 c1:m7 f1:13 f1:13
  f1:m9 bf1:13 ef2:maj7
  \chordOpenParen{ c2:7 }
  f2:m7
  \chordCloseParen{ bf2:7 }
}

refrainHLChords = \chordmode {
  ef1:maj7 g2:m7 c2:7 f1:m7 bf1:7
  ef1:maj7 g2:m7 c2:7 f1:m7 d2:m7.5- g2:7
  
  c1:m7 c1:m7 f1:7 f1:7
  b1:7 bf1:7.5+.9+ ef2:maj7 c2:7.9- f2:m7 bf2:7

  ef1:maj7 g2:m7 c2:7 f1:m7 bf1:7
  g1:7 g1:7 c1:m7 g1:7.5+

  c1:m7 c1:m7 f1:7 f1:7
  b1:7 bf1:7.5+.9+ bf1:m7 ef1:7
  
  af1:maj7 af1:maj7 df1:9.11+ df1:9.11+
  ef1:6 c1:m7 fs2:m7 b2:7 f2:m7 bf2:7

  ef1:maj7 g2:m7 c2:7 f1:m7 bf1:7
  ef1:maj7 g2:m7 c2:7 f1:m7 d2:m7.5- g2:7

  c1:m7 c1:m7 f1:7 f1:7
  f1:m7 bf1:7 ef1:6
  \chordOpenParen{ f2:m7 }
  \chordCloseParen{ bf2:7 }
}

alternateChords = #(if (and (defined? 'alternateChords) alternateChords)
		    alternateChords
		    "hlrb")

refrainChords = #(let ((v (assoc alternateChords
			   (list
			    (cons "newreal" refrainNRChords)
			    (cons "hlrb" refrainHLChords)
			  ))))
		  (if v (cdr v) #{ \chordmode { } #}))

refrainKey = ef

whatKey = #(or whatKey refrainKey)


refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Fast [Miles Davis 1955]" 250

  \sectNoBar "A1"
  
  r4 g4 af4 g4 | c4 bf4 af4 g4 | bf1~ | bf2 r2 |
  \break
  r4 g4 af4 g4 | c4 bf4 af4 g4 | bf1~ | bf2 r2 |
  
  \sect "B1"
  
  r4 ef4 f4 ef4 | g4 f4 ef4 g4 | d1~ | d2 r2 |
  \break
  r4 df2 cf4 | df2 cf4 bf4~ | bf1~ | bf1 |
  
  \sect "A2"

  r4 g4 af4 g4 | c4 bf4 af4 g4 | bf1~ | bf2 r2 |
  \break
  r4 g4 b4 b4 | d4 d4 f4 f4 | ef1~ | ef2 r2 |

  \sect "B2"

  r4 ef4 f4 ef4 | g4 f4 ef4 g4 | d1~ | d2 r2 |
  \break
  r4 df2 cf4 | df2 cf4 bf4~ | bf1 | r4 ef4 f4 fs4 |

  \alwaysPageBreak "C" "||" "||-||"
  
  g2 bf4 af4~ | af4 g4 ef4 c4 | cf2 g'2~ | g1 |
  \break
  r4 ef4 ef4 ef4 | ef4 ef4 d4 c4 | gf'2 gf2 | ef4 f2. |

  \sect "A3"

  r4 g,4 af4 g4 | c4 bf4 af4 g4 | bf1~ | bf2 r2 |
  \break
  r4 g4 af4 g4 | c4 bf4 af4 g4 | bf1~ | bf2 r2 |

  \sect "B3"

  r4 ef4 f4 ef4 | g4 f4 ef4 g4 | d1~ | d2 c4 ef4 |
  \break
  g1 | g1 | ef1~ | ef2 r2 |
  
  \bar "|."
}

\include "../Include/refrainonly.ily"
