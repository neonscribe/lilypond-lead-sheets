%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
     (set-global-staff-size 18))

\header {
  title = "Nice Work if You Can Get It"
  subtitle = \instrument
  poet = "Ira Gershwin"
  composer = "George Gershwin"
  copyright = \markup \small { \now " " "© 1937 Nokawi Music, Frankie G. Songs and Ira Gershwin Music" }
}

refrainLyrics = \lyricmode {
Hold -- ing hands at mid -- night 'neath a star -- ry sky,
Nice work __ if you can get it, and you can get it if you try. __
Strol -- ling with that one girl, sigh -- ing sigh af -- ter sigh,
Nice work __ if you can get it, and you can get it if you try. __
Just im -- ag -- ine some -- one __ wait -- ing at the cot -- tage door,
where two hearts be -- come one. __ Who could ask for an -- y -- thing more?
Lov -- ing one who loves you and then tak -- ing that vow,
Nice work __ if you can get it, and if you get it, __
won't you tell me how?
}

refrainHLChords = \chordmode {
  b2:7.5+ e2:9 a2:7.5+ d2:9 g2:13 c2:9 a1:9
  g2/d e2:m7 a2:m7 d2:7 a2:m7 d2:sus7 g2:6 c2:9

  b2:7.5+ e2:9 a2:7.5+ d2:9 g2:13 c2:9 a1:9
  g2/d e2:m7 a2:m7 d2:7 a2:m7 d2:sus7 g2:6 b2:7.5+
  
  e1:m7 c1:9 e1:m7 a1:13
  d2:m6 \chordInsideParens{ b2:m7.5- } e2:m7.5- a2:7.5+ a1:m7 d2:7.5+ \chordInsideParens{ c2:7 }
  
  b2:7.5+ e2:9 a2:7.5+ d2:9 g2:13 c2:9 a1:9
  g2/d e2:m7 a2:m7 d2:7 a2:m7 d2:7 b2:7.5- e2:7 a2:m7 d2:sus9
  g1:7 g2:6 \chordInsideParens{ c2:9 }
}

refrainSRBChords = \chordmode {
  b2:7.5+ e2:9 a2:7.5+ d2:9 g2:7 c2:7 a2:13 \chordInsideParens{ as2:dim7 }
  b2:m7 e2:m7 a2:m7 d2:7 a2:m7 d2:sus7 g2:6 \chordInsideParens{ c2:9 }

  b2:7.5+ e2:9 a2:7.5+ d2:9 g2:7 c2:7 a2:13 \chordInsideParens{ as2:dim7 }
  b2:m7 e2:m7 a2:m7 d2:7 a2:m7 d2:sus7 g2:6 b2:7.5+
  
  e1:m7 c1:9 e1:m7 a1:13 d2:m6 \chordInsideParens{ b2:m7.5- } 
  e2:m7.5- a2:7.5+ a1:m7 d2:7.5+ \chordInsideParens{ c2:7 }

  b2:7.5+ e2:9 a2:7.5+ d2:9 g2:7 c2:7 a2:13 \chordInsideParens{ as2:dim7 }
  b2:m7 e2:m7 a2:m7 d2:7 b2:7.5+ e2:9 a2:m7 d2:sus9 g1:6 \chordInsideParens{ c2:9 }
}

refrainChords = \refrainSRBChords

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Up [Fred Astaire 1937]" 4 = 172

  \xTextMark \markup{ \bold \box "A1" }
  
  b4 c4 c4 b4 | a4 b2. | g4 a4 a4 g4 | fs1 |
  \break
  d4. e8~ e8 d8 e8 g8 | a8 b4. r8 d,8 e8 g8 | a8 b4. g4 g8 g8~ | g2. r4 |
  
  \sect "A2"
  
  b4 c4 c4 b4 | a4 b2. | g4 a4 \tuplet 3/2 { a4 af4 g4 } | fs1 |
  \break
  d4. e8~ e8 d8 e8 g8 | a8 b4. r8 d,8 e8 g8 | a8 b4. g4 g8 g8~ | g1 |
  
  \sect "B"
  
  r8 b4 g8 b4 g4 | bf4. g8~ g2 | b8 b8 b,8 b8 e8 g4. | fs1 |
  \break
  r8 a4 f8 a4 f4 | a4. a8~ a4 a8 b8 | d4 d4 d8 e8 b4 | as1 |
  
  \sect "C"

  b4 c4 c4 b4 | a4 b2. | g4 a4 \tuplet 3/2 { a4 af4 g4 } | fs1 |
  \break
  d4. e8~ e8 d8 e8 g8 | a8 b4. r8 d,8 e8 g8 | a8 b4.~ b2 |
  \break
  d4 b4 g4 e4 | g1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
