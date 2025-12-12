%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Twisted"
  subtitle = \instrument
  poet = "Annie Ross"
  composer = "Wardell Gray"
  copyright = \markup \small { \now " " "© 1949,1952 Prestige Music" }
}

refrainLyrics = \lyricmode {
_ _ _ _ _ _ _
My an -- a -- lyst told me that I was right out of my head.
The way he de -- scribed it, he said I'd be bet -- ter dead than live.
I did -- n't lis -- ten _ to his jive, I knew all a -- long _ that he was all wrong,
and I knew that he thought I was cra -- zy but I'm not, oh, no.
My an -- a -- lyst told me that I was right out of my head.
He said I'd need treat -- ment, but I'm not that eas -- 'ly led.
He said I was the type that was most in -- clined,
when out of his sight to be out of my mind and he thought I was nuts,
no more ifs or ands or buts, oh no.

They say as a child I ap -- peared a lit -- tle bit wild with all my cra -- zy i -- deas,
but I knew what was hap -- p'nin', I knew I was a gen -- ius.
What's so strange when you know that you're a wiz -- ard at three?
I knew that this was meant to be.

Well I heard lit -- tle child -- ren were sup -- posed to sleep tight,
that's why I drank a fifth of vod -- ka one night.
My par -- ents got fran -- tic did -- n't know what to do,
but I sas some cra -- zy scenes be -- fore I came to.
Now, do you think I was cra -- zy? I may have ben on -- ly three but I was swing -- in'.

They all laughed at A. Gra -- ham Bell,
they all laughed at Ed -- i -- son and al -- so at Ein -- stein,
so why should I feel sor -- ry if they just could -- n't un -- der -- stand
the rea -- son -- ing and the log -- ic that went on in my head?
I had a brain it was in -- sane.
Sol -- diers used to laugh at me when I re -- fused to ride
on all those dou -- ble deck -- er bus -- es all be -- cause there was on dri -- ver on the top.

My an -- a -- lyst told me that I was right out of my head.
but I said “Dear Doc -- tor, I think that it's you in -- stead,”
'cause I have got a thing that's u -- nique and new.
It proves that I'll have the _ last laugh on you.
'Cause in -- stead of one head I got two.
And you know two heads are bet -- ter than one.
}

