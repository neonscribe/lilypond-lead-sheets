%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Route 66"
  subtitle = \instrument
  poet = ""
  composer = "Bobby Troup"
  copyright = "© 1946 Burke & Van Heusen, Inc."
}

refrainLyricsOne = \lyricmode {
If you ev -- er _ _ plan to mo -- tor west,
trav -- el my way; take the high -- way that's the best.
Get your kicks on Route _ six -- ty six.

It

Now you go through Saint Loo -- ey, _ Jop -- lin Mis -- sour -- i
and O -- kla -- ho -- ma Cit -- y is might -- y pret -- ty.
You'll see __ Am -- a ril -- lo, __
Gal -- lup, New Mex -- i -- co, __
Flag -- staff, Ar -- i zo -- na;
don't for -- get Wi -- no -- na,
King -- man, Bar -- stow, San __ Ber -- nar -- di -- no.
Won't __ you get hip to this time -- ly tip:
When you make that Cal -- i -- for -- nia trip,
Get your kicks on Route _ six -- ty six.
}

refrainLyricsTwo = \lyricmode {
_ _
winds _ from Chi -- ca -- go to L. A.,
more than two _ thou -- sand miles _ all the way.
}

refrainChords = \chordmode {
  s2
  f1:6 bf1:7 f1:6 f1:7
  bf1:7 bf1:7 f1:6 d1:7.9+
  g1:m7 c1:7
  
  f2:6 af2:7 g2:m7 c2:7

  f2:6 af2:7 g2:m7 c2:7

  f4:7 r2. bf4:7 r2. f4:7 r4*7
  bf1:7 bf1:7 f1:6 f1:6
  g1:m7 c1:7 a2:m7 af2:7 g2:m7 c2:7

  f1:6 bf1:7 f1:6 f1:7
  bf1:7 bf1:7 f1:6 d1:7.9+
  g1:m7 c1:7 f2:6
  \chordOpenParen{ af2:7 }
  g2:m7
  \chordCloseParen{ c2:7 }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 146

  \partial 2 f4 f4 |

  \xTextMark \markup{ \bold \box "A1,A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  f8 f8 r4 f4 f4 | f4 f4 c4 e8 f8 | r1 | r2 f4 f4 |
  \break
  f8 f4. f4 f4 | f8 f4. f8( c8) e8 f8 | r1 | r2 f4 f4 |
  \break
  a2. f4 | a8 c4. f,4 f8 f8 |
  \alternative { \volta 1 {
  r1 | r2 r4 f4 |
  } \volta 2 {
  r1 | r2 r4 c'8 f,8 |
  } } }
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  c'4 bf8 a8 bf8 c8 r8 \parenthesize f,8 | c'4 bf8 af8 bf8 c8 r8 f,8 |
  c'8 c8 c8 c8 c8 d8 c8 ef8~ | ef4. d8 c8 f,8 f8 c'8~ |
  \break
  c2. bf8 af8 | bf8 c4.~ c2 |
  r2 \tuplet 3/2 { a4 c4 a4 } | f4 d8 c8~ c4. c'8~ |
  \break
  c8 c8 bf8 a8 bf8 c8 r8 c8~ | c8 c8 bf8 a8 bf8 c4. |
  c8 c4. c8 c4 c8~ | c4 bf8 a8 bf8 c8 r8 f,8~ |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A3" }
  
  f8 f4. f4 f4 | f4 f4 c4 e8 f8 | r1 | r2 r4 f4 |
  \break
  f2 f4 f4 | f4 f4 f8( c8) e8 f8 | r1 | r2 f4 f4 |
  \break
  a2. f4 | a8 c4. f,4 f8 f8 | r1 | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"
