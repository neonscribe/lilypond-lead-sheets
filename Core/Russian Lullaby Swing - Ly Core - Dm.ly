%% -*- Mode: LilyPond -*-

%{

"Customizer": { "choices": { "alternateChords" [ "hlrb", "dfb" ] } }

%}

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "Russian Lullaby (Swing)"
  subtitle = \instrument
  poet = ""
  composer = "Irving Berlin"
  copyright = \markup \small { \now " " "© 1927 Irving Berlin" }
}

refrainLyrics = \lyricmode {
Ev' -- ry night you'll hear her croon a Rus -- sian lull -- a -- by,
just a lit -- tle plain -- tive tune when ba -- by starts to cry.
Rock -- a -- bye my ba -- by,
some -- where there may be a land that's free for you and me
and a Rus -- sian lull -- a -- by.
}

refrainDFBChords = \chordmode {
  d1:m d1:m/cs d1:m/c d1:m/b
  bf1:7 a1:7 d1:m c1:7
  f1 f1:7 bf1 bf1:m6
  f1/c c1:7.5+ f1 f1
  
  a1:7 a1:7 bf1:7 a1:7
  d1:m f1:7 bf1 a1:7
  d1:m d1:m g1:m6 a1:7
  d1:m a1:7 d1:m
  \chordOpenParen{ g2:m6 }
  \chordCloseParen{ a2:7 }
}

refrainHLChords = \chordmode {
  d1:m7 bf2:7 a2:7 d1:m7 g1:7
  d1:m7 a1:7 d1:m7 g2:m7 c2:7
  f1:maj7 c2:m7 f2:7 bf1:maj7 bf2:m7 ef2:7
  f1:maj7 c1:7 f1:maj7 f1:maj7
  
  e1:m7 a1:7 bf1:7 a1:7
  d1:m7 c2:m7 f2:7 bf1:maj7 a1:7
  d1:m7 d1:m7 e1:m7.5- a1:7
  d1:m7 a1:7 d1:m7
  \chordOpenParen{ bf2:7 }
  \chordCloseParen{ a2:7 }
}

alternateChords = #(if (defined? 'alternateChords)
		    alternateChords
		    "hlrb")
		
refrainChords = #(let ((v (assoc alternateChords
			   (list
			    (cons "dfb" refrainDFBChords)
			    (cons "hlrb" refrainHLChords)
			  ))))
		  (if v (cdr v) #{ \chordmode { } #}))

refrainKey = d

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
  \key \refrainKey \minor
  \clef \whatClef
  \tempoFour "Swing [Jerry Garcia 1974]" 190

  \xTextMark \markup{ \bold \box "A1" }
  
  d2. e4 | f2. g4 | a2. f4 | a2. f4 |
  \break
  f2. a4 | e2. a4 | d,1 | r1 |
  
  \sect "B"
  
  f2. g4 | a2. bf4 | c2. a4 | c2. bf4 |
  \break
  a2. c4 | gs2. c4 | a1 | r1 |
  
  \sect "C"
  
  a2. b4 | cs2. d4 | f1 | e1 |
  \break
  d1 | c2. a4 | g1 | f2 g2 |
  
  \sect "D"
  
  a2. gs4 | a2. bf4 | g2. fs4 | g2 a4 g4 |
  \break
  f2. a4 | e2. a4 | d,1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
