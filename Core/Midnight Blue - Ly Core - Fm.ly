%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Midnight Blue"
  subtitle = \instrument
  poet = ""
  composer = "Kenny Burrell"
  copyright = \markup \small { \now " " "© 1963 Elliot Music" }
}

refrainChords = \chordmode {
  \set chordChanges = ##t
  f2:m7 g2:m7 af2:maj7 g4:m7 g4:m7/c
  f2:m7 g2:m7
  
  af2:maj7 g4:m7 g4:m7/c

  af2:maj7 g4:m7 g4:m7/c

  f2:m7 g2:m7 af2:maj7 c4:7.9+/g c4:7.9+/c
  f2:m7 g2:m7 af2:maj7 c4:7.9+/g c4:7.9+/c
  f2:m7 g2:m7 af4.:maj7 c8*5:7.9+
  f2:m7/c c2:7.9+ f2.:m7 \chordInsideParens{ g4:m7.5- }
  
  g1:m7.5- c1:7.9-.5+ 
  f2..:m7 \chordInsideParens{ bf8:9 } bf2..:9 \chordInsideParens{ bf8:m9 }
  bf1:m9 af2:m9 af2:m9/df c2..:7.9+.5+ f8:m7
  
  s8 c2..:7.9+
  
  s4 c2.:7.9+
  
  \set chordChanges = ##f

  f2:m7
  \chordOpenParen{ g2:m7 }
  af2:maj7
  \chordCloseParen{ g2:m7 }
  
  f2:m7
  \chordOpenParen{ g2:m7 }
  af2:maj7
  \chordCloseParen{ g2:m7 }
  
  f2:m7
  \chordOpenParen{ g2:m7 }
  af2:maj7
  \chordCloseParen{ g2:m7 }
  
  f2:m7
  \chordOpenParen{ g2:m7 }
  \chordCloseParen{ af1:maj7 }
  
  g1:m7.5- c1:7.9-.5+ f1:m7 f1:m7
  bf1:m7 bf1:m7 df1:9 c1:7.9-.5+
  
  \set chordChanges = ##t
  f2:m7 g2:m7 af2:maj7 g4:m7 g4:m7/c
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium Swing [Kenny Burrell 1963]" 4 = 144

  \sectStart "Intro"
  
  \bar ".|:"
  \repeat volta 2 {
  r8 <ef af c>8 r4 <f bf d>4-. r4 | <g c ef>4-. r8 <f bf d>8 r2 |
  r8 <ef af c>8 r4 <f bf d>4-. r4 |
  \alternative { \volta 1 {
  <g c ef>4-. r8 <f bf d>8 r2 |
  } \volta 2 {
  <g c ef>4-. r8 <f bf d>8 r4 r8 e8( |
  } } }

  \sect "A1,A2"
  
  \bar ".|:-||"
  \repeat volta 2 {
  f4) af8 f8 \tuplet 3/2 { b16( c16 b16) } af8 f8 ef8 | f4. <e bf' ef>8-^ r8 f8 af8( c8~ |
  c4) ef8 f8 \tuplet 3/2 { bf,16( cf16 bf16) } af8 f8 ef8 | f4. <e bf' ef>8-^ r4 r8 e8( |
  
  f4) af8 f8 \tuplet 3/2 { b16( c16 b16) } af8 f8 ef8 | f4. <e bf' ef>8-^ r8 f8 af8( c8~ |
  c4) ef8 f8 \tuplet 3/2 { bf,16( cf16 bf16) } af8 f8 ef8 | f2 r8 f8 bf8 ef8~-> |
  
  \sect "B1,B2"
  
  ef2~ ef8 d8 ef8 df8~ | df2~ df8 c8 df8 c8~ | c2~ c8 f,8 r8 af8-> | r2 r8 c,8 f8 c'8~ |
  c2~ c8 bf8 c8 bf8~ | bf2 bf8 af8 bf8 af8~ | af4 f8 ef8 c8 ef8 f8 f8-^ |
  \alternative { \volta 1 {
  \set tieWaitForNote = ##t
  r8 c8 ~ e8 ~ <bf' ef>8 ~ <c, e bf' ef>2
  } \volta 2 {
  r4 \rsq \rsq \rsq |
  } } }

  \xPageBreak

  \sect  "Solos A1,A2"
  
  \repeat volta 2 {
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  
  \sect "Solos B1,B2"

  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  }

  \textCodaBreak

  \repeat volta 2 {
  r8 <ef af c>8 r4 <f bf d>4-. r4 | <g c ef>4-. r8 <f bf d>8 r2_"(vamp & fade)" |
  }
}

refrainBass = \relative f' {
  \clef bass
  \key \refrainKey \minor

  f,2 g2 | af4. g8~ g8 ef8 c4 | f2 g2 |
  
  af4. g8~ g8 ef8 c4 |

  af'4. g8~ g8 ef8 c4 |

  f2 g2 | af4. g8~ g8 ef8 c4 |
  f2 g2 | af4. g8~ g8 ef8 c4 |
  f2 g2 | af4. bf8~ bf4 df4 |
  c4 g4 c,4 e4 | f4 \rsq_"(walk)" \rsq \rsq |
  
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rse \rse |
  
  r1 |
  
  r4 c2 e4 |
  
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  
  f2 g2 | af4. g8~ g8 ef8 c4 |
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
