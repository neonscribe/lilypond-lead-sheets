%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Bemsha Swing"
  subtitle = \instrument
  poet = ""
  composer = "Thelonious Monk & Denzil Best"
  copyright = \markup \small "© 1952 Second Floor Music"
}

refrainMonkHeadChords = \chordmode {
  s4

  c2:maj7 a2:7.11+ af2:7.11+ df2:7 c2 ef2:7 d2:7 df2:7
  c2 a2:7.11+ af2:7.11+ df2:7 c2 bf2:7 af2:7 gf2:7
  f2 d2:7 df2:7 gf2:7 f2 af2:7 g2:7 df2:7
  c2 a2:7.11+ af2:7.11+ df2:7 c2 df2:maj7 df1:maj7
}

refrainHLHeadChords = \chordmode {
  s4

  c2:maj7 a2:7 af2:7 df2:7 c2 ef2:7 d2:7 df2:7
  c2:maj7 a2:7 af2:7 df2:7 c2 bf2:7 af2:7 gf2:7
  f2:maj7 d2:7 df2:7 gf2:7 f2 af2:7 g2:7 df2:7
  c2 a2:7 af2:7 df2:7 c2 df2:maj7 df1:maj7
}

refrainHLSoloChords = \chordmode {
  c2:maj7 a2:7 af2:7 df2:7 c2:maj7 ef2:7 d2:7 df2:7
  c2:maj7 a2:7 af2:7 df2:7 c2:maj7 bf2:7 af2:7 gf2:7
  f2:maj7 d2:7 df2:7 gf2:7 f2:maj7 af2:7 g2:7 df2:7
  c2:maj7 a2:7 af2:7 df2:7 c2:maj7 df2:maj7.11+ df1:maj7.11+
}

refrainChords = { \refrainMonkHeadChords \refrainHLSoloChords }

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Miles Davis 1954]" 4 = 150

  \partial 4 g4-. |
  
  \xTextMark \markup{ \bold \box "Head" }
  
  \bar ".|:"
  \repeat volta 2 {
  c4-. r4 r4 r8 g8 | r8 c8 bf8 af8 g8 g8 f4-. | e8 e8 b4-. c4-- r4 | r2 r4 g'4-. |
  \break
  c4-. r4 r4 r8 g8 | r8 c8 bf8 af8 g8 g8 f4-. | e8 e8 b4-. c4-- r4 | r2 r4 c'4-. |
  \break
  f4-. r4 r4 r8 c8 | r8 f8 ef8 df8 c8 c8 bf4-. | a8 a8 e4-. f4-- r4 | r2 r4 g4-. |
  \break
  c4-. r4 r4 r8 g8 | r8 c8 bf8 af8 g8 g8 f4-. | e8 e8 b4-. c4-- r4 | r2 r4 
  \override Parentheses.font-size = #5
  \parenthesize g'4-. |
  }
  \break

  \xTextMark \markup{ \bold \box "Solos" }
  
  \bar ":|.|:"
  \repeat volta 2 {
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq
  \override Parentheses.font-size = #5
  \parenthesize g4-. |
  \break
  }
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup{ "Play head twice before and twice after solos." }
