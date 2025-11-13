%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Ain't Nothin' Like Christmas"
  subtitle = \instrument
  poet = ""
  composer = "Shelby Lynne"
  copyright = \markup \small { \now " " "© 2010 Swampy Blue" }
}

refrainLyrics = \lyricmode {
  Ain't no -- thin' like Christ -- mas, ba -- by.
  Don't come but once a year.
  Ain't no -- thin' like Christ -- mas, ba -- by.
  With car -- ols and good cheer.
  Ain't no -- thin' like Christ -- mas, ba -- by.
  Let's meet a -- round the tree.
  I'll bring the nog,
  you put on a log,
  it's a Christ -- mas par -- ty.
  
  Oh with tin -- sel in our hair
  And pres -- ents ev' -- ry -- where.
  Fam' -- ly's in the kit -- chen watch -- ing it snow.
  There's a par -- ty we got -- ta throw,
  Tell -- in' ev' -- ry -- one we know
  Ba -- by it's that spe -- cial time of year. Ain't no -- thin' like
}

refrainChords = \chordmode {
  s2.
  
  g1 g1:7 c1 g1
  g1 g1 a1:7 d1:7
  g1 g1:7 c1 g1:7
  c1 g2 e2:7 a2:7 d2:7 g1
  
  c1 c1 g1 g1
  a1:7 a1:7 d1:7 d1:7
  c1 c1 g1 g1
  a1:7 a1:7 d1:7 d4:7 r2.
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Bluesy Country Swing [Shelby Lynne 2010]" 4 = 128

  \partial 2. e4 e8 d8 e4 |

  \bar ".|:"
  \repeat volta 2 {

  \xTextMark \markup{ \bold \box "Chorus" }
  
  e4 b8 d8~ d4. e8~ | e4 r4 r2 | e,8 e8 g8 bf8~ bf4 bf8 b8~ | b8 r8 e4 e8 d8 e4 |
  \break
  e4 b8 d8~ d4. e8~ | e4 r4 r4 r8 a,8 | a8 a4 fs'8~ fs8 e4 d8~ | d8 r8 e4 e8 d8 e4 |
  \break
  e4 b8 d8~ d4. e8~ | e4 r4 r2 | e,8 e8 g8 bf8~ bf4 bf8 b8~ | b8 r8 r4 r2 |
  \break
  e8 e8 e8 e8~ e4. e8 | d8 d8 e8 b8~ b4 a8 g8 | a4 g4 bf8( a4) g8~ | g4 
  \volta 2 \fine
  r4 r4 e'8 e8 |
  \sect "Verse"
  e4 e4 e8 e4 e8~ | e2 r4 r8 e8 | d4 d4 d8 e4 b8~ | b2 r2 |
  \break
  a8 a4 a4 a4 fs'8~ | fs8 fs4 fs8 fs8 e4 d8~ | d1~ | d4 r4 r4 e8 e8 |
  \break
  e8 e8 e4 e8 e4 e8~ | e2 r4 e8 e8 | d4 d4 d8 e4 b8~ | b2 r2 |
  \break
  a8 a4 a4 a4 fs'8~ | fs8 fs4 fs4 e4 d8~ | d1~ | d4 e4 e8 d8 e4 |
  }
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