refrainChords = \chordmode {
  c2 bf4. g8*2:m bf4. c8 r4.
  
  r4. c8*5:7 f1:7 c1:7
  c2:7 \chordInsideParens{ c2:7.5- } f1:9.11+ f1:9.11+
  c1:maj7 e2:m7 a2:7 d1:m7
  g1:7 c2:6 a2:7
  
  d2:m7 g2:7

  r4. c8*5:7 f1:7 c1:7
  c2:7 \chordInsideParens{ c2:7.5- } f1:9.11+ f1:9.11+
  c1:maj7 e2:m7 a2:7 d1:m7
  g1:7 c2:6 a2:7
  
  d2:m7 g2:7

  c1:7 f1:7 c1:7 c1:7
  f1:7 f1:7 c1:maj7 e2:m7 a2:7 d1:m7
  g1:m7 c2:6 a2:7 d2:m7 g2:7

  c1:7 f1:7 c1:7 c1:7
  f1:7 f1:7 c1:maj7 e2:m7 a2:7 d1:m7
  g1:7 c2:6 a2:7 d2:m7 g2:7
  
  c1:7 f1:7 c1:7 c1:7
  f1:7 f1:7 c1:maj7 e2:m7 ef2:m7 d1:m7
  g1:7 c2:6 ef2:dim7 d2:m7 g2:7 c4:6 r8*17
  
  c8*5:7 f1:7 c1:7
  c2:7 \chordInsideParens{ c2:7.5- } f1:9.11+ f1:9.11+
  c1:maj7 e2:m7 a2:7 d1:m7

  g1:7 c4:6 r4*5 c2:7
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Swing [Lambert, Hendricks & Ross 1959]" 4 = 162

  \xTextMark \markup{ \bold \box "Intro" }
  
  e4-. e4-. d4. bf8 | r8 d8 r8 d8 e8 ds8 \tuplet 3/2 { e8 g8 a8 } |

  \bar ".|:-||"
  \break

  \sect "A1"
  
  bf8 g8 r4 r8 gs8 \tuplet 3/2 { a8 c8 d8 } | ef8 c8 ef8 d8 r8 ds,8 \tuplet 3/2 { e8 g8 a8 } |
  bf8 g8 r4 r8 fs8 \tuplet 3/2 { g8 bf8 c8 } | df4 c8 gf8~ gf4 e8 f8~ |
  f8 b8 b8 a8 b4 a8 f8 | b4 c8 a8~ a4 r8 b8 | g4 e8 f8 g4 e8 f8 | 
  g8 a8 bf4 a4 g8 e8 | f8 e'8 ef8 d8 r2 | r8 ef4 ef8 d8 d8 df8 df8 | c4 g4 a4 r4 |
  
  r2 r8 ds,8 \tuplet 3/2 { e8 g8 a8 } |
  
  
  \sect "A2"
  
  bf8 g8 r4 r8 gs8 \tuplet 3/2 { a8 c8 d8 } | ef8 c8 ef8 d8 r8 ds,8 \tuplet 3/2 { e8 g8 a8 } |
  bf8 g8 r4 r8 fs8 \tuplet 3/2 { g8 bf8 c8 } | df4 c8 gf8~ gf4 e8 f8~ |
  f8 b8 b8 a8 b4 a8 f8 | b4 c8 a8~ a4 r8 b8 | g4 e8 f8 g4 e8 f8 |
  g8 a8 bf4 a4 g8 e8 | f8 e'8 ef8 d8 r2 |
  \bar "|o"

  \xPageBreak

  r8 ef4 ef8 d8 d8 df8 df8 | c4 g4 a4 r4 |
  
  r2 r4 r8 g8 |
  
  \sect "B"
  
  c4 d8 ds8 e4 f8 fs8 | g8 e8 \tuplet 3/2 { f8 g8 f8 } e8 d8 c8 b8 | d8 b8 c8 g8~ g4 r8 a8 |
  bf4 \tuplet 3/2 { d8 f8 a8 } c8 gs8 e8 c8 | g'4. f8 c4 ef4~ | ef4 d2. |
  r4 g2 c8 gf8~ | gf4 f8 e8 d8 c8 a8 g8 | d'8 e8 f8 d8~ d4 r4 |
  r8 e8 f8 e8 d8 c8 b8 d8 | c2 r2 r2 r8 g'8 g8 g8~ |
  
  
  \sect "C"
  
  g4 a8 g8 c8 a8 f8 d8 | g8 a8 g8 c8 r4 r8 g8~ | g4 a8 g8 c8 a8 f8 d8 |
  g8 e8 c8 bf8 r4 r8 gs8 | a8 c8 d4 ef8 c8 ef8 c8 | g'8 f8 ef8 c8~ c4 r8 d8 |
  e4 f8 fs8 g8 f8 e8 d8 | c8 e8 g8 bf8~ bf8 a4 e8 | g8 f8 c8 a8 e'8 d8 r4 |
  r8 c8 \tuplet 3/2 { b8 d8 f8 } \tuplet 3/2 { af8( bf8) af8 } g8 f8 |
  e4. g8~ g2 | c8 g8~ g4 r8 ds8 \tuplet 3/2 { e8 g8 b8 } |

  \xPageBreak
  
  \sectNoBar "D"
  
  c8 g8 b8 c8 r2 | r8 ds,8 \tuplet 3/2 { e8 g8 b8 } \tuplet 3/2 { c8 g8 b8~ } b8 c8 |
  \tuplet 3/2 { b8 c8 b8 } c8 g8~ g4 r8 fs8 | g8 ds8 e8 c8 cs8 ds8 bf8 gs8 |
  a4 c8 d8 ef8 f8 fs8 g8 | \tuplet 3/2 { a8 b8 a8 } g8 f8 ef8 c8 a8 g8 | d'8 b8 c8 g'8~ g4 r8 e8~ |
  \tuplet 3/2 { e8 g8 b8 } d8 ef,8~ \tuplet 3/2 { ef8 gf8 bf8 } df8 d,8~( |
  \tuplet 3/2 { d8 f8) a8 } c8 a8 b8 bf8 a8 af8 | g8 f8 c8 a8 ds8 e8 f8 fs8 |
  \tuplet 3/2 { g8( a8) g8 } e8 g8 gf8 ef8 c8 a8 | f'8 cs8 d8 f8 e8 d8 c8 a8 | c4 r4 r2 |
  r2 r8 ds,8 \tuplet 3/2 { e8 g8 a8 } |
  
  
  \sect "A3"

  bf8 g8 r4 r8 gs8 \tuplet 3/2 { a8 c8 d8 } | ef8 c8 ef8 d8 r8 ds,8 \tuplet 3/2 { e8 g8 a8 } |
  bf8 g8 r4 r8 fs8 \tuplet 3/2 { g8 bf8 c8 } | df4 c8 gf8~ gf4 e8 f8~ |
  f8 b8 b8 a8 b4 a8 f8 | b4 c8 a8~ a4 r8 b8 | g4 e8 f8 g4 e8 f8 | 
  g8 a8 bf4 a4 g8 e8 | f8 e'8 ef8 d8 r2 |
  r2 r8 c8 c4 | c4 r8 g'16 gf16 f8 a,8 e'8 ef8 | d8 g,8 c4 bf2\fermata |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
