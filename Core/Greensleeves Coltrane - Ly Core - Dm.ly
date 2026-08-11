%% -*- Mode: LilyPond -*-

songID = "2026-08-11T00:11:12.25397Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Greensleeves"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Arrangement by John Coltrane"
headerCopyright = "© 1961 Jowcol Music LLC"

introChords = \chordmode {
  s2. s2.
}

introKey = d

bassIntro = \relative f' {
  \time 3/4
  \key \introKey \minor
  \clef bass
  \tempoFour "Medium [John Coltrane 1961]" 140

  \sectNoBarNoBreak "Intro"

  \bar ".|:"
  \repeat volta 2 {
  d,4 a'8 d8 r8 d8~ | d8 d8 c8 a8 ef4 |
  }
}

refrainChords = \chordmode {
  d2.:m11 ef2.:13
  
  ef2.:13
  
  d2.:m g2./d c2.:maj9 a2.:m bf2.:maj7 b2.:6 a2.:7 a2.:7
  d2.:m g2./d c2.:maj9 a2.:m bf2.:maj7 a2.:7
  
  d2.:m11 ef2.:13
  
  ef2.:13
  
  d2.:m11 ef2.:13
  
  f2.:5 f2.:5 c2.:5 c2.:5 
  bf2.:5 bf2.:5 a2.:5 a2.:5
  f2.:maj7 f2.:maj7 c2.:maj7 c2.:6 bf2.:maj7 a2.:7

  d2.:m11 ef2.:13
  
  ef2.:13

  d2.:m11 ef2.:13
}

refrainKey = d

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 3/4
  \key \refrainKey \minor
  \clef \whatClef

  \bar ".|:"
  \repeat volta 4 {
  \rsq \rsq \rsq |
  \alternative { \volta 1,2,3 {
  \rsq \rsq \rsq |
  } \volta 4 {
  r4 r8 d''8~ d4\glissando | 
  } } }  
  \sectNoBreakSegno "A"
  
  f,2~ f8 g8 | a4 b8 r8 a8 r8 | g2~ g8 e8 | c4 d4 e4 |
  f2 d8 r8 | d4 cs4 d4 | e4 cs'8 a8 r4 | R2.*1 |
  g16 f8.~ f4~ f8 f16 g16 | a8 d8 b8 r8 a8 r8 | g2~ g8 e8 | c4 d4 e4 |
  f4 e4 d4 | cs4 e4 a8 r8 \textToCoda |
  
  \bar ".|:"
  \repeat volta 4 {
  \rsq \rsq \rsq |
  \alternative { \volta 1,2,3 {
  \rsq \rsq \rsq |
  } \volta 4 {
  r4 r8 d8 d4\glissando \dalSegnoI | 
  } } }  

  \textCodaIBreak
  
  \bar ".|:-||"
  
  \repeat volta 2 {
  \rsq \rsq \rsq | \rsq \rsq \rsq 
  }

  \sectNoBarNoBreak "B"
  
  c,2 c4 | c4 b4 a4 | g2 e4 | c4 d4 e4 | f2 d4 | d4 cs4 d4 |
  \break
  e4 cs8 a8 r4 | R2.*1 | r8 c'4.~ c8 c8 | c4 b4 a4 |
  g2 e4 | c4 d4 e4 | f4 e4 d4 | cs4 b4 cs4 |
  
  \bar ".|:"
  \repeat volta 4 {
  \rsq \rsq \rsq |
  \alternative { \volta 1,2,3 {
  \rsq \rsq \rsq |
  } \volta 4 {
  r4 r8 d''8~ d4\glissando \dalSegnoII | 
  } } }  

  \textCodaIIBreak
  
  \bar ".|:-||"
  \repeat volta 2 {
  \rsq \rsq \rsq | \rsq \rsq \rsq 
  }
}

outroChords = \chordmode {
  d2.:m11 ef2.:13 d2.:5
}

outroKey = d

bassOutro = \relative f' {
  \time 3/4
  \key \outroKey \minor
  \clef bass

  d,4 a'8 d8 r8 d8~ | d8 d8 c8 a8 ef4 | d2.\fermata |
  
  \bar "|."
}

\include "../Include/bassintrorefrainbassoutro.ily"
