%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Russian Lullaby (Swing)"
  subtitle = \instrument
  poet = ""
  composer = "Irving Berlin"
  copyright = "© 1927 Irving Berlin"
}

refrainLyrics = \lyricmode {
Ev' -- ry night you'll hear her croon a Rus -- sian lull -- a -- by,
just a lit -- tle plain -- tive tune when ba -- by starts to cry.
Rock -- a -- bye my ba -- by,
some -- where there may be a land that's free for you and me
and a Rus -- sian lull -- a -- by.
}

refrainChords = \chordmode {
  d1:m d1:m/cs d1:m/c d1:m/b
  bf1:7 a1:7 d1:m c1:7
  f1 f1:7 bf1 bf1:m6
  f1/c c1:7.5+ f1 f1
  
  a1:7 a1:7 bf1:7 a1:7
  d1:m f1:7 bf1 a1:7
  d1:m d1:m g1:m6 a1:7
  d1:m a1:7 d1:m
  \chordOpenParen{ g2:m6 }
  \chordCloseParen{ a2:7 }
}

refrainKey = d

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Swing" 4 = 190

  \xTextMark \markup{ \bold \box "A1" }
  
  d2. e4 | f2. g4 | a2. f4 | a2. f4 |
  \break
  f2. a4 | e2. a4 | d,1 | r1 |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  f2. g4 | a2. bf4 | c2. a4 | c2. bf4 |
  \break
  a2. c4 | gs2. c4 | a1 | r1 |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "C" }
  
  a2. b4 | cs2. d4 | f1 | e1 |
  \break
  d1 | c2. a4 | g1 | f2 g2 |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "D" }
  
  a2. gs4 | a2. bf4 | g2. fs4 | g2 a4 g4 |
  \break
  f2. a4 | e2. a4 | d,1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
