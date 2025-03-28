%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "The “In” Crowd"
  subtitle = "Ramsey Lewis arrangement, 1965"
  subsubtitle = \instrument
  poet = ""
  composer = "Billy Page"
  copyright = \markup \small "© 1964 American Music, Inc."
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  \chordInsideParens{ d1:7 }
  \chordInsideParens{ d1:7 }
  \chordInsideParens{ d1:7 }
  \chordInsideParens{ d1:7 }

  d1:7 d1:7 d1:7 d1:7
  d1:7 d1:7 d1:7 d1:7

  g1:7 g1:7 g1:7 g1:7
  d1:7 d1:7 d1:7 d1:7

  fs1:7 fs1:7 b1:7 b1:7
  e1:7 e1:7 a1:7
  a8:m b4:m7 c8*5
  
  r1*2
}

refrainKey = d

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 140

  \xTextMark \markup{ \bold \box "Intro" }
  
  r4 <d c fs>4 <d c fs>8 <d c fs>8 r8 <d c fs>8~ |
  <d c fs>4 <d c fs>4 <d c fs>8 <d c fs>8 r8 <d c fs>8 |
  r4 <d c fs>4 <d c fs>8 <d c fs>8 r8 <d c fs>8~ |
  <d c fs>4 <d c fs>4 <d c fs>8 <d c fs>8 r8 <d c fs>8 |

  \sect "Head"
  
  r4 \acciaccatura af'8 a4 g8 f8 d8 f8 | r8 g4.~ g2 |
  r4 \acciaccatura af8 a4 g8 f8 d8 f8~ | f8 d8 c8 <d c>8~ <d c>2 |
  \break
  r4 \acciaccatura af'8 a4 g8 f8 d8 f8 | r8 g4.~ g2 |
  r8 gs8 a8 c8~ c4 \tuplet 3/2 { a16 g16 f16 } d8 | g8 d8 f4 d2 |
  \break
  
  \bar "||-||"
  \break
  
  r2 r8 f8 e8 d8~ | d8 f8 r8 e8 r8 d8 f4 | 
  f4 e8 d8 e8 d8 r8 d8~ | d8 r8 d8 f4-. d4. |
  \break
  <a' fs>4 r4 r8 d,8 f4 | r8 d8 f4-. d4 r8 f8-. |
  r8 d4. \acciaccatura e8 <f d>8 e8 c8 d8~ | d8 c8 c8 b8 c4. r8 |
  \break
  r4 fs4 r8 fs8 r4 | as4 fs8 e8 fs4 r4 | r2 b8 a8 b8 b8 | fs8 d8 e8 d8 r2 |
  \break
  r4 e2 fs4 | e8 d8 b8 e8 r2 | r8 e8 e8 d8 e4 r8 d8 |
  <a' e>8 <b fs>8~ <b fs>8 <c g>8~ <c g>2 |
  
  \bar "||-||"
  \break
  
  

  \xTextMark \markup{ \bold \box "Turnaround" }
  
  d4 r8 c8~ c8 r8 a4 | r8 g4 r8 f4 c4 \textToCodaLastTime |
  
  \bar "|."

  \textCoda
  
  <e' b fs a, d,>4-> r4 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
