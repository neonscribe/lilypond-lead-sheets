%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

$(if (and (defined? 'printNoteNames) printNoteNames)
  (set-global-staff-size 18))

\header {
  title = "Knee Deep in the Blues"
  subtitle = \instrument
  %% poet = ""
  composer = "Melvin Endsley"
  copyright = \markup \small { \now " " "© 1957 Acuff-Rose Publications" }
}

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
  \tempo "Western Swing [Marty Robbins 1956]" 4 = 160

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

  \partial 4 g4 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  g2 a4 g4 | bf2 c4 c4 | a4. f8~ f2 | r1 |
  r4 e'4 c4 g4 | c4. bf8~ bf4 af4 | g2 r2 | r1 |
  
  \sect "A2"
  
  r4 g4 a4 g4 | bf2 c4 c4 | a4. f8~ f2 | r1 |
  r4 e'4 c4 g4 | b2 a4 b4 | c1 | r1 |
  
  \sect "B"
  
  r4 f,4 a4 c4 | ef2 d4 c4 | a4 g2. | r1 |
  r4 f4 a4 c4 | ef2. c4 | g4. g4 a8 as4 | b2 r2 |
  
  \sect "A3"

  r4 g4 a4 g4 | bf2 c4 c4 | a4. f8~ f2 | r2 r4 ds'4 |
  e2 c4 g4 | b2 a4 b4 | c1 | r1 |

  \bar "|."
}

soloChords = \chordmode {
  c1 c1:7 f1 f1
  c1 c1 g1:7 g1:7

  c1 c1:7 f1 f1
  c1 g1:7 c1 c1:7
  
  f1 f1 c1 c1
  f1 f1 c1 g1:7
  
  c1 c1:7 f1 f1
  c1 g1:7 c1 c1
}

soloKey = c

soloMelody = \relative f' {
  \time 4/4
  \key \soloKey \major

  \xTextMark \markup{ "Solos" }
  \set Score.currentBarNumber = #1
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/intro.ily"

\include "../Include/refrain.ily"

\include "../Include/solo.ily"

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
