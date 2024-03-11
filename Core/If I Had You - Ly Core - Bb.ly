%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 18) #}
)

\header {
  title = "If I Had You"
  subtitle = \instrument
  composer = "Ted Shapiro, Jimmy Campbell & Reg Connelly"
  copyright = "© 1928 Campbell Connelly & Company Limited, 8/9 Frith Street, London W1."
}

refrainLyrics = \lyricmode {
I could show the world how to smile,
I could be glad all of the while;
I could change the grey skies to blue
If I had you.
I could leave the old days be -- hind;
leave all my pals, I'd nev -- er mind.
I could start my life all a -- new
if I had you.
I could climb the snow capped moun -- tains
sail the migh -- ty o -- cean wide;
I could cross the burn -- ing des -- ert
if I had you at my side.
I could be a king, dear, un -- crowned
hum -- ble or poor, rich or re -- nowned.
There is no -- thing I could -- n't do
if I had you.
}

realBookVRefrainChords = \chordmode {
  bf1 bf1:7 ef:6 ef:m6
  bf2. e4:dim7 f2:9 f2:7.5+ bf2/d df2:dim7 c2:m7 f2:7
  
  bf1 bf1:7 ef:6 ef:m6
  bf2. e4:dim7 ef2:6 f2:7.5+ bf1 bf1
  
  d1:m e2:m7.5- a2:7.9- d1:m a1
  d1:m e2:m7.5- a2:7.9- d1:m c2:m7 ef4/f f4
  
  bf1 bf1:7 ef:6 ef:m6
  bf2. e4:dim7 f1:9 bf1 bf1
}

realBluesRefrainChords = \chordmode {
  bf1 bf2:9 bf2:7 ef2:6 ef2:maj7 ef1:m6
  bf2 df:dim7 c2:m7 f2:7.5+ bf2:6 df2:dim7 c2:m7 f4:9 f4:7

  bf1 bf2:9 bf2:7 ef2:6 ef2:maj7 ef1:m6
  bf2 df:dim7 c2:m7 f2:7.5+ bf1 e2:m7.5- a4:7.9- a4:7

  d1:m g2:m6 a2:7.9- d1:m e2:m7.5- a4:7.9- a4:7
  d2:m b2:m7.5- e2:m7.5- a2:7.9- d2:m d4:m7 g4:7 c2:m7 ef4:m6 f4:7 bf1

  bf1 bf2:9 bf2:7 ef2:6 ef2:maj7 ef1:m6
  bf2 df:dim7 c2:m7 f2:7.5+ bf2 c4:m7 ef4:m6 bf1
}

musescoreRefrainChords = \chordmode {
  bf2 g4:m7 gf4:m7 f2:m7 bf2:7 ef1:maj7 af1:7
  d2:m7 df2:dim7 c2:m7 f2:7 bf2:6 g2:7 c2:m7 f2:7

  bf2 g4:m7 gf4:m7 f2:m7 bf2:7 ef1:maj7 af1:7
  d2:m7 df2:dim7 c2:m7 f2:7 bf2:6 af2:7 bf2:6 a2:7
  
  d1:m6 e2:m7.5- a2:7.9- d1:m6 e2:m7.5- a2:7.9-
  d2:m b2:m7.5- e2:m7.5- a2:7.9- d2:m g2:9 c2:m7 f2:7

  bf2 g4:m7 gf4:m7 f2:m7 bf2:7 ef1:maj7 af1:7
  d2:m df2:dim7 c2:m7 f2:9 bf2:6
  \chordOpenParen{ g2:7 }
  c2:m7
  \chordCloseParen{ f2:7 }
}

musescorePlusDaveRefrainChords = \chordmode {
  bf2 g4:m7 gf4:m7 f2:m7 bf2:7 ef1:maj7 ef2:m6 af2:7
  bf2 d4:m7 df4:dim7 c2:m7 f4:7 f4:7.5+ bf2/d df2:dim7 c2:m7 f2:7

  bf2 g4:m7 gf4:m7 f2:m7 bf2:7 ef1:maj7 ef2:m6 af2:7
  bf2 d4:m7 df4:dim7 c2:m7 f4:7 f4:7.5+ bf1 bf2 e4:m7.5- a4:7
  
  d1:m6 e2:m7.5- a2:7.9- d1:m6 e2:m7.5- a2:7
  d2:m b2:m7.5- e2:m7.5- a2:7.9- bf2:6 g2:7 c2:m7 f2:7

  bf2 g4:m7 gf4:m7 f2:m7 bf2:7 ef1:maj7 ef2:m6 af2:7
  bf2 d4:m7 df4:dim7 c2:m7 f4:7 f4:7.5+ bf2
  \chordOpenParen{ g2:7 }
  c2:m7
  \chordCloseParen{ f2:7 }
}

refrainChords = \musescorePlusDaveRefrainChords

refrainKey = bf

refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Swing" 4 = 115
  
  \mark \markup{ \box "A1" }
  
  d8 ef8 e8 f8 d'8 d4 df8 | c2 d8 d4 df8 | c2 d8 d4 df8 | c1 |
  d,8 ef8 e8 f8 a8 a4 af8 | g2 a8 a4 af8 | g1~ | g4 r4 r2 |

  \bar "||"
  \break

  \mark \markup{ \box "A2" }

  d8 ef8 e8 f8 d'8 d4 df8 | c2 d8 d4 df8 | c2 d8 d4 df8 | c1 |
  d,8 ef8 e8 f8 a8 a4 af8 | g2 g8 f8 g4 | bf1~ | bf4 r4 r2 |

  \bar "||"
  \break

  \mark \markup{ \box "B" }
  
  d8 e8 d8 e8 d4 a4 | bf4 bf2. | a8 bf8 a8 bf8 a4 f4 | e1 |
  d'8 e8 d8 e8 d4 a4 | bf4 bf2. | a8 bf8 a8 bf8 a4 f4 | ef1 |

  \bar "||"
  \break

  \mark \markup{ \box "A3" }

  d8 ef8 e8 f8 d'8 d4 df8 | c2 d8 d4 df8 | c2 d8 d4 df8 | c1 |
  d,8 ef8 e8 f8 a8 a4 af8 | g2 g8 f8 g4 | bf1~ | bf4 r4 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
