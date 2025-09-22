%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "I Don't Know Enough About You"
  subtitle = \instrument
  poet = ""
  composer = "Dave Barbour and Peggy Lee"
  copyright = \markup \small "© 1946 Denslow Music Inc."
}

refrainLyrics = \lyricmode {
I know a lit -- tle bit a -- bout a lot of things,
but I don't know e -- nough a -- bout you.
Just when I think you're mine
You try a diff -- 'rent line
And ba -- by, what can I do?

I read the lat -- est news
No but -- tons on my shoes
But ba -- by, I'm con -- fused a -- bout you
You get me in a spin
Oh what a stew I'm in
'Cause I don't know e -- nough a -- bout you

Jack of all trades, mas -- ter of none
And is -- n't it a shame
I'm so sure that you'd be good for me
If you'd on -- ly play my game!

You know I went to school
And I'm no -- bod -- y's fool
That is to say un -- til I met you!
I know a lit -- tle bit a -- bout a lot o' things
But I don't know e -- nough a -- bout you
}

refrainChords = \chordmode {
  s2
  
  d1:7 g1:7 c1:6 a1:7
  d1:7 g1:7 c2:6 af2:7 g2:sus7 g4:7 a4:7

  d1:7 g1:7 c1:6 a1:7
  d1:7 g1:7 c2:6 d4:7 g4:7 c1:6
  
  e1:7 e1:7 a1:7 a1:7 d1:7 d1:7 g1:7 g2.:7 a4:7
  
  d1:7 g1:7 c1:6 a1:7
  d1:7 g1:7 c2:6 d4:7 g4:7 c2.:6
  \chordInsideParens{ a4:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad [Peggy Lee 1945]" 4 = 80
  
  \partial 2 \invisEighth fs8 g8 gs8 |

  \sectStart "A1"
  
  \tuplet 3/2 { a8 gs8 a8~ } a4 r8 gs8 a8 as8 | \tuplet 3/2 { b8 as8 b8~ } b4 r4 r8 g8 |
  a8 g8 a8 g8 a8 b8 c8 cs8~ | cs2 r8 a'8 gs8 a8 |
  \break
  e8 e8 e4 r8 a,8 gs8 a8 | e'8 e8 e2 r8 g,8 | a8 c4 ef8~ 8 c8 ef8 d8~ | d2 r8 fs,8 g8 gs8 |
  
  \sect "A2"
  
  \tuplet 3/2 { a8 gs8 a8~ } a4 r8 gs8 a8 as8 | \tuplet 3/2 { b8 as8 b8~ } b4 r4 r8 g8 |
  a8 g8 a8 g8 a8 b8 c8 cs8~ | cs2 r8 a'8 gs8 a8 |
  \break
  e8 e8 e4 r8 a,8 gs8 a8 | e'8 e8 e2 r8 g,8 | a8 b8 c8 d8 e8 c8 a8 c8~ | c2. r4
  
  \sect "B"

  e8 f8 ds8 e8~ e2 | e8 f8 ds8 e8~ e2 | r4 a,4 cs8 d8 e8 d8 | cs1 |
  \break
  d4 b8 a8~ a8 a8 b8 a8 | d4 b8 a8~ a2 | r4 g8 a8 \tuplet 3/2 { b8 d8 b8~ } b8 g8 | g2 r8 fs8 g8 gs8 |

  \sect "A3"

  \tuplet 3/2 { a8 gs8 a8~ } a4 r8 gs8 a8 as8 | \tuplet 3/2 { b8 as8 b8~ } b4 r4 r8 g8 |
  a8 g8 a8 g8 a8 b8 c8 cs8~ | cs2 r8 a'8 gs8 a8 |
  \break
  e8 e8 e4 r8 a,8 gs8 a8 | e'8 e8 e2 r8 g,8 | a8 b8 c8 d8 e8 c8 a8 c8~ | c2. r4
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
