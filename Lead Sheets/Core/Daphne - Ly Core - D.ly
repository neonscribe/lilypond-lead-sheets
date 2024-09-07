%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Daphné"
  subtitle = \instrument
  poet = ""
  composer = "Django Reinhardt"
  copyright = "© 1938 Publications Francis Day S.A."
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  d2:6 b2:m7 e2:m7 a2:7 d2:6 b2:m7 e2:m7 a2:7
  d2:6 d2:9 g2:6 g2:m6 d2:6 a2:7 d1:6

  d2:6 b2:m7 e2:m7 a2:7 d2:6 b2:m7 e2:m7 a2:7
  d2:6 d2:9 g2:6 g2:m6 d2:6 a2:7 d1:6

  ef2:6 c2:m7 f2:m7a2:7 ef2:6 c2:m7 f2:m7a2:7
  ef2:6 c2:m7 f2:m7a2:7 ef1:6 a1:7

  d2:6 b2:m7 e2:m7 a2:7 d2:6 b2:m7 e2:m7 a2:7
  d2:6 d2:9 g2:6 g2:m6 d2:6 a2:7 d1:6
}

refrainKey = d

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Swing" 4 = 140

  \xTextMark \markup{ \bold \box "A1" }
  
	a4. d8
        r2 |
        e,4. a8 r2 |
        a4. d8 r2 |
        e,4. a8 r2 |
        d,4 r4 fs4 r4 |
        g4. gs8~ gs4 r4 |
        r8 a8 gs4 g4 f8 [ fs8
        ] |
        r8 d8 b4 d4 r4 |

  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
	a'4. d8
        r2 |
        e,4. a8 r2 |
        a4. d8 r2 |
        e,4. a8 r2 |
  \break
        d,4 r4 fs4 r4 |
        g4. gs8~ gs4 r4 |
        r8 a8 gs4 g4 f8 [ fs8
        ] |
        r8 d8 b4 d4 r4 |

  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
    \key ef \major bf'4. ef8 r2 |
    f,4. bf8 r2 |
    bf4. ef8 r2 |
    f,4. bf8 r2 |
  \break
    bf4. ef8 r2 |
    f,4. bf8 r2 |
    bf1 |
    a1

  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A3" }

    \key d \major a4. d8 r2 |
    e,4. a8 r2 |
    a4. d8 r2 |
    e,4. a8 r2 |
  \break
    d,4 r4 fs4 r4 |
    g4. gs8~ gs4 r4 |
    r8 a8 gs4 g4 f8 [ fs8 ] |
    r8 d8 b4 d2

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
