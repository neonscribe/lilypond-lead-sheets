%% -*- Mode: LilyPond -*-

songID = "2026-07-02T00:40:42.197909Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Mr. Blue Sky"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Jeff Lynne"
headerCopyright = "© 1977 United Artists Music Ltd."

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  f1 f1 f1 f1
  
  f1 f1 f1 e2:m11 a2
  d1:m7 g1 e1:m7 a1
  bf1 bf1/c f1 bf1/c

  f1 f1 f1 e2:m11 a2
  d1:m7 g1 e1:m7 a1
  bf1 bf1/c f1 bf1/c

  d1:m f1/c bf1:maj7 f1/a
  g1:m f1 ef1 bf1

  d1:m f1/c bf1 f1/a
  g1:m f1 ef1 bf1 bf1 bf1
  
  bf1
  d1:m f1 bf1
  f1 g1:m f1 ef1 
  bf1 d1:m f1 bf1 f1
  g1:m f1 ef1 bf1 bf1 bf1
  
  f1 f1 f1 e2:m7 a2:7.5+
  d1:m g1 e1:m a2 a2:7.5+ bf1 bf1
  f1 bf1
  
  f1 f1
  f1 e2:m7 a2 d1:m g1 
  e1:m a1 bf1 bf1 
  df1 ef1 d1:m f1
  bf1 f1 g1:m f1 ef1 bf1
  
  d1:m f1 bf1 f1
  g1:m f1 ef1 bf1
  
  d1:m f1 bf1 f1
  g1:m f1
  
  ef1 bf1
  
  ef1 ef1 bf1 bf1 f1
  
}

refrainKey = f

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium Fast [ELO 1977]" 175
  
  \sectNoBar "Intro"
  
  

  \sect "Verse 1"
  
  \sect "Chorus"
  
  \sect "Solo"

  \sect "Verse 2"

  \sect "Chorus"
  
  \sect "Bridge"

  \sect "Synth Break"

  \sect "Verse 3"

  \sect "Chorus"
  
  \sect "Bridge"

  \sect "Outro"

  \bar "|."
}

\include "../Include/refrainonly.ily"
