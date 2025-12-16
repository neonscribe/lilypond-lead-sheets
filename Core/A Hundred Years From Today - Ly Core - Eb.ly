%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "A Hundred Years From Today"
  subtitle = \instrument
  poet = "Joe Young, Ned Washington"
  composer = "Vicor Young"
  copyright = \markup \small { \now " " "© 1933 Robbins Music Corporation" }
}

refrainLyrics = \lyricmode {
Don't save your kiss -- es, just pass them a -- round.
You'll find my rea -- son is lo -- gic -- 'lly sound.
Who's going to know that you passed them a -- round,
a hun -- dred years from to -- day?

Why crave a pent -- house that's fit for a queen?
You're near -- er heav -- en on Moth -- er Earth's green.
If you had mill -- ions what would they all mean
a hun -- dred years from to -- day?

So laugh and sing, make love the thing,
be hap -- py while you may.
There's al -- ways one, be -- neath the sun,
who's bound to make you feel that way.

The moon is shin -- ing, and that's a good sign.
Cling to me clos -- er and say you'll be mine.
Re -- mem -- ber, dar -- ling, we won't see it shine
a hun -- dred years from to -- day,
hun -- dred years from to -- day.
a hun -- dred years from to -- day.
}

refrainChords = \chordmode {
  ef2:maj7 c2:m7 f2:m7 bf2:7 ef2:maj7 c2:m7 f2:7 bf2:7.5+
  ef2:maj7 c2:m7 f2:m7 af2:m6 f1:7 bf2:7 bf2:7.5+

  ef2:maj7 c2:m7 f2:m7 bf2:7 ef2:maj7 c2:m7 f2:7 bf2:7.5+
  ef2:maj7 c2:m7 f2:m7 af2:m6 f2:7 bf2:7 ef2:6 a2:dim7
  
  bf2:m7 ef2:7 bf2:m7 ef2:7 af1:6 af1:6
  c2:m7 f2:7 c2:m7 f2:7 bf2:7 b2:dim7 f2:m7/c bf2:7

  ef2:maj7 c2:m7 f2:m7 bf2:7 ef2:maj7 c2:m7 f2:7 bf2:7.5+
  ef2:maj7 c2:m7 f2:m7 af2:m6 f2:7 bf2:7 ef2:6 f4:m7 bf4:7

  f2:7 bf2:7 g2:m7.5- c2:7 f2:7 bf2:7 ef2:6
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad [Sarah Vaughan 1946]" 4 = 70

  \sectStart "A1"
  
  r8 bf8 g8 f8 ef8 ef4 ef8 | \tuplet 3/2 { c'4 af4 g4 } f2 |
  r8 bf8 g8 f8 ef8 ef4 ef8 | \tuplet 3/2 { c'4 c4 c4 } fs,2 |
  r8 g8 af8 bf8 c8 d4 ef8 |  \tuplet 3/2 { f4 ef4 c4 } bf4. af8 |
  g8 c4. \tuplet 3/2 { g4 ef4 g4 } | bf1 |
  
  \sect "A2"
  
  r8 bf8 g8 f8 ef8 ef4 ef8 | \tuplet 3/2 { c'4 af4 g4 } f2 |
  r8 bf8 g8 f8 ef8 ef4 ef8 | \tuplet 3/2 { c'4 c4 c4 } fs,2 |
  r8 g8 af8 bf8 c8 d4 ef8 |  \tuplet 3/2 { f4 ef4 c4 } bf4. af8 |
  g8 c4. \tuplet 3/2 { g4 g4 g4 } | ef2. ef4 |

  \xPageBreak
  
  \sectNoBar "B"
  
  f4. af8 g4. ef8 | f4. c'8 bf4. ef,8 | f8 f8 f8 f8 f2~ | f2 r4 f4 |
  g4. bf8 a4. f8 | g4. d'8 c4. f,8 | bf8 bf8 bf8 bf8 df4 b4 | bf1 |

  \sect "A3"

  r8 bf8 g8 f8 ef8 ef4 ef8 | \tuplet 3/2 { c'4 af4 g4 } f2 |
  r8 bf8 g8 f8 ef8 ef4 ef8 | \tuplet 3/2 { c'4 c4 c4 } fs,2 |
  r8 g8 af8 bf8 c8 d4 ef8 |  \tuplet 3/2 { f4 ef4 c4 } bf4. af8 \textToCodaLastTime |
  g8 c4. \tuplet 3/2 { g4 g4 g4 } | ef2 r2 |
  
  \bar "||-|."
  
  \textCodaBreak

  g8 c4. \tuplet 3/2 { g4 g4 g4 } | bf2. c4 | ef8 c4. \tuplet 3/2 { g4 g4 g4 } | ef2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
