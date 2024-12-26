%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Russian Lullaby (Waltz)"
  subtitle = \instrument
  poet = ""
  composer = "Irving Berlin"
  copyright = "© 1927 Irving Berlin"
}

refrainLyrics = \lyricmode {
Ev' -- ry night __ you'll hear __ her croon __ a Rus -- sian lull -- a -- by, __
just __ a lit -- tle plain -- tive tune __ when ba -- by starts __ to cry.
Rock -- a -- bye __ my ba -- by,
some -- where there __ may be a land __ that's free __ for you __ and me
and a Rus -- sian lull -- a -- by. __
}

refrainChords = \chordmode {
  c2.:m c2.:m/b c2.:/bf c2.:m/a
  af2.:7 g2.:7 c2.:m bf2.:7
  ef2. ef2.:7 af2. af2.:m6
  ef2./bf bf2.:7.5+ ef2. ef2.
  
  g2.:7 g2.:7 af2.:7 af2.:7
  c2.:m ef2.:7 af2. g2.:7
  c2.:m c2.:m f2.:m6 g2.:7
  c2.:m g2.:7 c2.:m 
  \chordOpenParen{ f2:m6 }
  \chordCloseParen{ g4:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 3/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Waltz" 4 = 100

  \xTextMark \markup{ \bold \box "A" }
  
  c2~ c8 d8 | ef2~ ef8 f8 | g2~ g8 ef8 | g2~ g8 f8 |
  \break
  ef2~ ef8 g8 | d2~ d8 g8 | c,2.~ | c2. |
  
  \sect "B"
  
  ef2~ ef8 f8 | g2~ g8 af8 | bf2~ bf8 g8 | bf2~ bf8 af8 |
  \break
  g2~ g8 bf8 | fs2~ fs8 bf8 | g2.~ | g2. |
  
  \sect "C"
  
  g2~ g8 a8 | b2~ b8 c8 | e2. | d2. |
  \break
  c2. | bf2~ bf8 g8 | f2. | ef2 f4 |
  
  \sect "D"
  
  g2~ g8 fs8 | g2~ g8 af8 | f2~ f8 e8 | f2 g8 f8 |
  \break
  ef2~ ef8 g8 | d2~ d8 g8 | c,2.~ | c2. |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
