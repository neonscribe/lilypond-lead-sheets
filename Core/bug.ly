\version "2.24"

\include "english.ly"

refrainLyrics = \lyricmode {}

refrainChords = \chordmode {
  s8
  
  c2:m7 c2:m7/bf a2:m7.5- af2:maj7 a2:m7.5- d2:7.9+ d2:m7.5- g2:7.9-
}

refrainMelody = \relative f' {
  \time 4/4
  \key c \minor
  \clef treble

  \partial 8 c8 |
  \bar "||"

  \mark \markup{ \box "A1" }
  
  f8-. g8 \tuplet 3/2 { c,8 f8 ef8~ } ef4. c8 |
  f8-. g8 \tuplet 3/2 { c,8 f8 ef8~ } \tuplet 3/2 { ef8 c8 d8 } \tuplet 3/2 { ef8 g8 a8 } |
  d4 \tuplet 3/2 { c8 g8 ef8 } f8-. ef8 \tuplet 3/2 { f8 ef8 g8~ } | g2 r4 r8 c,8 |
}

\score {
  <<
    \new ChordNames \refrainChords
    \new Staff \refrainMelody
    \new Lyrics \refrainLyrics
  >>
  \layout {}
}
