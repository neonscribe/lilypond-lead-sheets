%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 16) #}
)

\header {
  title = "I Cried for You"
  subtitle = \instrument
  poet = "Arthur Freed"
  composer = "Gus Arnheim & Abe Lyman"
  copyright = "© 1923 Miller Music Inc"
}

refrainLyrics = \lyricmode {
I cried for you
Now it's your turn to cry o -- ver me.
Ev' -- ry road has a turn -- ing
That's one thing you're learn -- ing

I cried for you, what a fool I used to be
Now I found two eyes just a lit -- tle bit blu -- er
I found a heart just a lit -- tle bit tru -- er

I cried for you
Now it's your turn to cry o -- ver me
}

refrainChords = \chordmode {
  f1:maj7 a2:m7 d2:7 g1:7 g1:7
  g2:m7 c2:7 g2:m7 c2:7 f2 c2:5+ f1

  f1 f2:maj7 fs2:dim7 g1:m7 c1:7
  c1:7 c1:7 af1:dim7 c1:7
  
  f1:maj7 a2:m7 d2:7 g1:7 g1:7
  g1:m7 c1:7 a1:7 a1:7

  d1:7 d1:7 d1:7 d1:7
  g1:7 g1:7 g1:7 g2:7 c2:7

  f1:maj7 a2:m7 d2:7 g1:7 g1:7
  g2:m7 c2:7 g2:m7 c2:7 f1 f1
}

refrainKey = f

refrainMelody = \relative c'' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Fast" 4 = 160

  \xTextMark \markup{ \bold \box "A1" }
  a2 e'2~ | e2 d2 | d,1~ | d2 e4 f4 |
  \break
  c'2 a4 g4 | c4 a2 g4 | d1~ | d1 |
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "B" }
  e2 f2 | g2 a4 bf4 | c1 | e,1 |
  \break
  c2 e2 | g2 bf2 | d1 | c1 |
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  a2 e'2~ | e2 d2 | d,1~ | d2 e4 f4 |
  \break
  c'2 c2 | c2 bf2 | a1~ | a2 gs4 a4 |
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "C" }
  d2 d2 | d2 d4 cs4 | d4 cs4 d4 d4~ | d4 a2 gs4 |
  \break
  a2 a2 | a2 a4 gs4 | a4 gs4 a4 a4~ | a4 d,2. |
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "A3" }
  a'2 e'2~ | e2 d2 | d,1~ | d2 e4 f4 |
  \break
  c'2 a4 g4 | c4 a2 g4 | f1~ | f4 r4 r2 |
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
