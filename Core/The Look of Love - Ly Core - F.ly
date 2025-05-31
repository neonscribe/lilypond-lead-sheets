%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "The Look of Love"
  subtitle = \instrument
  poet = "Hal David"
  composer = "Burt Bacharach"
  copyright = \markup \small "© 1967 Colgems Music Corp."
}

refrainLyrics = \lyricmode {
The look __ of love __ is in __ your eyes, __ a look __ your smile __ can't dis -- guise. __
The look __ of love, __ it's say -- ing so __ much more __ than just words could ev -- er say. __
And what my heart __ has heard, __ well, it takes my breath__  a -- way.
I can hard -- ly wait to hold you, feel __ my arms a -- round you.
How long __ have I wait -- ed, wait -- ed just to love you now __ that I have found you. __
You've got the look ""
_ Don't ev -- er go, __ I love you so, __ don't ev -- er go __
}

refrainLyricsTwo = \lyricmode {
_ _ of love, __ it's on __ your face, __ a look __ that time __ can't e -- rase. __
Be mine __ to -- night, __ let this be just __ the start __ of so man -- y nights __ like this. __
Let's take a lov -- ers vow __ and then seal it with __ a kiss. __ ""
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _

}

refrainChords = \chordmode {
  s4

  d1:m7 d1:m7 a1:m7 a1:m7
  bf1:maj7 bf1:maj7 a1:sus7 a1:7.5+
  d1:m7 d2:sus7 d2:7 bf1:maj7 bf1:m6
  bf1:m6 f2:maj7 f2:7 bf1:maj7 bf1:maj7
  a2.:sus7 a2.:7 g2:m7/c
  
  f1:maj7 g1:m7/c f1:maj7 g2:m7/c 
  f1:maj7 g1:m7/c
  
  g2:m7/c a2:7.5+
  
  g2:m7/c a2:7.5+
  
  g2:m7/c a2:7.5+ d1:m7 d1:m7 g1:9.5-
  g1:9.5- g1:m9 g1:m7/c f1:6
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Latin" 4 = 110
  
  \partial 4 a,8 d8~ |

  \sectStart "A"
  
  \repeat volta 2 {
  d2 r4 a'8 g8~ | g2 r4 f8 e8~ | e2 r4 d8 g8~ | g2 r4 f8 e8~ |
  \break
  e2 r4 d8 g8~ | g2 r8 f8 d8 e8~ | e2. r4 | r2 r4  a,8 d8~ |

  \sect "B"
  
  d2 r4 a'8 c8~ | c2 r2 | r4 r8 bf8 c8 d4 c8~ | c8 bf4 a8~ a8 g4 c,8 |
  bf'4 a8 a8~ a8 g8 a4~ | a2 r2 | r4 r8 f8 g8 a4 bf8~ | bf8 a4 g8~ g8 f4 d8 |
  a'4 g8 g8~ g8 fs8 g4~ | g4 r4 r8 a8 f8 d8~ |
  
  \sect "C"

  d8 c8 c8 a8 c4 a8 g'8~ g8 a8 a8 g8 a4 bf4 |
  r4 a8 c8~ c8 bf4 a8 |
  \time 2/4
  bf4 g4 |
  \time 4/4
  d8 c8 c8 a8 c4 a8 g'8~ |
  \break
  g8 a8 a8 g8 a4 bf4~ \textToCodaLastTime |
  \alternative { \volta 1 {
  bf4
  bf4 a8 g4
  d8\laissezVibrer |
  } \volta 2 {
  bf'4\repeatTie r4 r2 |
  } } }

  \textCodaBreak
  
  bf4\repeatTie r4 \tuplet 3/2 { bf4 a4 g4 } | a1~ | a4 r4 \tuplet 3/2 { bf4 a4 g4 } | a1~ |
  a1 | r1 | r2 \tuplet 3/2 { f4 f4 f4 } d2~ d4\fermata r4 |


  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
