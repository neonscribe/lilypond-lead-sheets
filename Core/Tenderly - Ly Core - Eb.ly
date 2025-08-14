%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 18) #}
)

\header {
  title = "Tenderly"
  subtitle = \instrument
  poet = "Jack Lawrence"
  composer = "Walter Gross"
  copyright = \markup \small "© 1946 Edwin H. Morris & Co."
}

refrainLyrics = \lyricmode {
The eve -- ning breeze __ ca -- ressed the trees ten -- der -- ly,__
The trem -- bling trees __ em -- braced the breeze ten -- der -- ly; __
Then you and I came wan -- der -- ing by,
And lost in a sigh were we. __
The shore was kissed __ by sea and mist ten -- der -- ly, __
I can't for -- get __ how two hearts met breath -- less -- ly, __
Your arms o -- pened wide and closed me in -- side, __
You took my lips, __ you took my love __ so ten -- der -- ly.
}

refrainRealBookSecondVolIIChords = \chordmode {
  s2
  
  ef1:maj7 af1:7.11+ ef1:m7 af1:7
  f1:m7 df1:7.11+ ef2:maj7 g4:m7 f4:m7 ef1:maj7
  
  f1:m7.5- bf1:7 f1:m7.5- d2:m7.5- g2:7.5+
  c1:m7 f1:7 f1:m7 bf1:7

  ef1:maj7 af1:7.11+ ef1:m7 af1:7
  f1:m7 df1:7.11+ ef2:maj7 g4:m7 f4:m7 ef1:maj7
  
  f1:m7.5- bf1:7 c2:m7 c2:m7/bf a2:m7.5- d2:7.9-
  g2:m7 c2:7.5+ f2:m7 bf2:7.9- ef1:6
  \chordOpenParen{ f2:m7 }
  \chordCloseParen{ bf2:7 }
}

refrainNewRealChords = \chordmode {
  s2
  
  ef1:maj7 af1:9.11+ ef1:m9 af1:13
  f1:m9 df1:9.11+ ef1:maj7 g2:m7 c2:7
  
  f1:m7.5- bf1:13 f1:m7.5- bf2:13 b2:dim7
  c1:m7 f1:13 f1:m7 bf1:7

  ef1:maj7 af1:9.11+ ef1:m9 af1:13
  f1:m9 df1:9.11+ ef1:maj7 g2:m7 c2:7
  
  f1:m7.5-  bf2:13 b2:dim7 c1:m7 f2:13 fs2:dim7
  g2:m7 c2:7.5+ f2:m9 bf2:7 ef1:6
  \chordOpenParen{ f2:m7 }
  \chordCloseParen{ bf2:7 }
}

refrainChords = \refrainNewRealChords

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad or Medium [Bill Evans 1959]" 4 = 152

  \partial 2 \invisEighth bf8 c8 ef8 |
  \bar "||"
  
  \xTextMark \markup{ \bold \box "A1" }
  
  d2~ d8 bf8 c8 ef8 | d2. bf8 gf8 | f1~ | f2 r8 ef8 f8 af8 |
  \break
  g2~ g8 ef8 f8 af8 | g2. ef8 cf8 | bf1~ | bf2 r4 bf4 |
  
  \sect "B"
  
  cf2. bf'4 | g2. bf,4 | cf2 ef4 bf'4 | g2. f4 |
  \break
  ef2 g4 f'4 | d2. f,4 | bf1~ | bf2 r8 bf8 c8 ef8 |
  
  \sect "A2"
  
  d2~ d8 bf8 c8 ef8 | d2. bf8 gf8 | f1~ | f2 r8 ef8 f8 af8 |
  \break
  g2~ g8 ef8 f8 af8 | g2. ef8 cf8 | bf1~ | bf2 r4 bf4 |

  
  \sect "C"

  cf2 ef4 bf'4 | g2. f4 | ef2 g4 f'4 | d2~ d8 ef8 c8 d8 |
  \break
  bf2~ bf8 c8 af8 bf8 | g2~ g8 f8 af8 d,8 | ef1 | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
