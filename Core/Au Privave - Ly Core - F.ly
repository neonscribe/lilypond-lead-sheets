%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Au Privave"
  subtitle = \instrument
  poet = ""
  composer = "Charlie Parker"
  copyright = \markup \small { \now " " "© 1951 Atlantic Music Corp." }
}

refrainChords = \chordmode {
  f1 g2:m7 c2:7 f2 g2:m7 c2:m7 f2:7.5+
  bf1:7 bf2:m7 ef2:7 f2 g2:m7 a2:m7 d2:7
  g1:m7 g2:m7 c2:7 f2 d2:7.9-
  
  g2:m7 c2:7
  
  g2:m7 c2:7 f1:maj7
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Up [Charlie Parker 1951]" 4 = 200

    f8 e8 f8 c8 r4 a'8 gs8 | a8 c,8 r8 e8 r8 g8 f8 c8 |
    g'8 f8 a8 bf8 a8 f8 g8 ef8 | r8 d'4 r8 r8 df4 f,8 |
    b4.\lheel f'8 r8 b,8 bf4~ | bf2 af8 f8 g8 f8 |
    c'4 r8 a8 bf4 r8 g8 | c4 c4~ c8 a8 bf8 c8 |
    a8 g8 f8 e8 f4 r8 c'8 | bf4 r8 f'8~ f8 c8 e8 f8 |
    r4 r8 c8 c4. a8 \textToCodaLastTime |
    bf8 a8 f8 d8 a'8 a4. |
  \bar "||-|."
    
  \textCodaBreak

  bf8 a8 f8 d8 a'8 a4.~ | a1\fermata |
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup "Play head twice before and twice after solos, to coda on the final repeat."
