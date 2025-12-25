%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "E.S.P."
  subtitle = \instrument
  poet = ""
  composer = "Wayne Shorter"
  copyright = \markup \small { \now " " "© 1965 Miyako Music" }
}

refrainChords = \chordmode {
  e1:7.5+.9+ e1:7.5+.9+ f1:maj7 f1:maj7
  e1:7.5+.9+ e1:7.5+.9+ ef1:maj7.11+ ef1:maj7.11+
  d1:7.9+ ef1:maj7.11+ e1:7.9+ f2:maj8 ef2:maj7
  d1:m7 g1:7 g1:m7 gf1:maj7.11+

  e1:7.5+.9+ e1:7.5+.9+ f1:maj7 f1:maj7
  e1:7.5+.9+ e1:7.5+.9+ ef1:maj7.11+ ef1:maj7.11+
  d1:7.9+ ef1:maj7.11+ e1:7.9+ f2:maj8 ef2:maj7
  df1:7.11+ g1:m7 df2:m7 gf2:7 f1:maj7
  
  f1:maj7 e1:7.9+
}

refrainKey = c

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
  \tempo "Fast [Miles Davis 1965]" 4 = 288

  \sectStart "A1"
  
  c'4. g8~ g4. d8~ | d4. g8~ g4 c8 g8~ | g4. d8~ d4. c'8~ | c8 g4.~ g4 r4 |
  \break
  r4 r8 c8~ c4 g8 d8~ | d4. g8~ g4 c8 a8~ | a4. f8~ f4. g8~ | g8 f4.~ f4 r4 |

  \sect "B"
  
  d'2~ d4. c8 | a2. g8 f8 | d4. d8~ d4 g8 e8~ | e2 f4. bf8 |
  \break
  g2. b8 g8 | f4 d'4 b4 g8 f8~ | f4. d8~ d4 r4 | r1 |
  
  \sect "A2"

  c'4. g8~ g4. d8~ | d4. g8~ g4 c8 g8~ | g4. d8~ d4. c'8~ | c8 g4.~ g4 r4 |
  \break
  r4 r8 c8~ c4 g8 d8~ | d4. g8~ g4 c8 a8~ | a4. f8~ f4. g8~ | g8 f4.~ f4 r4 |

  \sect "C"

  d'2~ d4. c8 | a2. g8 f8 | d4. d8~ d4 g8 e8~ | e2 f4. bf8 |
  \break
  g2 ef4. d8~ | d2 \tuplet 3/2 { f4 bf4 d4 } | ef4. bf8~ bf4. a8~ \daCapoAfterSolos | a8 d4. d2 |
  \bar "||-||"
  
  \textCodaBreak
  
  a8\repeatTie d4.~ d2~ | d1\fermata |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
