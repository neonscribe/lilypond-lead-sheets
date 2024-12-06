%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Moanin'"
  subtitle = \instrument
  poet = ""
  composer = "Bobby Timmons"
  copyright = "© 1958 Second Floor Music"
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  s1
  
  r2 bf4./f f8 r1 s2 bf4./f f8 s1 s2 bf4./f f8 s1 s2 bf4./f f8
  
  s1 

  s1 

  bf2:m7 af2:7 g2:7.9- c2:7.5+.9+ bf1/f f2:m b2:9.5-
  bf2:m7 af2:7 g1:7.9- c1:7.5+.9+ r1
  
  s2 bf4./f f8 s1 s2 bf4./f f8 s1 s2 bf4./f f8 s1 s2 bf4./f f8 s1
  
  f2:m6 af2:7 g2:7.5+.9- c2:7.5+.9+
  f2:m6 af2:7 g2:7.5+.9- c2:7.5+.9+
  f2:m6 af2:7 g2:7.5+.9- c2:7.5+.9+
  f2:m6 af2:7 g2:7.5+.9- c2:7.5+.9+

  bf2:m7 af2:7 g2:7.9- c2:7.5+.9+ f1:m6 f2:7 f2:7.5+.9-
  bf2:m7 af2:7 g1:7.9- g1:m7.5- c1:7.5+

  f2:m6 af2:7 g2:7.5+.9- c2:7.5+.9+
  f2:m6 af2:7 g2:7.5+.9- c2:7.5+.9+
  f2:m6 af2:7 g2:7.5+.9- c2:7.5+.9+
  f1:m6 s1

  s2 bf4./f f8 s1
  
  bf2:m7 af2:7 g2:7.9- c2:7.5+.9+ bf1/f f2:m b2:9.11+
  bf2:m7 af2:7 g2:7.9- c2:7.5+.9+ f2:m f2:m/e 
  f2:m/ef d2:7.5-.9+ df1:maj7 c8*7:7.5+.9+ bf8*9/f f1:m
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium" 4 = 126

  r8 f8 r8 f8 af8 af8 f8 c8 |

  \xTextMark \markup{ \bold \box "A1, A2" \musicglyph #"scripts.segno" }
  
  \bar ".|:"
  \repeat volta 2 {
  ef4 f2. | r8^"(rhythm continues)" f8 r8 f8 af4 bf8 bf16 cf16 |
  bf16 af16 f8 f2. | r8 f8 r8 f8 c'4 ef8 c16 cf16 |
  \break
  bf16 af16 f8 f2. | r8 f8 r8 f8 af8 af8 f8 c8 | ef4 f2. |
  \alternative { \volta 1 {
  r8 f8 r8 f8 af8 af8 f8 c8 |
  } \volta 2 {
  r2 f4 f4 |
  } } }
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  c'2^"(bass walks in four)" c16 bf16 af16 f16 bf8 f8 | af4. f8 ef8 c8 ef8 f8~ | f1~ | f4 r4 f4 f4 |
  \break
  c'2 c16 bf16 af16 f16 bf8 f8 | af4. f8 af8 f8 af8 c8~ |
  c2 ef8 c8 bf8 c8 | r8 f,8 r8 f8 af8 af8 f8 c8 |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "A3" }
  
  ef4^"(rhythm resumes)" f2. | r8 f8 r8 f8 af4 bf8 bf16 cf16 |
  bf16 af16 f8 f2. | r8 f8 r8 f8 c'4 ef8 c16 cf16 |
  \break
  bf16 af16 f8 f2. | r8 f8 r8 f8 af8 af8 f8 c8 \textToCodaLastTime | ef4 f2. | r1 |

  \xPageBreak

  \xTextMark \markup{ \bold \box "Solos A1, A2" }

  \bar ".|:-||"
  \repeat volta 2 {
  \rsq^"(bass walks in four on solos)" \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  }

  \break
  \xTextMark \markup{ \bold \box "Solos B" }

  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \bar "$"

  \break
  \xTextMark \markup{ \bold \box "Solos A3" }

  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \rsq \rsq \rsq \rsq | 
  \override Parentheses.font-size = #5
  \startParenthesis \parenthesize
  r8 f8 r8 f8 af8 af8 f8
  \endParenthesis \parenthesize
  c8 \dalSegnoAfterSolos |

  \bar "$"

  \textCodaBreak
  
  ef4 f2. | r2 f4 f4 |
  \bar "$"

  c'2^"(bass walks in four)" c16 bf16 af16 f16 bf8 f8 | af4. f8 ef8 c8 ef8 f8~ | f1~ | f4 r4 f4 f4 |
  \break
  c'2 c16 bf16 af16 f16 bf8 f8 | af4. f8 ef8 c8 ef8 f8~ | f1~ | f4 r4 f4 f4 |
  \break
  c'2 c16 bf16 af16 f16 bf8 f8 | af4. f8 ef8 c8 ef8 f8~ | f1~\fermata | f1\fermata |

  \bar "|."
}

refrainKicksOverTime = \relative f' {
  s1 r2 c4. c8
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-with-kicks.ily"
