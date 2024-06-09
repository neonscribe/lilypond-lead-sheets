%% -*- Mode: LilyPond -*-

#(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 16) #}
)

\header {
  title = "I'm Beginning to See the Light"
  subtitle = \instrument
  poet = "Don George"
  composer = "Johnny Hodges, Duke Ellington, Harry James"
  copyright = "© 1944 Famous Music Corporation"
}

refrainLyrics = \lyricmode {
  I
  nev -- er cared much for moon -- lit skies
  I nev -- er wink back at fi -- re -- flies
  But now that the stars are in your eyes
  I'm be -- gin -- ning to see the light __
  I
  nev -- er went in for af -- ter -- glow
  Or can -- dle -- light on the mis -- tle -- toe
  But now when you turn the lamp down low
  I'm be -- gin -- ning to see the light __
  Used to ram -- ble through the park __
  Sha -- dow box -- ing in the dark __
  Then you came and caused a spark
  That's a four a -- larm fi -- re, now __
  I
  nev -- er made love by lan -- tern shine
  I ne -- ver saw rain -- bows in my wine
  But now that your lips are bur -- ning mine
  I'm be -- gin -- ning to see the light __
  I
  -gin -- ning to see the light. __
  I'm be -- gin -- ning to see the light __
}

refrainRealBookSixthChords = \chordmode {
  s8

  g2:6 c2:m6 g2:6 e2:7 a2:7 d2:7 bf2:m7 ef2:7
  g2:6 fs2:7 f2:7 e2:7 a2:7 d2:7
  
  g2 a4:m7 d4:7
  
  g2:6 c2:m6 g2:6 e2:7 a2:7 d2:7 bf2:m7 ef2:7
  g2:6 fs2:7 f2:7 e2:7 a2:7 d2:7
  
  g1
  
  b1:7 b1:7 bf1:7 bf1:7 a1:7 a1:7 bf2:m7 ef2:7 a2:m7 d2:7
  
  g2:6 c2:m6 g2:6 e2:7 a2:7 d2:7 bf2:m7 ef2:7
  g2:6 fs2:7 f2:7 e2:7
  
  a2:7 d2:7 g2

  \chordOpenParen{ a4:m7 }
  \chordCloseParen{ d4:7 }

  a2:7 d2:7 b1:7

  a2:7 d2:7 g1
}

refrainSimplifiedChords = \chordmode {
  s8

  g2:6 ef2:7 g1:6 g1:6 ef1:7
  g2: a2:m7 b2:m7 e2:7 a2:m7 d2:7 g2:6 d2:7
  
  g2:6 ef2:7 g1:6 g1:6 ef1:7
  g2: a2:m7 b2:m7 e2:7 a2:m7 d2:7 g1:6
  
  b1:7 b1:7 bf1:7 bf1:7 a1:7 a1:7 ef1:7 d1:7
  
  g2:6 ef2:7 g1:6 g1:6 ef1:7
  g2: a2:m7 b2:m7 e2:7 a2:m7 d2:7 g1:6
  
  a2:m7 d2:7 b1:7

  a2:m7 d2:7 g1:6
}

refrainChords = \refrainSimplifiedChords

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Med. Swing" 4 = 145

  \partial 8 ds8 |
  \bar "||"
  
  \textMark \markup{ \bold \box "A1" }

  e8 g8 e4 g4 a4 | b8 e,4 e2 ds8 | e8 g8 e4 g4 a4 | bf8 ef,4 ef2 ef8 |
  \break
  e8 g8 e4 g4 a4 | b8 d4 d4. d8 c8 | b8 g8 e4 g8 a4 g8~
  g2 r4 r8 ds8

  \textMark \markup{ \bold \box "A2" }

  \bar "||"


  e8 g8 e4 g4 a4 | b8 e,4 e2 ds8 | e8 g8 e4 g4 a4 | bf8 ef,4 ef2 ef8 |
  \break
  e8 g8 e4 g4 a4 | b8 d4 d4. d8 c8 | b8 g8 e4 g8 a4 g8~
  g2. r4
    
  \bar "||"
  
  \break
  
  \textMark \markup { \bold \box "B" }

  r8 b4 fs8 b4 fs4 | ds8 fs4 b8~ b2 | r8 bf4 f8 bf4 f4 | d8 f4 bf8~ bf2 |
  \break
  r8 a4 e8 a4 e4 | cs8 e4 a4. a8 a8 | bf8 bf8 bf4 bf8 g4 a8~ | a2. r8 ds,8 

  \bar "||"
  \break

  \textMark \markup { \bold \box "A3" }

  e8 g8 e4 g4 a4 | b8 e,4 e2 ds8 | e8 g8 e4 g4 a4 | bf8 ef,4 ef2 ef8 |
  \break
  e8 g8 e4 g4 a4 | b8 d4 d4. d8 c8 \textToCodaLastTime |

  b8 g8 e4 g8 a4 g8~ | g2. r8 ds8 |
  
  \bar "||-|."

  \textCodaBreak

  b'8 g8 e4 g8 a4 b8~ |
      b2. d8 c8 |
      b8 g8 e4 g8 a4 g8~ |
      g2. r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

performanceNotes =
\markup {
  \column {
    \line { \huge { last 8 clarinet, vocal chorus, clarinet chorus, } }
    \line { \huge { guitar chorus, vocal from B with second ending } }
  }
}

\include "../Include/notes.ily"
