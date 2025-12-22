%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
   (set-global-staff-size 18))

\header {
  title = "Oh, Lady Be Good"
  subtitle = \instrument
  poet = "Ira Gershwin"
  composer = "George Gershwin"
  copyright = \markup \small { \now " " "© 1924 WB Music Corp." }
}

refrainLyrics = \lyricmode {
  _ _ _
  Oh, sweet and love -- ly la -- dy, be good. __
  Oh, la -- dy, be good __ to me! __
  
  I am so aw -- f'ly mis -- un -- der -- stood, __
  So la -- dy, be good __ to me. __

  Oh, please have some pi -- ty, __
  I'm all a -- lone in this big ci -- ty.

  I tell you I'm just a lone -- some babe in the wood, __
  So la -- dy, be good __ to me.
}

refrainLyricsTwo = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _

  This is tu -- lip weath -- er __
  So let's put two and two to -- geth -- er.
}

refrainSRBChords = \chordmode {
  s2.

  g1:6 c1:9 g2:6 \chordInsideParens{ c2:9 } b2:m7 e2:7.9-
  a1:m7 d1:7.9- g2:6 e2:m7 a2:m7 d2:7.9-

  g1:6 c1:9 g2:6 \chordInsideParens{ c2:9 } b2:m7 e2:7.9-
  a1:m7 d1:7.9- g1:6 d2:m7 g2:7
  
  c1:6 cs1:dim7 g1:6
  \chordOpenParen{ fs2:m7.5- }
  \chordCloseParen{ b2:7.9-.5+ }
  e1:m7 a1:9 a1:m7 d1:7.9-

  g1:6 c1:9 g2:6 \chordInsideParens{ c2:9 } b2:m7 e2:7.9-
  a1:m7 d1:7.9- g2:6
  \chordOpenParen{ e2:7.9- }
  a2:m7
  \chordCloseParen{ d2:7.9- }
}

refrainHLChords = \chordmode {
  s2.

  g1:maj9 c1:9 g2:maj9 c2:9 b2:m7 e2:7.9-
  a1:m7 d1:7 g2 e2:7.9+ a2:m7 d2:7

  g1:maj9 c1:9 g2:maj9 c2:9 b2:m7 e2:7.9-
  a1:m7 d1:7 g1:6 d2:m7 g2:9

  c1:maj9 cs1:dim7 g1:maj9 g2:maj9 fs4:m7 b4:7
  e2:m e2:m7+ e2:m7 e2:m6 a1:m7 d1:7

  g1:maj9 c1:9 g2:maj9 c2:9 b2:m7 e2:7.9-
  a1:m7 d1:7 g1:6 
  \chordOpenParen{ a2:m7 }
  \chordCloseParen{ d2:7 }
}

refrainDFBChords = \chordmode {
  s2.

  g1 c1:7 g1 g2/b bf2:dim7
  a1:m7 d1:7 g2 e2:7 a2:m7 d2:7

  g1 c1:7 g1 g2/b bf2:dim7
  a1:m7 d1:7 g1 d2:m7 g2:7
  
  c1 cs1:dim7 g1 g1
  a1:7 a1:7 d1:7 d1:7

  g1 c1:7 g1 g2/b bf2:dim7
  a1:m7 d1:7 g2
  \chordOpenParen{ gs2:dim7 }
  a2:m7
  \chordCloseParen{ d2:7 }
}

refrainSimpleChords = \chordmode {
  s2.

  g1 c1:7 g1:6 b2:m7 bf2:m7
  a1:m7 d1:7 g2 e2:7 a2:m7 d2:7

  g1 c1:7 g1:6 b2:m7 bf2:m7
  a1:m7 d1:7 g1 d2:m7 g2:7
  
  c1 cs1:dim7 g1 g1
  a1:7 a1:7 d1:7 d1:7

  g1 c1:7 g1:6 b2:m7 bf2:m7
  a1:m7 d1:7 g2:6
  \chordOpenParen{ e2:7 }
  a2:m7
  \chordCloseParen{ d2:7 }
}

refrainChords = #(if (and (defined? 'useSimpleChords) useSimpleChords)
		  refrainSimpleChords
		  refrainHLChords)

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Fast Swing [Django Reinhardt 1934]" 4 = 250

  \partial 2. b4 c4 cs4 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  d2 c4 b4 | d2 d2 | \tuplet 3/2 { d4 b4 g4 } d2~ | d2 d'2 |
  \break
  \tuplet 3/2 { d4 c4 a4 } d,2~ | d2 b'2 | g1~ | g2 r2 |
  
  \sect "A2"
  
  d'2 c4 b4 | d2 d2 | \tuplet 3/2 { d4 b4 g4 } d2~ | d2 d'2 |
  \break
  \tuplet 3/2 { d4 c4 a4 } d,2~ | d2 b'2 | g1~ | g2 r2 |
  
  \sect "B"
  
  e'1 | r4 e4 e4 e4 | e2 d2~ | d2 r2 |
  \break
  r4 b4 b4 b4 | b4 b4 b4 b4 | b2 a2 | r4 b4 c4 cs4 |
  
  \sect "A3"

  d2 c4 b4 | d2 d2 | \tuplet 3/2 { d4 b4 g4 } d2~ | d2 e'2 |
  \break
  \tuplet 3/2 { d4 c4 a4 } d,2~ | d2 b'2 | g1 | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
