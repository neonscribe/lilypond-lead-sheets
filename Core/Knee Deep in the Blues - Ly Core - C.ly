%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:41.522389Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Knee Deep in the Blues"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Melvin Endsley"
headerCopyright = "© 1957 Acuff-Rose Publications"

introLyrics = \lyricmode {
}

introChords = \chordmode {
  s2.

  c1 g1:7 c1 c2.
}

introKey = c

introMelody = \relative f' {
  \time 4/4
  \key \introKey \major
  \clef \whatClef
  \tempoFour "Western Swing [Marty Robbins 1956]" 160

  \xTextMark \markup{ "Intro" }

  \partial 2. g4 a4 c4 |
  \bar "||"

  ds8 e4 c8~ c4. g8 | bf8 bf8 a4 g4 e4 | c2. b'4 | c2.
}

refrainMartyRobbinsLyrics = \lyricmode {
  Well, I've just been think -- in' things o -- ver.
  My heart is flow -- in' with tears.

  My life just don't seem worth liv -- in'.
  And it's been that way for years.

  My skies have all turned to gray now
  And I just walked the soles off -- a my shoes.

  Well, I don't have much to say now.
  Well, I'm just knee deep in the blues.
}

refrainGuyMitchellLyrics = \lyricmode {
  Well, I've just been think -- in' things o -- ver.
  How I have loved you for years.

  My life just don't seem worth liv -- in'.
  Since you have left me in tears

  My skies have all turned to gray now
  And I just walked the soles off -- a my shoes.

  Since you've been gone my heart's bro -- ken.
  And I'm just knee deep in the blues.
}

refrainLyrics = \refrainMartyRobbinsLyrics
%%% refrainLyrics = \refrainGuyMitchellLyrics

refrainChords = \chordmode {
  s4
  c1 c1:7 f1 f1
  c1 c1 g1:7 g1:7

  c1 c1:7 f1 f1
  c1 g1:7 c1 c1:7

  f1 f1 c1 c1
  f1 f1 c1 g1:7

  c1 c1:7 f1 f1
  c1 g1:7 c1 c1


  c1 c1:7 f1 f1
  c1 c1 g1:7 g1:7

  c1 c1:7 f1 f1
  c1 g1:7 c1 c1:7

  f1 f1 c1 c1
  f1 f1 c1 g1:7

  c1 c1:7 f1 f1
  c1 g1:7 c1 c1
}

refrainKey = c

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef

  \partial 4 g4 |

  \sectNoBreak "A1"

  g2 a4 g4 | bf2 c4 c4 | a4. f8~ f2 | r1 |
  r4 e'4 c4 g4 | c4. bf8~ bf4 af4 | g2 r2 | r1 |

  \sectNoBreak "A2"

  r4 g4 a4 g4 | bf2 c4 c4 | a4. f8~ f2 | r1 |
  r4 e'4 c4 g4 | b2 a4 b4 | c1 | r1 |

  \sectNoBreak "B"

  r4 f,4 a4 c4 | ef2 d4 c4 | a4 g2. | r1 |
  r4 f4 a4 c4 | ef2. c4 | g4. g4 a8 as4 | b2 r2 |

  \sectNoBreak "A3"

  r4 g4 a4 g4 | bf2 c4 c4 | a4. f8~ f2 | r2 r4 ds'4 |
  e2 c4 g4 | b2 a4 b4 | c1 | r1 |

  \bar "||-|."
  
  \xPageBreak

  \sectStartSolos "A1"
  \set Score.currentBarNumber = #1
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \sect "A2"
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \sect "B"
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \sect "A3"
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \bar "|."
}

afterText =
\markup {
  \column {
    \line { \large { Well, I've just been thinkin' things over. } }
    \line { \large { My heart is flowin' with tears. } }
    \line { \large { My life just don't seem worth livin'. } }
    \line { \large { And it's been this way for years. } }
  }
  \column {
    \hspace #10
  }
  \column {
    \line { \large { Don't ask me why I am cryin'. } }
    \line { \large { Cause I have lost, about all I can lose. } }
    \line { \large { Well, there's just no use in tryin' } }
    \line { \large { Well, I'm just knee deep in the blues. } }
  }
}

\include "../Include/introrefrain.ily"
