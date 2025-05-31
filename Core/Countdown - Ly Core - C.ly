%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Countdown"
  subtitle = \instrument
  poet = ""
  composer = "John Coltrane"
  copyright = \markup \small "© 1959 Jowcol Music"
}

refrainChords = \chordmode {
  e2:m7 f2:7 bf2:maj7 df2:7 gf2:maj7 a2:7.9+ d1:maj7
  d2:m7 ef2:7 af2:maj7 b2:7 e2:maj7 g2:7 c1:maj7
  c2:m7 df2:7 df2:maj7 a2:7 d2:maj7 f2:7 bf1:maj7
  e1:m7 f1:7 bf1:maj7 ef1:7.11+
  
  e2:m7 f2:7 bf2:maj7 df2:7 gf2:maj7 f2:7 bf2:maj7 a2:7
  d1:maj7 bf1:maj7 gf1:maj7 d1:maj7
  bf1:maj7 gf1:maj7 d1:maj7 d1:maj7 d1:maj7
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Fast [John Coltrane 1959]" 4 = 255

  \sectStart "Head"
  
  r2 a2 | a2 bf2 | df2 c4 bf4 | a1 |
  \break
  g2 g2 | g2 gs2 | bf2 a2 | g1 |
  \break
  ef4 f4 bf4 af4 | df2 b2 | d2 c2 | f,2 g8 c4 bf8 |
  \break
  a1~ | a4 f8 g8 c8 bf8 f8 g8 | a2. a4~ | a2 r2 \daCapoAfterSolos |
  \bar "||-||"
  
  \textCodaBreak
  
  a2 a2 | a2 bf2 | df2 c4 bf4 | a2 g2 |
  \break
  a1 | d1 | df1 | a2_"RIT." r2 |
  \break
  a1\fermata | d1\fermata | df1\fermata | cs2~ cs4.\fermata b16 a16 | fs4. e16 cs16 b4. e8 | cs1\fermata |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
