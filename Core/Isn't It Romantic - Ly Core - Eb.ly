%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Isn't It Romantic"
  subtitle = \instrument
  poet = "Lorenz Hart"
  composer = "Richard Rodgers"
  copyright = \markup \small "© 1932 Famous Music Corp."
}

refrainLyricsOne = \lyricmode {
Is -- n't it ro -- man -- tic? Mu -- sic in the night,
a dream that can be heard.
Is -- n't it ro -- man -- tic? Mov -- ing shad -- ows write
the old -- est mag -- ic word.

I hear the breez -- es play -- ing in the trees a -- bove.
While all the world is say -- ing you were meant for love.

Is -- n't it ro

Sweet sym -- bols in the moon -- light,
Do you mean that I will fall in love per -- chance? __
Is -- n't it ro -- mance? __
(Is -- n't it ro-)
}

refrainLyricsTwo = \lyricmode {
 _ _ _ _
man -- tic? Mere -- ly to be young on such a night as this?
Is -- n't it ro -- man -- tic? Ev -- 'ry note that's sung
is like a lov -- ers kiss.


}

refrainChords = \chordmode {
  \chordInsideParens{ bf2:7 }

  ef2:6 c2:m7 f2:m7 bf2:7 ef2:maj7 e2:dim7 f2:m7 bf2:7
  ef2:6 c2:m7 f2:m7 bf2:7 ef1:maj7 bf2:m7 ef2:7
  
  af1:maj7 bf2:7 g2:7 c2:m7 g2:7/b bf2:m7 ef2:7
  af2:maj7 c2:7/g f2:m d4:m7.5- g4:7 c2:m7 f2:7 bf2:dim7 bf2:7
  
  f2:m f2:m/ef d2:m7.5- g2:7 c2:m c2:m/bf c2:m/a af2:m6
  g2:m7 gf2:7 f2:m7 bf2:7 ef2:6 af2:m6 ef2:6
  \chordInsideParens{ bf2:7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 135

  \partial 2 d8 ef8 c8 d8 |

  \xTextMark \markup{ \bold \box "A1,A2" }
  
  \bar ".|:"
  \repeat volta 2 {

  ef4 ef2. | d8 ef8 c8 d8 ef4 f4 | g4. g8 bf4. bf8 | g2 d8 ef8 c8 d8 |
  \break
  ef4 ef2. | d8 ef8 c8 d8 ef4 f4 | g4. g8 bf4. bf8 | df1 |

  \sect "B"
  
  \alternative { \volta 1 {

  c1 | d8 c8 bf8 af8 g4 f4 | ef4. ef8 g4. g8 | ef1 |
  \break
  c'1 | d8 c8 bf8 af8 g4 f4 | ef4. ef8 c'4. c8 | df,2 d8 ef8 c8 d8 |

  \break

  } \volta 2 {

  \xTextMark \markup{ \bold \box "C" }

  c'1 | d8 c8 bf8 af8 g4 f4 | ef4. ef8 g4. g8 | c4. c8 ef4. ef8 |
  \break
  f4 ef4 bf2~ | bf2 d8 ef8 c8 d8 | ef1~ | ef2
  \override Parentheses.font-size = #5
  \startParenthesis \parenthesize
  d,8
  ef8 c8
  \endParenthesis \parenthesize
  d8 |

  } } }

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"
