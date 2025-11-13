%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Straight No Chaser"
  subtitle = \instrument
  poet = ""
  composer = "Thelonious Monk"
  copyright = \markup \small { \now " " "© 1951 Thelonious Music, Inc." }
}

refrainChords = \chordmode {
  s4

  bf1:7 ef1:7 bf1:7  bf2.:7 ef4:7 
  ef1:7 ef1:7 bf1:7 bf1:7
  f1:7 f1:7 bf1:7 bf1:7
  
  f1:7 f1:7 bf1:7 bf1:7
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Up Swing [Thelonious Monk 1951]" 4 = 164

  \partial 4 \invisEighth f8 |
  \bar "||"

  bf8 c8 df8 d8 r8 f,8 bf8 c8 | df8 d8 ef8 df8 r4 r8 f,8 |
  bf8 c8 df8 d8 r8 f,8 bf8 c8 | df8 d8 r8 f,8 bf8 c8 df4 |
  \bar "||-||"
  \break
  r8 f,8 bf8 c8 df8 d8 ef8 df8 | r1 |
  r8 f,8 bf8 c8 df8 d8 r8 f,8 | bf8 c8 df8 d8 r8 f,8 bf8 c8 \textToCodaLastTime |
  \bar "||-||"
  \break
  df8 d8 ef8 f,8 fs8 g8 gs8 a8~ | a8 bf8 b8 c8 cs8 d8 ef8 f,8 |
  bf8 c8 df8 d8 r2 | r1 |
  \bar "||-|."

  \textCodaBreak

  df8 d8 ef8 f,8 fs8 g8 gs8 a8~ | a8 bf8 b8 c8 cs8 d8 ef8 f,8 |
  bf8 c8 df8 d8~ d2~ | d1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup { "Play head twice before and twice after solos." }