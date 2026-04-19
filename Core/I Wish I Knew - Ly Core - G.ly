%% -*- Mode: LilyPond -*-

%{

"Customizer": { "toggles": [ "hideLyrics" ] }

%}

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "I Wish I Knew"
  subtitle = \instrument
  poet = "Mack Gordon"
  composer = "Harry Warren"
  copyright = \markup \small { \now " " "© 1945 Twentieth Century Music Corporation" }
}

refrainLyrics =
   $(if (and (defined? 'hideLyrics) hideLyrics)
     #{ \lyricmode { } #}
     #{ \lyricmode {
I wish I knew some -- one like you could love me.
I wish I knew you placed no -- one a -- bove me.

Did I mis -- take this for a real ro -- mance?
I wish I knew, but on -- ly you can ans -- wer.

If you don't care, why let me hope and pray so.
Don't lead me on, if I'm a fool just say so.

Should I keep dream -- ing on, or just for -- get you?
What shall I do? I wish I knew.
} #} )

refrainHLChords = \chordmode {
  a1:m9 d1:13 a1:m9 d1:7
  g1:maj7 c1:7 g2:maj7 a2:m9 b2:m7 e2:9

  a1:m7 d1:9 g1:maj7 g2:6 f2:9
  e1:m7 a1:9 d2:9 c2:6 b2:m7 e2:7.11+

  a1:m9 d1:13 a1:m9 d1:7
  g1:maj9 c1:7 g2:maj7 a2:m7 b2:m7 e2:9

  a1:m7 d2:9 c2:9 b1:m7.5- e1:7
  a1:m7 d1:7 g1:6
  \chordOpenParen{ b2:m7 }
  \chordCloseParen{ e2:7 }
}

refrainBillEvansChords = \chordmode {
  a2:m9 c2:maj9 b2:7.9+.5+ e2:7.9+.5+ a2:m9 e2:7.9+.5+ a2:m9 d2:9 
  g2:maj9 df2:9.11+ c2:9.11+ \chordInsideParens{ gf2:13 } b2:m9 c2:maj9 b2:m9 e2:7.9+.5+
  
  a2:m9 e2:7.9+.5+ a2:m9 d2:9 fs4:6.9/g g4:6.9 g4:sus9 g4:9 fs2:7.9-.5+ b2:7.9+.5+
  e1:m9 a2:sus9 a2:7.9-.5- d2:9 c2:m6.9 b2:m9 bf2:9

  a2:m9 c2:maj9 b2:7.9+.5+ e2:7.9+.5+ a2:m9 e2:7.9+.5+ a2:m9 d2:9 
  g2:maj9 df2:9.11+ c2:9.11+ \chordInsideParens{ gf2:13 } b2:m9 c2:maj9 b2:m9 e2:7.9+.5+

  a1:m9 c1:m6.9 b2:m9 c2:maj9 b2:7.9-.5+ e2:7.9- 
  a2:m9 e2:7.9+.5+ a2:m9 d2:9 g2:maj7 c2:13 b2:m9 bf2:13
}

alternateChords = #(if (defined? 'alternateChords)
		    alternateChords
		    "hlrb")
		
refrainChords = #(let ((v (assoc alternateChords
			   (list
			    (cons "billevans" refrainBillEvansChords)
			    (cons "hlrb" refrainHLChords)
			  ))))
		  (if v (cdr v) #{ \chordmode { } #}))

refrainKey = g

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium-Slow [Harry James 1945]" 100

  \sectStart "A1"
  
  r4 b4 b4 a4 | b2. a4 | b4 a4 d4 b4 | e,4 a2. |
  \break
  r4 a4 a4 g4 | a2. g4 | a4 g4 d'4 b4 | d,4 fs2. |
  
  \sect "B"
  
  r4 e4 d'4 c4 | b4 a4 fs4 e4 | cs2. d4 | g1 |
  \break
  r4 g4 e'4 b4 | a4 g4 ds4 e4 | fs2 g2 | a2 bf2 |

  \sect "A2"

  r4 b4 b4 a4 | b2. a4 | b4 a4 d4 b4 | e,4 a2. |
  \break
  r4 a4 a4 g4 | a2. g4 | a4 g4 d'4 b4 | d,4 fs2. |

  \sect "C"

  r4 e4 d'4 c4 | b4 a4 g4 fs4 | e'2 d2 | c2 b2 |
  \break
  r4 b4 b4 a4 | d4 c4 a4 b4 | g1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
