%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Silver Bells"
  subtitle = \instrument
  poet = ""
  composer = "Jay Livingston and Ray Evans"
  copyright = \markup \small { \now " " "© 1950 Paramount Music Corporation" }
}

refrainLyrics = \lyricmode {
Cit -- y side -- walks, bus -- y side -- walks
dressed in hol -- i -- day style.
In the air there's a feel -- ing
of Christ -- mas. __
Chil -- dren laugh -- ing, peo -- ple pass -- ing,
meet -- ing smile af -- ter smile,
And on ev -- 'ry street cor -- ner you hear: __

Sil -- ver bells, __
sil -- ver bells, __
it's Christ -- mas time in the cit -- y. __
Ring -- a -- ling, __
hear them ring. __
Soon it will be Christ -- mas Day. __

(Strings of)
}

refrainLyricsTwo = \lyricmode {
_ _ street -- lights, ev -- en stop -- lights
blink a bright red and green
as the shop -- pers rush home with their trea -- sures. __
Hear the snow crunch,
See the kids bunch,
This is San -- ta's big scene,
and a -- bove all this bus -- tle you hear: __ ""
}

refrainChords = \chordmode {
  s4
  
  bf2.:maj7 bf2:7 e4:9 ef2:maj7 ef4:maj7/d c2.:m7
  f2.:7 f2.:7 ef4:m6/bf bf2:maj7 c2:m7 c4:m7/f

  bf2.:maj7 bf2:7 e4:9 ef2:maj7 ef4:maj7/d c2.:m7
  f2.:7 f2.:7 bf2.:6 c2:m7 c4:m7/f
  
  bf2.:maj7 f2:m7 bf4:7 ef2:maj7 ef4:maj7/d c2.:m7
  f2.:7 f2.:7 bf2:maj7 b4:dim7 c2:m7 f4:7
  
  bf2.:maj7 f2:m7 bf4:7 ef2:maj7 ef4:maj7/d c2.:m7
  f2.:7 f2.:7 bf2.:6
  \chordOpenParen{ c2:m7 }
  \chordCloseParen{ c4:m7/f }
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 3/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Jazz Waltz [Dean Martin 1966]" 4 = 100

  \partial 4 bf8 g8 |

  \sectNoBreak "A1"
  
  f4 d4 bf'8 g8 | f4 d4 d'8 c8 | bf4 g4 g4 | g2 c8 bf8 |
  a4 f4 e4 | ef4 f4. ef8 | ef4 d2~ | d4 r4 bf'8 g8 |
  
  \sect "A2"

  f4 d4 bf'8 g8 | f4 d4 d'8 c8 | bf4 g4 g4 | g2 c8 bf8 |
  a4 f4 e4 | ef4 f4 c'4 | bf2.~ | bf2. |
  
  \xPageBreak

  \sectNoBar "B1"
  
    <<
      \new Voice
      { \voiceTwo
	\magnifyMusic 1.0 {
	  \override Stem.direction = #UP
	  s8*5 bf'8 | d8 f,8 bf8 d,8 f4 | s8*5 bf8 | ef8 g,8 bf8 ef,8 g4 |
	}
      }
      { \voiceOne
	\override Stem.direction = #DOWN
	  d,8 ef8 f2~ | f2. | g8 a8 bf2~ | bf2. |
	\revert Stem.direction
      }
      >>
     \oneVoice


  a4 a4 bf4 | c2 bf8 a8 | bf4 f2~ | f2 r4 |
  
  \sect "B2"

    <<
      \new Voice
      { \voiceTwo
	\magnifyMusic 1.0 {
	  \override Stem.direction = #UP
	  s8*5 bf'8 | d8 f,8 bf8 d,8 f4 | s8*5 bf8 | ef8 g,8 bf8 ef,8 g4 |
	}
      }
      { \voiceOne
	\override Stem.direction = #DOWN
	  d,8 ef8 f2~ | f2. | g8 a8 bf2~ | bf2. |
	\revert Stem.direction
      }
      >>
     \oneVoice

  a4 a4 bf4 | c4 bf4 a4 | bf2.~ | bf4 r4
  \override Parentheses.font-size = #5
  \startParenthesis \parenthesize bf8
  \endParenthesis \parenthesize g8 |  
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
