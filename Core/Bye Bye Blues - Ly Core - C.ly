%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Bye Bye Blues"
  subtitle = \instrument
  poet = ""
  composer = "Fred Hamm, Dave Bennett, Bert Lown and Chauncey Gray"
  copyright = "© 1930 Bourne Co."
}

refrainLyricsOne = \lyricmode {
Bye bye blues. __ Bye bye blues. __ Bells ring, birds sing.
Sun is shin -- ing, no more pin -- ing.
Bye bye blues. __
}

refrainLyricsTwo = \lyricmode {
Just we two. __ Smil -- ing thru. __ Don't sigh, don't cry,
}

refrainChords = \chordmode {
  c1 c1 af1:7 af1:7
  c1 c1 a1:7 a1:7
  d1:7 d1:7 g1:7 g1:7
  g1:7 c1 ef1:dim7 d2:m7 g2:7 d2:m7 g2:7
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 135

  \bar ".|:"
  \repeat volta 2 {
  e'1 | g,1 | af1~ | af1 |
  \break
  e'1 | g,1 | a1~ | a1 |
  \break
  e'1 | a,1 | e'1 | b1 |
  \break
  \alternative { \volta 1 {
  d2 c2 | b2 a2 | c2 b2 | a2 g2 |
  \break
  } \volta 2 {
  c1 | af1 | c1~ | c4 r4 r2 |
  } } }
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"
