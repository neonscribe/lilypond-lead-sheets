%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Freddie Freeloader"
  subtitle = \instrument
  poet = ""
  composer = "Miles Davis"
  copyright = \markup \small "© 1959 Jazz Horn Music Inc."
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  bf1:7 bf1:7 bf1:7 bf1:7
  ef1:7 ef1:7 bf1:7 bf1:7
  f1:7 ef1:7 af1:7 af1:7
  f1:7 ef1:7 bf1:7 bf1:7
  f1:7 ef1:7 af1:7 af1:7
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 129

  \xTextMark \markup{ \bold \box "A" }
  
  \bar ".|:"
  \repeat volta 4 {
  <<
    \relative { g'2 f2~ | f2. r4 | g2 f2~ | f2. r4 | }
    \relative { d'2 c2~ | c2. r4 | d2 c2 | c2. r4 | }
    \relative { bf2 af2~ | af2. r4 | bf2 af2~ | af2. r4 | }
  >>
  \break

  <<
    \relative { c''2 bf2~ | bf2. r4 | g2 f2~ | f2. af4 | }
    \relative { g'2 f2~ | f2. r4 | d2 c2 | c2. d4 | }
    \relative { ef'2 df2~ | df2. r4 | bf2 af2~ | af2. af4 | }
  >>
  \break
  \alternative {
    \volta 1,3 {
  <<
    \relative { a'2. af4 | }
    \relative { ef'2. d4 | }
    \relative { a2. af4 | }
  >>
  <<
    \relative { g'2. f4 | }
    \relative { df'2.~ df4 | }
    \relative { g2.~ g4 | }
  >>
  <<
    \relative { gf'1~ | gf2. r4 | }
    \relative { c'1~ | c2. r4 | }
    \relative { gf1~ | gf2. r4 | }
  >>
  \break
  }
  \volta 2 {
  <<
    \relative { a'2. af4 | }
    \relative { ef'2. d4 | }
    \relative { a2. af4 | }
  >>
  <<
    \relative { g'2. fs4 | }
    \relative { df'2. c4 | }
    \relative { g2. fs4 | }
  >>
  <<
    \relative { af'2 gf2~ | gf2. r4 | }
    \relative { d'2 c2~ | c2. r4 | }
    \relative { bf2 af2~ | af2. r4 | }
  >>
  \break
  }
  \volta 4 {
  <<
    \relative { a'2. af4 | }
    \relative { ef'2. d4 | }
    \relative { a2. af4 | }
  >>
  <<
    \relative { g'2. f4 | }
    \relative { df'2. c4 | }
    \relative { g2. gf4 | }
  >>
  <<
    \relative { gf'2~ gf2~ | gf2. r4 | }
    \relative { d'2 c2~ | c2. r4 | }
    \relative { bf2 af2~ | af2. r4 | }
  >>
  \break
  } } }
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup{ "Top line is melody. Play head twice before and twice after solos." }
\markup{ "Ending 1 and 2 before solos, 3 and 4 after solos." }
\markup{ "Ending 1 only for all solos." }
