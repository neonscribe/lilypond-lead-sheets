%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Sentimental Journey"
  subtitle = \instrument
  poet = ""
  composer = "Bud Green, Les Brown, Ben Homer"
  copyright = "© 1944 Edwin H. Morris & Company, Inc."
}

refrainLyricsOne = \lyricmode {
Gon -- na take a sen -- ti -- men -- tal jour -- ney,
gon -- na set my heart at ease. __

Gon -- na make a sen -- ti -- men -- tal jour -- ney,
to re -- new old mem -- o -- ries.

_ _ _

Sev -- en, __ that's the time we leave, at sev -- en. __
I'll be wait -- in' up for hea -- ven, __
count -- in' ev -- 'ry mile of rail -- road track __
that takes me back. __

Nev -- er thought my heart could be so “yearn -- y.”
Why did I de -- cide to roam? __
Got -- ta take this sen -- ti -- men -- tal jour -- ney,
sen -- ti -- men -- tal jour -- ney home. __
}

refrainLyricsTwo = \lyricmode {
Got my bag, I got my res -- er -- va -- tion,
spent each dime I could af -- ford. __
Like a child in wild an -- ti -- ci -- pa -- tion,
Long to hear that _ _ _ “All a -- board.”
}

refrainChords = \chordmode {
  c1:maj7 c1:maj7 c2:maj7 a2:7 d2:7 g2:7
  c1:maj7 f2:7 bf2:7 c2:maj7 a2:7
  
  d4:7 g4:7 c2:6
  
  d4:7 g4:7 c4:6 c4:7

  f1:maj7 f1:maj7 c1:maj7 c1:maj7
  d1:7 d1:7 g1:7 g1:7

  c1:maj7 c1:maj7 c2:maj7 a2:7 d2:7 g2:7
  c1:maj7 f2:7 bf2:7 c2:maj7 a2:7 d4:7 g4:7 c2:6
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 135

  \xTextMark \markup{ \bold \box "A1,A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  r8 e4 c8 e4. c8 | e8 c8 e8 c8 e8 c4. | r8 e4 c8 e4. f8 | e4 ef8 d8~ d2 |
  \break
  r8 e4 c8 e4. c8 | ef8 c8 ef8 c8 ef8 d4. | r8 e4 c8 e4. f8 |
  \alternative { \volta 1 {
  e8( ef8) d8 c8~ c2 |
  } \volta 2 {
  e8( ef8) d8 c8~ c2 |
  } } }
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  b'8 c4.~ c2 | b8 c8 b8 c8 d8 c4. | fs,8 g4.~ g2 | fs8 g8 fs8 g8 a8 g4. |
  \break
  cs8 d4.~ d2 | cs8 d8 cs8 d8 c4. a8 | b8 g4 a8~ a4. f8 | g4 e8 f8~ f2 |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "A3" }
  
  r8 e4 c8 e4. c8 | e8 c8 e8 c8 e8 c4. | r8 e4 c8 e4. f8 | e4 ef8 d8~ d2 |
  \break
  r8 e4 c8 e4. c8 | ef8 c8 ef8 c8 ef8 d4. | r8 e4 c8 e4. f8 | e8( ef8) d8 c8~ c2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"
