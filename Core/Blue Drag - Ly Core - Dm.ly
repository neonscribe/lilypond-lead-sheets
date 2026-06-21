%% -*- Mode: LilyPond -*-

#(set-global-staff-size 18)

songID = "2026-06-01T22:16:27.104404Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Blue Drag"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Josef Myrow"
headerCopyright = "© 1932 EMI Mills Music Inc."

introLyrics = \lyricmode {
}

introChords = \chordmode {
  s1 s1
  d4:m c4:7 g4:m7 a4:7 d4:m c4:7 g4:m7 a4:7
}

introKey = d

bassIntro = \relative f {
  \time 4/4
  \key \introKey \minor
  \clef bass
  \tempoFour "Medium-Slow Swing [Django Reinhardt 1935]" 110

  \xTextMark \markup{ "Intro, bass only" }

  d4 c4 bf4 a4 | d4 c4 bf4 a4 |

  \clef treble

  \xTextMark \markup{ "guitars join" }

  \ambitusOff
  d''4 c4 bf4 a4 | d4 c4 bf4 a4 |
  \ambitusOn

  \bar "||"
}

unsyncedrefrainLyrics = \lyricmode {
I said, blue drag
It sure is drag -- gin' me down:
I'm al -- most scrap -- ing the ground
When I hear that blue drag
Slow drag
It's got that new la -- zy swing;
I crave that new cra -- zy swing;
I must have my blue drag!
Oh that rhy -- thm, blue rhy -- thm, has brought me
A pe -- cu -- liar phase;
Oh that rhy -- thm, blue rhy -- thm, has brought me
Pe -- cu -- liar days
I can't get e -- nough of blue drag;
You've got my soul on fire;
I never tire of that low down blue drag
}

refrainChords = \chordmode {
  d2:m d2:m/c b2:m7.5- bf2:7 d2:m d2:m/c b2:m7.5- bf2:7
  d1:m e1:m7.5- bf2:7 a2:7

  d2:m a2:7

  d1:m

  g1:m6 g1:m6 d1:m d1:m
  g1:m6 g1:m6 d2:m c2:7 bf2:7 a2:7

  d2:m d2:m/c b2:m7.5- bf2:7 d2:m d2:m/c b2:m7.5- bf2:7
  d1:m e1:m7.5- bf2:7 a2:7 d2:m a2:7
}

refrainKey = d
isMinor = ##t

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef

  \sectNoBarNoBreak "A1, A2"

  \bar ".|:"
  \repeat volta 2 {
  f8 a8 r8 f8 a4 a4 | f2 d4 r4 | f8 a8 r8 f8 a4 a4 | f2 r2 |
  \break
  f8 a8 r8 f8 a4 a4 | g2 r4 d8 d8 | a'8 af8~ af4 g8 f8 d8 d8~ |
  \alternative { \volta 1 {
  d1 |
  } \volta 2 {
  d2 r4 bf'8 a8 |
  } } }

  \sectNoBar "B"

  g8 g4 a8 f8 f4 g8 | e8 e4 f8 d8 e8 f8 g8 | a4. f8 a2~ | a4 r4 bf4. a8 |
  \break
  g8 g4 a8 f8 f4 g8 | e8 e4 f8 d8 e8 f8 g8 | a4. f8 a2 | r1 |

  \sect "A3"

  f8 a8 r8 f8 a4 a4 | f2 d4 r4 | f8 a8 r8 f8 a4 a4 | f2 r2 |
  \break
  f8 a8 r8 f8 a4 a4 | g2 r4 d8 d8 | a'8 af8~ af4 g8 f8 d8 d8~ | d2 r2 |

  \bar "|."
}

outroLyrics = \lyricmode {
}

outroChords = \chordmode {
  d4:m c4:7 g4:m7 a4:7 d4:m c4:7 g4:m7 a4:7
  s1 s1 s1
}

outroKey = d

bassOutro = \relative f {
  \time 4/4
  \key \outroKey \minor
  \clef treble

  \xTextMark \markup{ "Outro, bass and guitars" }

  d''4 c4 bf4 a4 | d4 c4 bf4 a4 |

  \clef bass

  \xTextMark \markup{ "bass only" }

  \ambitusOff
  d,,4 c4 bf4 a4 | d4 c4 bf4 a4 | d1
  \ambitusOn

  \bar "|."
}

\include "../Include/bassintrorefrainbassoutro.ily"
