%% -*- Mode: LilyPond -*-

songID = "2026-09-25T16:51:50.005021Z"

\include "../Include/lead-sheets.ily"

headerTitle = "The Pink Panther"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Henry Mancini"
headerCopyright = "© 1964 Northridge Music Co."

straightEighths = ##t

refrainChords = \chordmode {
  s2
  
  s1 s1 s1 s1 s1 s1 s1 s1
  
  e1:m e1:m c1:7 c1:7 e1:m e1:m f1:7 f1:7
  e1:m e1:m c1:7 c1:7 e4:m r4*7 e1:m e1:m
  c1 c1 e1:m e1:m
  
  e1:m e1:m c1 c1 e1:m e2.:m e4:m7+.9
}

refrainKey = e

whatKey = #(or whatKey refrainKey)
isMinor = ##t

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempoFour "Medium [Henry Mancini 1963]" 116

  \partial 2 \rsq \rsq |
  
  \sectNoBreak "Piano Intro"
  
  \override MultiMeasureRest.expand-limit = 2
  \compressMMRests { R1*7 }

  r2 r4 r8. ds16-> |
  
  \sectSegno "Head"
  
  e4-. r8. fs16-> g4-. r8. ds16-> | e8.-. fs16-> g8.-. c16-> b8.-. e,16-> g8.-. b16 |
  bf2~ \tuplet 3/2 { bf8 a8 g8 } \tuplet 3/2 { e8 d8 e8~ } | e2 r4 r8. ds16 |
  \break
  e4 r8. fs16 g4 r8. ds16 | e8. fs16 g8. c16 b8. g16 b8. e16 | ef1~ | ef2. r8. ds,16 |
  \break
  e4-. r8. fs16-> g4-. r8. ds16-> | e8. fs16 g8. c16 b8. e,16 g8. b16 |
  bf2~ \tuplet 3/2 { bf8 a8 g8 } \tuplet 3/2 { e8 d8 e8~ } | e2 r2 |
  \break
  r4 e'8. d16 b8. a16 g8. e16 | bf'16-> a8. bf16-> a8. bf16-> a8. bf16-> a8. \textToCodaLastTime |
  \tuplet 3/2 { g8-> e8 d8 } e8 e8~-> e2~ | e2 r2 |
  \break
  \tuplet 3/2 { g8-> e8 d8 } e8 e8~-> e2~ | e2 r2 |
  \tuplet 3/2 { g8-> e8 d8 } e8 e8~-> e2~ | e2 r4 r8. ds16 \dalSegno |
  
  \textCodaBreak
  
  \tuplet 3/2 { g8-> e8 d8 } e8 e8~-> e2~ | e2 r2 |
  \tuplet 3/2 { g8-> e8 d8 } e8 e8~-> e2~ | e2 r2 |
  \tuplet 3/2 { g8-> e8 d8 } e8 e8~-> e2 | r2 r4 r4\fermata |
  

  \bar "|."
}

\include "../Include/refrainonly.ily"
