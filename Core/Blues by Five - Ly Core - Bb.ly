%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Blues by Five"
  subtitle = \instrument
  poet = ""
  composer = "Red Garland"
  copyright = \markup \small { \now " " "© 1956 Prestige Music" }
}

refrainChords = \chordmode {
  s4
  
  bf1:7 bf1:7 bf1:7 bf1:7 
  ef1:7 ef1:7 bf1:7 bf1:7
  f1:7 f1:7 bf2:7 g2:7 c2:m7 f2:7
}

refrainKey = bf

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Fast [Miles Davis 1956]" 4 = 180

  \partial 4 f4-. |
  \bar "||"

  \sectStart "Head"
  
  af4. bf8~ bf4 f4-. | af4. bf8~ bf4 f4-. | af8 bf8 af4 bf4 af8 f8 | r4 r8 bf8~ bf4 bf4-. |
  \break
  df4. ef8~ ef4 bf4-. | df4. ef8~ ef4 f,4-. | af8 bf8 af4 bf4 af8 f8 | r2 r4 bf4-. |
  \break
  df4. bf8~ bf4 df4~ | df8 bf4. af4-. a8 bf8 \textFine | r4 r8 af8 r4 r8 g8 | r4 r8 gf8 r4
  \override Parentheses.font-size = #5 \parenthesize f4-. |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup{ "Play head twice, before and after solos." }
