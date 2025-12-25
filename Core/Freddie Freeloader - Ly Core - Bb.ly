%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "Freddie Freeloader"
  subtitle = \instrument
  poet = ""
  composer = "Miles Davis"
  copyright = \markup \small { \now " " "© 1959 Jazz Horn Music Inc." }
}

refrainChords = \chordmode {
  bf1:7 bf1:7 bf1:7 bf1:7
  ef1:7 ef1:7 bf1:7 bf1:7
  f1:7 ef1:7 af1:7 af1:7

  bf1:7 bf1:7 bf1:7 bf1:7
  ef1:7 ef1:7 bf1:7 bf1:7
  f1:7 ef1:7 bf1:7 bf1:7

  bf1:7 bf1:7 bf1:7 bf1:7
  ef1:7 ef1:7 bf1:7 bf1:7
  f1:7 ef1:7 af1:7 af1:7

  f1:7 ef1:7 af1:7 af1:7
}

refrainKey = bf

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
  \tempo "Medium [Miles Davis 1959]" 4 = 129

  \sectStart "Head"

  <<
    \relative { g'2 f2~ | f2. r4 | g2 f2~ | f2. r4 | }
    \relative { d'2 c2~ | c2. r4 | d2 c2 | c2. r4 | }
    \relative { bf2 af2~ | af2. r4 | bf2 af2~ | af2. r4 | }
  >>
  \bar "||-||"
  \break

  <<
    \relative { c''2 bf2~ | bf2. r4 | g2 f2~ | f2. af4 | }
    \relative { g'2 f2~ | f2. r4 | d2 c2 | c2. d4 | }
    \relative { ef'2 df2~ | df2. r4 | bf2 af2~ | af2. af4 | }
  >>
  \bar "||-||"
  \break
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
  \bar "||-||"
  \break
  <<
    \relative { g'2 f2~ | f2. r4 | g2 f2~ | f2. r4 | }
    \relative { d'2 c2~ | c2. r4 | d2 c2 | c2. r4 | }
    \relative { bf2 af2~ | af2. r4 | bf2 af2~ | af2. r4 | }
  >>
  \bar "||-||"
  \break

  <<
    \relative { c''2 bf2~ | bf2. r4 | g2 f2~ | f2. af4 | }
    \relative { g'2 f2~ | f2. r4 | d2 c2 | c2. d4 | }
    \relative { ef'2 df2~ | df2. r4 | bf2 af2~ | af2. af4 \textToCodaLastTime | }
  >>
  \bar "||-||"
  \break
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
  \bar ".|:-||"
  \sectNoBar "Solos"
  \repeat volta 2 {
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \bar "||-||"
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \bar "||-||"
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  }
  \bar "||-:|."
  \textCodaBreak

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
  \bar "|."
  
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup{ "Top line is melody." }
