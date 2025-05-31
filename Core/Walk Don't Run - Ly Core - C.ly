%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title =  "Walk, Don't Run"
  subtitle = "as recorded by The Ventures"
  subsubtitle = \instrument
  copyright = \markup \small  "© 1960 Peermusic Ltd. and Mesa Verde Music Co."
  composer =  "Johnny Smith"
}

straightEighths = ##t

refrainKey = c

refrainMelody =  \relative a' {
  \clef \whatClef
  \time 4/4
  \key \refrainKey \major
  \tempo "Straight Eights" 4=150
  a8  a8  a8 r8  g8 
    g8  g8 r8 | % 2
     f8  f8  f8  e8 ~  e8 r8 r4 | % 3
     a8  a8  a8 r8  g8  g8  g8
    r8 | % 4
     f8  f8  f8  e8 ~  e8 r8 r4 \bar
    "||"
    \break
    \repeat volta 2 {
        | % 5

        \sectNoBar "A1"

	a8  a,8  b8
         c4  d8  e8  f8 ~ | % 6
         f8  g8  a8  c8 ~  c4
         b4 | % 7
         a8  a,8  b8  c4  d8 
        e8  f8 ~ | % 8
         f8  g8  a8  g8 ~  g4 
        f4 | % 9
         e8  ds8  e8  e8 ~  e2 ~ |
        \barNumberCheck #10
         e8  d8  e8  f8  e4  d4
        | % 11
         c4 \times 2/3 {
             d8  e8  d8 }
         c8  d4  e8 | % 12
        r8  gs8  gs8  gs8  gs8 
        gs8  b,8  a8

	\sect "A2"

	a'8  a,8  b8
         c4  d8  e8  f8 ~ | % 14
         f8  g8  a8  c8 ~  c4
         b4 | % 15
         a8  a,8  b8  c4  d8 
        e8  f8 ~ | % 16
         f8  g8  a8  g8 ~  g4 
        f4 | % 17
         e8  ds8  e8  e8 ~  e2 ~ | % 18
         e8  d8  e8  f8  e4  d4
        | % 19
         c4 \times 2/3 {
             d8  e8  d8 }
         c8  d4  c8 ~ | \barNumberCheck #20
         c8  g8  a8  b8  c8  d8
         e8  f8

	\sect "B"

	g8 [  fs8  g8
         g8 ]  g2 | % 22
        r8  g8 r8  g8  g8  g8  g8
         g8 | % 23
         e8  a8 r8  e8  a2 | % 24
         c4  b8 [  c8 ~ ]  c2 | % 25
	\break
         c8  a8  f8  c'4  a8
         f4 | % 26
         b8  gs8  e8  b'4  gs8
         e4 | % 27
         c'2 ~  c4.  e,8 ~ | % 28
         e4  d4  c4  b4 | % 29

	\sect "A3"

	a'8  a,8  b8
         c4  d8  e8  f8 ~ | \barNumberCheck
        #30
         f8  g8  a8  c8 ~  c4
         b4 | % 31
         a8  a,8  b8  c4  d8 
        e8  f8 ~ | % 32
         f8  g8  a8  g8 ~  g4 
        f4 | % 33
         e8  ds8  e8  e8 ~  e2 ~ 
	\break
      }
    \alternative { {
            | % 34
             e8  d8  e8  f8  e4
             d4 | % 35
             c4 \times 2/3 {
                 d8  e8  d8 }
             c2 | % 36
            r8  c8 r4  d'4  d4 | % 37
             c8 r8 r4 r2 }
        {
            | % 38
            r8  d,8 [  e8  f8 ]  e4 
            d4 }
        } | % 39
     c'4  c4  f4  f4 |
    \barNumberCheck #40
    r8  c'8 [  b8  c8 ~ ]  c2
    \bar "|."
    }

refrainChords =  \chordmode {
    \repeat volta 2 {
        | % 1
        a8 s8 s8 s8 g8 s8 s8 s8 | % 2
        f8 s8 s8 s8 e8 s8 s4 | % 3
        a8 s8 s8 s8 g8 s8 s8 s8 | % 4
        f8 s8 s8 e8 s8 s8 s4 \bar "|."
        a8 s8 s8 g4 s8 s8 s8 | % 6
        f8 s8 s8 s8 e4 s4 | % 7
        a8 s8 s8 g4 s8 s8 s8 | % 8
        f8 s8 s8 s8 s4 s4 | % 9
        c8 s8 s8 s8 s2 | \barNumberCheck #10
        g8 s8 s8 s8 s4 s4 | % 11
        c4 s1*1/12 s1*1/12 s1*1/12 s8 s4 e8 | % 12
        s8 s8 s8 s8 s8 s8 s8 s8 \bar "|."
        a8 s8 s8 g4 s8 s8 s8 | % 14
        f8 s8 s8 s8 e4 s4 | % 15
        a8 s8 s8 g4 s8 s8 s8 | % 16
        f8 s8 s8 s8 s4 s4 | % 17
        c8 s8 s8 s8 s2 | % 18
        g8 s8 s8 s8 s4 s4 | % 19
        c4 s1*1/12 s1*1/12 s1*1/12 f8 s4 s8 | \barNumberCheck #20
        c8 s8 s8 s8 s8 s8 s8 s8 \bar "|."
        c8 s8 s8 s8 s2 | % 22
        s8 s8 s8 s8 s8 s8 s8 s8 | % 23
        a8:m s8 s8 s8 s2 | % 24
        s4 s8 s8 s2 | % 25
        f8 s8 s8 s4 s8 s4 | % 26
        e8 s8 s8 s4 s8 s4 | % 27
        a2:m s4. s8 | % 28
        e4 s4 s4 s4 | % 29
        a8 s8 s8 s4 g8 s8 s8 | \barNumberCheck #30
        f8 s8 s8 s8 e4 s4 | % 31
        a8 s8 s8 s4 g8 s8 s8 | % 32
        f8 s8 s8 s8 s4 s4 | % 33
        c8 s8 s8 s8 s2 }
    \alternative { {
            | % 34
            g8 s8 s8 s8 s4 s4 | % 35
            c4 s1*1/12 s1*1/12 s1*1/12 f2 | % 36
            c8 s8 s4 g4 s4 | % 37
            c8 s8 s4 s2 }
        {
            | % 38
            g8 s8 s8 s8 s4 s4 }
        } | % 39
    c4 s4 f4 s4 | \barNumberCheck #40
    c8 s8 s8 s8 s2 \bar "|."
    }

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
