%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Impressions"
  subtitle = \instrument
  poet = ""
  composer = "John Coltrane"
  copyright = \markup \small "© 1962 Jowcol Music"
}

refrainChords = \chordmode {
  d1:m7 d1:m7 d1:m7 d1:m7 
  d1:m7 d1:m7 d1:m7 
  
  d1:m7 
  
  d1:m7

  ef1:m7 ef1:m7 ef1:m7 ef1:m7
  ef1:m7 ef1:m7 ef1:m7 ef1:m7

  d1:m7 d1:m7 d1:m7 d1:m7 
  d1:m7 d1:m7 d1:m7 d1:m7 

  d1:m7 d1:m7 d1:m7 d1:m7 
  d1:m7 d1:m7 d1:m7 d1:m7 
  d1:m7 d1:m7 d1:m7 d1:m7 
  d1:m7 d1:m7
}

refrainKey = d

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Fast [John Coltrane 1962]" 4 = 274

  \sectStart "A1,A2"
  
  \bar ".|:"
  \repeat volta 2 {
  d'1~ | d2 e8 g8 f8 d8~ | d1^"(continue rhythm on head)" | r4 r8 e8 f4 g4 |
  \break
  a4 c4 e,2 | d4 f4 b,4 d8 a8~ | a1 |
  \alternative { \volta 1 {
  r2 g'4 f4 |
  } \volta 2 {
  r2 f4. f8~ |
  } } }
  \sect "B"
  
  f1~ | f4. ef8 af4-. gf4-. | f2 ef2 | df2 gf4. c,8~ |
  \break
  c2 bf8 ef4. | af,2 gf4 df'8 f,8~ | f1 | r2 \scoop f'2 |

  \sect "A3"

  d1~ | d2 e8 g8 f8 d8~ | d1 | r4 r8 e8 f4 g4 |
  \break
  a4 c4 e,2 | d4 f4 b,4 d8 a8~ \textToCodaLastTime | a1 | r1 |
  
  \break
  \bar "||-|."
  \textCoda
  
  a1\repeatTie | r2 g4. f8~ | f1 | r2 r4 e4 | d1 | r2 r4 c'4 |
  \break
  b1 | r2 e2 \glissando | a,1~ | a1~ | a1~ | a1~ | a1~ | a1\fermata |

  \bar "|."
}

refrainKicksOverTime = \relative f' {
r8 bf8 r4 bf4. bf8~ | bf1 |
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
