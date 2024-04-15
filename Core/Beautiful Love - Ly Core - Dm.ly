%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Beautiful Love"
  subtitle = \instrument
  poet = "Haven Gillespie"
  composer = "Victor Young, Wayne King and Egbert van Alstyne"
  copyright = "© 1931 Movietone Music Corporation"
}

refrainLyricsOne = \lyricmode {
Beau -- ti -- ful love, you're all a mys -- ter -- y, __
Beau -- ti -- ful love, what have you done to me? __
I was con -- tent -- ed __ till you came __ a -- long,
thrill -- ing my soul __ with your song. Beau -- ti -- ful
love, will my dreams come true?
}

refrainLyricsTwo = \lyricmode {
_ _ _ love, I've roamed your par -- a -- dise, __
search -- ing for love, my dreams to re -- al -- ize. __
Reach -- ing for heav -- en, __ de -- pend -- ing __ on you.
Beau -- ti -- ful
}

refrainChords = \chordmode {
  s1
  
  e1:m7.5- a1:7.5+ d1:m6 d1:m6
  g1:m7 c1:7 f1:maj7 e2:m7.5- a2:7
  
  d1:m7 g1:m7 bf1:7 a1:7
  
  d1:m7 g1:7.11+ e1:m7.5- a1:7
  
  d2:m b2:7.9+ bf2:8 a2:7 d1:m d1:m
}

refrainKey = d

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium Swing" 4 = 160

  r8 d4. e4 f4 |

  \mark \markup{ \box "A1, A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  a2. g4 | f4. e8 d4 e8 f8~ | f1 | r8 f4. g4 a4 |
  \break
  c2. bf4 | a4. g8 f4 g8 a8~ | a1 | r8 a4. b4 cs4 |
  
  \bar "||"
  \break

  \mark \markup{ \box "B,C" }
  
  e4. d8~ d4 a4 | c4. bf8~ bf4 d,4 | e1 | r8 e4. f4 g4 |
  \break
  \alternative { \volta 1 {
  a2.( d,4) | cs2. d4 | e1 | r8 d4. e4 f4 |
  \break
  } \volta 2 {
  a2 cs,4 d4 | f2 e2 | d1 | r1 |
  } } }  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"
