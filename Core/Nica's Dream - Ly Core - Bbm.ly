%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Nica's Dream"
  subtitle = \instrument
  poet = ""
  composer = "Horace Silver"
  copyright = \markup \small { \now " " "© 1956 Ecaroh Music, Inc." }
}

refrainChords = \chordmode {
  s4

  bf1:m7+ bf1:m7+ af1:m7+ af1:m7+
  bf1:m7+ bf1:m7+ af1:m7df1:7
  af1:m7 df1:7 gf2:maj7 df2:9 c1:7.9+
  c1:m7.5-/f f1:7.5+.9- bf1:m7+
  
  bf2.:m7+ \chordInsideParens{ f4:7.5+ }
  
  bf1:m
  
  ef1:m7/af af1:7 f1:m7 bf2.:7.9- bf4:7.5+
  ef1:9.11+ ef2:m7 af2:7 df1:maj7 e2:m7 a2:7
  ef1:m7/af af1:7 f1:m7 bf2.:7.9- bf4:7.5+
  ef1:9.11+ ef2:m7 af2:7 df8*7:maj7 f8:7.5+ r1
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Fast Latin [Jazz Messengers 1956]" 4 = 188

  \partial 4 f4 |

  \xTextMark \markup{ \bold \box "A1, A2, A3" \musicglyph #"scripts.segno" }
  
  \bar ".|:"
  \repeat volta 2 {
  c'1~ | c4. bf8 r8 f4-. df8 | f1~ | f2. f4 |
  \break
  \tuplet 3/2 { c'4 df4 a4 } c2~ | c4. bf8 r8 f4-. df8 |
  \tuplet 3/2 { ef4 f4 df4 } ef2~ | ef2. df4 |
  \break
  bf'1~ | bf4. af8 r8 f4-. df8 | ef1~ | ef1 |
  \break
  ef8 f8 ef8 f8 gf2~ | gf2 f4-. r8 df8 | c1~ |
  \alternative { \volta 1 {
  c2. f4 |
  } \volta 2 {
  c2.\repeatTie r4 |
  } } }
  \sect "B"
  
  \tempo "Swing"
  
  r4 f4 df4. ef8 | f4 df2 ef4 | f4 gf4 af4 bf8 cf8~ | cf2. bf4 |
  \break
  a4 bf8 bf,8 r8 df4 ef8 | f4 df2 c4 | ef1 | fs8 d8 e8 fs8~ fs2 |
  \break
  r4 f4 df4. ef8 | f4 df2 ef4 | f4 gf4 af4 bf8 cf8~ | cf2. bf4 |
  \break
  a4 bf8 bf,8 r8 df4 ef8 | f4 df2 c4 | ef2. f8 g8 | 
  r8 f8_\markup{ "Solo " \bold \box "A1" \bold \box "A2" \bold \box "B" \bold \box "A3" }  e8 f8 df'4 a8 \dalSegnoSecondEnding c8\laissezVibrer |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
