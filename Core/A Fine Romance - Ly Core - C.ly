%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "A Fine Romance"
  subtitle = \instrument
  poet = "Dorothy Fields"
  composer = "Jerome Kern"
  copyright = "© 1936 Chappell & Co., Inc."
}

refrainLyricsOne = \lyricmode {
A fine ro -- mance, with no kiss -- es.
A fine ro -- mance, my friend, this is.

We should be like a cou -- ple of hot to -- ma -- toes, __
but you're as cold as yes -- ter -- day's mashed po -- ta -- toes. __

A

might as well play bridge with my old maid aunts.
I have -- n't got a chance.
This is a fine ro -- mance. __

(A)
}

refrainLyricsTwo = \lyricmode {
_ fine ro -- mance, you won't nes -- tle.
A fine ro -- mance, you won't wres -- tle.

I
}

refrainChords = \chordmode {
  s4
  
  c1:6 cs1:dim7 d1:m6 ds1:dim7
  e1:m7 a1:m7 d1:m7 g1:7
  
  c1:6 ef1:dim7 d2:m7 g2:7 d2:m7 g2:7
  c1:6 a2:7 gf4:7 f4:7 e2:7 a2:7 d2:m7 g2:7
  
  c1:6 c1:7 f2:maj7 a2:7/e d2:m7 ds2:dim7
  e2:m7 ef2:7 d2:m6 g2:7 c1:6
  \chordOpenParen{ d2:m7 }
  \chordCloseParen{ g2:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Ballad" 4 = 111
  
  \partial 4 e4 |

  \xTextMark \markup{ \bold \box "A1,A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  c1 | a'4 g2 a4 | b,1 | b'4 a2 b4 |
  \break
  e,1 | d'4 c2 e,4 | g1 | e'4 d2 g,4 |
  
  \sect "B"
  
  \alternative { \volta 1 {
  c4 b4 c4 d4 | \tuplet 3/2 { c4 b4 bf4 } a4 af4 | g2 g2~ | g2. g4 |
  \break
  a4 gs4 a4 b4 | \tuplet 3/2 { a4 af4 g4 } gf4 f4 | e2 e2~ | e2 e2 |
  
  \break

  \xTextMark \markup{ \bold \box "C" }
  } \volta 2 {
  c'4 b4 c4 d4 | \tuplet 3/2 { e4 d4 c4 } b4 bf4 |
  a1 | \tuplet 3/2 { c4 b4 bf4 } a4 af4 |
  \break
  g1 | \tuplet 3/2 { b4 a4 af4 } g4 d'4 | c1~ | c2 r4 
  \override Parentheses.font-size = #5
  \parenthesize e,4
  } } }
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"
