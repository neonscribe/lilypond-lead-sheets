%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 18) #}
)

\header {
  title = "Samba de Orfeu"
  subtitle = \instrument
  poet = "Antônio Maria"
  composer = "Luiz Bonfá"
  copyright = \markup \small "© 1959 Nouvelles Editions Meridian"
}

bossaRhythm = ##t

refrainHLChords = \chordmode {
  s2.

  c1:maj7 c1:maj7 c1:maj7 c1:maj7
  c2:maj7 f2:9.11+ e2:m7 a2:7 d1:m7 g1:7
  d1:m7 g1:7 d1:m7 g1:7
  d1:m7
  
  g1:7 bf2:9.11+ a2:7 d2:m7 g2:7
  
  g1:7 c1:6 c1:6
  
  g1:m7 c1:7 f2:maj7 f2:6 f1:maj7
  f1:m7 bf1:7 ef1:maj7 d2:m7 g2:7
  
  c1:maj7 c1:maj7 c1:maj7 c1:maj7
  c2:maj7 f2:9.11+ e2:m7 a2:7 d1:m7 g1:7
  d1:m7 g1:7 d1:m7 g1:7
  d1:m7 g1:7 c1:6
  \chordOpenParen{ d2:m7 }
  \chordCloseParen{ g2:7 }
}

refrainJoelChords = \chordmode {
  s2.

  c1:maj7 c1:maj7 c1:maj7 c1:maj7
  c1:maj7 cs1:dim7 d1:m7 g1:7
  d1:m7 g1:7 d1:m7 g1:7
  d1:m7
  
  g1:7 c1:maj7 g4:7 r2.
  
  g1:7 c1:maj7 c4:maj7 r2.
  
  g1:m7 c1:7 f1:maj7 f1:maj7
  f1:m7 bf1:7 ef1:7 g4:7 r2.
  
  c1:maj7 c1:maj7 c1:maj7 c1:maj7
  c1:maj7 cs1:dim7 d1:m7 g1:7
  d1:m7 g1:7 d1:m7 g1:7
  d1:m7
  g1:7 c1:maj7 c4:maj7 r2.
}

refrainChords = #(if (and (defined? 'useJoelChords) useJoelChords)
		  refrainJoelChords
		  refrainHLChords)

refrainKey = c

refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Samba [Vince Guaraldi 1962]" 4 = 250

  \partial 2. c8 e8 r8 g4 b8~ |

  \xTextMark \markup{ \bold \box "A1, A2" }
  
  \bar ".|:"
  \repeat volta 2 {
    b1 | a4. g8 r8 e4 b8~ | b1 | r4 c8 e8 r8 g4 b8~ |
    \break
    b8 b4 b8 b8 b4 b8~ | b4 a8 g8 r8 e4 g8~ | g2 d2 | r4 d8 f8 r8 a4 c8~ |
    \break
    c1 | a2 f8 e4 d8~ | d1 | r4 r8 f8 a8 c4 b8~ |
    b8 b4 g8 b8 b4 g8 |
  } \alternative { {
    \break
    b4. g8 b8 g4 e8~ | e1 | r4 c8 e8 r8 g4 b8\laissezVibrer |
  } {
    b4. g8 e'8 d4 c8~ | c1 |
    r2 c8 b4 bf8~ |
  } }
  
  \sect "B"
    
    bf1 | r8 e,4 f8~ f8 g4 a8~ | a1 | r2 a8 a4 af8~ |
  \break
    af1 | r4 af8 c8 r8 b4 g8~ | g1 | r4 c,8 e8 r8 g4 b8~ |
  
  \sect "A3"
  
  b1 | a4. g8 r8 e4 b8~ | b1 | r4 c8 e8 r8 g4 b8~ |
  \break
  b8 b4 b8 b8 b4 b8~ | b4 a8 g8 r8 e4 g8~ | g2 d2 | r4 d8 f8 r8 a4 c8~ |
  \break
  c1 | a2 f8 e4 d8~ | d1 | r4 r8 f8 a8 c4 b8~ |
  \break
  b8 b4 g8 b8 b4 g8 | b4. g8 e'8 d4 c8~ | c1~ | c4 r4 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
