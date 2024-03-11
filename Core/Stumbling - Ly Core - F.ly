%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 18) #}
)

\header {
  title = "Stumbling"
  subtitle = \instrument
  poet = ""
  composer = "Zez Confrey"
  copyright = "© 1922 Leo Feist, Inc."
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  f1 f1 f1 ef2:7 d2:7
  g1:7 g1:7 g1:7 g1:7 
  c1:7 cs1:dim7 d1:m d1:m
  g1:7 g1:7 c1:7 c1:7

  f1 f1 f1 ef2:7 d2:7
  g1:7 g1:7 g1:7 g1:7 
  bf1:m bf1:m f1 d1:7
  g1:m7 c1:7 f2
  \chordOpenParen{ af2:dim7 }
  g2:m7 
  \chordCloseParen{ c2:7 }
}

refrainKey = f

\include "nederlands.ly"

refrainMelodyOne = \relative c' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Lively" 4 = 180

  \mark \markup{ \box "A1" }
  c8 d8 f8 g8 a4 -. c,8
    d8 % 2
    f8 g8 a4 -. c,8
    d8 f8 g8 % 3
    a4 -. r4 c2 % 4
    bes2 a2 % 5
    g8 ges8 f8 e8
    d4 -. g8 ges8 % 6
    f8 e8 d4 -. g8
    ges8 f8 e8 % 7
    d1 % 8

    r4 d4 f4 d4 % 9

    \bar "||"
    \mark \markup{ \box "B" }

    d8 e4 e8 ~ e2
    r4 e4 g4 e4 % 11
    e8 f4 f8 ~ f2 % 12
    r4 f4 a4 f4 % 13
    g8 ges4 f8 ~ f2 % 14
    r4 g4 b4 g4 % 15
    c8 b8 bes8 a8
    g4 c8 b8 % 16
    bes8 a8 g4 r4 c4 % 17

    \bar "||"
    \break
    \mark \markup{ \box "A2" }

    c,8 d8 f8 g8 a4
    -. c,8 d8 % 18
    f8 g8 a4 -. c,8
    d8 f8 g8 % 19
    a4 -. r4 c2
    bes2 a2 % 21
    g8 ges8 f8 e8
    d4 -. g8 ges8 % 22
    f8 e8 d4 -. g8
    ges8 f8 e8 % 23
    d1 % 24
    r4 a'4 a4 g4 % 25

    \bar "||"
    \mark \markup{ \box "C" }

    bes2 des,2 % 26
    r4 bes'4 bes4 bes4 % 27
    a2 c,2 % 28
    r4 c4 d4 f4 % 29
    a8 g8 f8 e8 d4
    bes'8 a8
    g8 f8 e4 c'8
    bes8 a8 g8 % 31
    f1 % 32
    r1 \bar "|."
}

refrainMelodyTwo = \relative f' {
    \clef \whatClef
    \key \refrainKey \major

    f8 g8 a8 bes8
    c4 -. f,8 g8 % 2
    a8 bes8 c4 -. f,8
    g8 a8 bes8 % 3
    c4 -. r4 f2 % 4
    es2 d2 % 5
    b8 bes8 a8 g8
    f4 -. b8 bes8 % 6
    a8 g8 f4 -. b8
    bes8 a8 g8 % 7
    f1 % 8
    r4 f4 a4 f4 % 9
    e8 g4 g8 ~ g2
    r4 g4 bes4 g4 % 11
    a8 c4 c8 ~ c2 % 12
    r4 a4 c4 a4 % 13
    b8 bes4 a8 ~ a2 % 14
    r4 b4 d4 b4 % 15
    g8 fis8 f8 e8
    d4 g8 fis8 % 16
    f8 e8 d4 r4 g4
    f8 g8 a8 bes8
    c4 -. f,8 g8 % 18
    a8 bes8 c4 -. f,8
    g8 a8 bes8 % 19
    c4 -. r4 f2
    es2 d2 % 21
    b8 bes8 a8 g8
    f4 -. b8 bes8 % 22
    a8 g8 f4 -. b8
    bes8 a8 g8 % 23
    f1 % 24
    r4 a4 bes4 c4 % 25
    d2 f,2 % 26
    r4 d'4 d4 d4 % 27
    c2 f,2 % 28
    r4 a4 bes4 c4 % 29
    d8 c8 bes8 a8
    g4 d'8 c8
    bes8 a8 g4 e'8
    d8 c8 bes8 % 31
    a1 % 32
    r1 \bar "|."
  }

\include "english.ly"

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-parts.ily"
