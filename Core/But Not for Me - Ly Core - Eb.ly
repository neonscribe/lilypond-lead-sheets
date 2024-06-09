%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 18) #}
)

\header {
  title = "But Not for Me"
  subtitle = \instrument
  poet = "Ira Gershwin"
  composer = "George Gershwin"
  copyright = "© 1930 New World Music Corporation"
}

refrainLyricsOne = \lyricmode {
They're wri -- ting songs of love,
But not for me.
A luck -- y star's a -- bove,
But not for me.

With love to lead the way
I found more clouds of gray
Than an -- y Rus -- sian play
Could guar -- an -- tee.

I was a fool to fall
And get that way;
Heigh -- ho! a -- las! and al -- so, Lack -- a -- day!
Al -- though I can't dis -- miss
The mem' -- ry of his kiss,
I guess he's not for me.

He's knock -- ing
}

refrainLyricsTwo = \lyricmode {
_ _ _ on a door,
But not for me.
He'll plan a two by four,
But not for me.

I know that love's a game;
I'm puz -- zled, just the same,
Was I the moth or flame?
I'm all at sea.

It all be -- gan so well,
But what an end!
This is the time a fel -- ler needs a friend,

When ev' -- ry hap -- py plot
Ends with the mar -- riage knot,
And there's no knot for me.
}

refrainChords = \chordmode {
  s2.
  
  ef1:maj7 f2:m7 bf2:7 ef1:maj7 c1:m7 
  f1:7 bf2:sus7 bf2:7 ef1:9 ef1:9
  
  af2:dim7 af2 df1:9 ef2:dim7 ef2:6 c1:m7
  g2:dim7/f f2:m7 f2:m7 c2:7.5+ f2:m7 b2:9.11+ bf1:7
  
  ef1:maj7 f2:m7 bf2:7 ef1:maj7 c1:m7 
  f1:7 bf2:sus7 bf2:7 ef1:9 ef1:9
  
  af2:dim7 af2 df1:9 ef2:dim7 g2:m7 c2:m7 c2:7.5+
  f1:7 bf1:7 ef1:6

  \chordOpenParen{ f2:m7 }
  \chordCloseParen{ bf2:7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 130

  \partial 2. f4 g4 f4 |
  \bar "||"

  \textMark \markup{ \bold \box "A1" }
  
  \bar ".|:"
  \repeat volta 2 {
  g2 f4 ef4~ | ef4 f4 g4 f4 | g1 | r4 f4 g4 f4 |
  \break
  g2 f4 ef4~ | ef4 f4 g4 f4 | g1 | r4 g4 af4 bf4 |

  \bar "||"
  \break

  \textMark \markup{ \bold \box "B" }
  
  b2 c4 ef4 | r4 f,4 g4 af4 | a2 bf4 ef4 | r4 ef,4 f4 g4 |
  \break
  g2 af4 ef'4 | r4 ef4 c4 af4 | f1 | r4 f4 g4 f4 |
  
  \bar "||"
  \break

  \textMark \markup{ \bold \box "A2" }
  
  g2 f4 ef4~ | ef4 f4 g4 f4 | g1 | r4 f4 g4 f4 |
  \break
  g2 f4 ef4~ | ef4 f4 g4 f4 | g1 | r4 g4 af4 bf4 |

  \bar "||"
  \break

  \textMark \markup{ \bold \box "C" }

  b2 c4 ef4 | r4 f,4 g4 af4 | a2 bf4 f'4 | r4 ef4 c4 af4 |
  \break
  g1 | f1 | ef1 | r4 f4 g4 f4 |
  }
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"
