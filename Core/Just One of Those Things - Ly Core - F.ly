%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 18) #}
)

\header {
  title = "Just One of Those Things"
  subtitle = \instrument
  poet = ""
  composer = "Cole Porter"
  copyright = "© 1935 HARMS Inc."
}

refrainLyrics = \lyricmode {
It was just one __ of those things, __
Just one fo those cra -- zy flings. __
One of those bells that now and then rings,
Just one __ of those things. __
It was just one __ of those nights, __
Just one __ of those fab -- u -- lous flights.
A trip to the moon on gos -- sa -- mer wings,
Just one __ of those things.
If we'd thought a bit __ of the end of it __
When we start -- ed paint -- ing the town, __
We'd have been a -- ware __
That our love af -- fair, __
Was too hot not __ to cool down. __
So good -- bye, dear, __ and A -- men. __
Here's hop -- ing we meet now and then. __
It was great fun __ but it was
just one __ of those things. __
}

refrainChords = \chordmode {
  s2

  d1:m6 d1:m6 e1:m7 a1:7 f1:7 f1:7 b1:m7.5- bf1:m6
  a1:m7 af1:9 g1:m7 c1:7 f1:6 d1:7.9-.5+ g1:m7 c2:7 a2:7.9-

  d1:m6 d1:m6 e1:m7 a1:7 f1:7 f1:7 b1:m7.5- bf1:m6
  a1:m7 af1:9 g1:m7 c1:7 f1:6 f1:6 f1:m7 bf1:7
  
  ef1:6 \chordInsideParens{ e1:dim7 } f1:m7 bf1:9 
  ef1:6 \chordInsideParens{ af1:9 } d1:m7 g1:7
  c1:6 a2:m7 a2:m7/g fs1:m7.5- f1:m6
  e1:m7 ef1:dim7 g2:m7 c2:7 e2:m7.5- a2:7.9-

  d1:m6 d1:m6 e1:m7 a1:7 f1:7 f1:7 bf1:maj7 ef1:9
  a1:m7 d1:7 g1:m7 c2:sus9 c2:13.9- f1:6 f1:6
  \chordOpenParen{ e1:m7.5- }
  \chordCloseParen{ a1:7.9- }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Up" 4 = 160

  \partial 2 bf4 a4 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  a2 r4 a4~ | a4 gs4 a2 | a1~ | a2 r2 |
  a2 r4 a4~ | a4 gs4 a2 | a2 a4 g4~ | g1 |
  \break
  g4 e4 f2 | c'2. f,4 | f4 d4 f2 | e1 |
  d2 r4 d4~ | d4 cs4 d2 | c1~ | c2 bf'4 a4 |
  
  \sect "A2"
  
  a2 r4 a4~ | a4 gs4 a2 | a1~ | a2 r2 |
  a2 r4 a4~ | a4 gs4 a2 | a4 gs4 a2 | g2. e4 |
  \break
  \tuplet 3/2 { g2 e2 f2 } | d'2. c4 |
  \tuplet 3/2 { f,2 d2 f2 } | e1 |
  d2 r4 d4~ | d4 cs4 d2 | c1 | r4 c2 bf4 |
  
  \sect "B"
  
  g'2 g4 g4~ | g4 fs2 g4 | c2 c4 c4~ | c4 cf2 bf4 |
  c,2 d4 ef4~ | ef4 f2 fs4 | g1~ | g2 g4 gs4 |
  \break
  a2 a4 a4~ | a4 gs2 a4 | e'2 e4 e4~ | e4 ef2 d4 |
  d2 r4 d4~ | d4 c4 a2 | c1~ | c2 bf4 a4 |
  
  \sect "A3"
  
  a2 r4 a4~ | a4 gs4 a2 | a1~ | a2 r2 |
  a2 r4 f'4~ | f4 d2 c4 | a4 gs4 a4 g4~ | g2 fs4 g4 |
  \break
  e'2 r4 d4~ | d4 d,4 cs4 d4 | c'2 r4 bf4~ | bf4 g4 a2 |
  f1~ | f1 | r1 | r2
  \override Parentheses.font-size = #5
  \startParenthesis \parenthesize
  bf4
  \endParenthesis \parenthesize
  a4 |
  
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
