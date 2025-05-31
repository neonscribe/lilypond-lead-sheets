%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  (set-global-staff-size 18))

\header {
    title =  Apache
    subtitle = \instrument
    copyright = \markup \small "© 1959 Francis, Day & Hunter, Ltd."
    composer =  "Jerry Lordan"
  }

straightEighths = ##t

refrainKey = a

refrainMelody =  \relative a' {
    \clef \whatClef
    \time 4/4 
    \key a \minor
    \tempo "Tom-Tom Straight Eighths" 4=130
    \xTextMark \markup { Intro }
    r4  a8 [  c8 ]  d8 [
     ef8 ]  d4 | % 2
    r4  a8 [  d8 ]  a'8 [  g8 ]
     e4 | % 3
    r4  a,8 [  c8 ]  d8 [  ef8 ]
     d4 | % 4
    r4  a8 [  d8 ]  a'8 [  g8 ]
     e4 | % 5
    \bar ".|:-||"
    \break
    \repeat volta 2 {
    \xTextMark \markup { \bold \box { A1 } }
    a,2  e4  a4 | % 6
     fs2  e4  d4 | % 7
     e2. r4 | % 8
    r2 r4  e4 | % 9
     a2  e4  a4 | \barNumberCheck #10
     fs2  e4  d4 | % 11
     e2. r4 | % 12
    r2 r4  a4 | % 13
    \break
     d2  a4  d4 | % 14
     b2  a4  g4 | % 15
     a2. r4 | % 16
    r2 r4  e4 | % 17
     a2  e4  a4 | % 18
     fs2  e4  d4 | % 19
     e2. r4 | \barNumberCheck #20
    R1 | % 21
    \bar "||-||"
     \break
   \xTextMark \markup { \bold \box { B1 } }
     c8 [  f16  f16 ]  f8 [  f8 ]
     c8 [  f16  f16 ]  f8 [  f8 ] | % 22
     c8 [  f16  f16 ]  f8 [  f8 ]
     c8 [  f16  f16 ]  f16 [  f16
     f16  f16 ] | % 23
     e2  a,2 ~ | % 24
    a1 | % 25
      \break
   c8 [  f16  f16 ]  f8 [  f8 ]
     c8 [  f16  f16 ]  f8 [  f8 ] | % 26
     c8 [  f16  f16 ]  f8 [  f8 ]
     c8 [  f16  f16 ]  f16 [  f16
     f16  f16 ] | % 27
    e1 ~ | % 28
    e1 | % 29
    \bar "||-||"
     \break
   \xTextMark \markup { \bold \box { C1 } }
    r4  f4  a4  c4 | \barNumberCheck #30
     b2  c4  d4 | % 31
    \times 2/3  {
         e4  d4  c4 }
     a2 ~ | % 32
    a1 | % 33
    \break
    r4  f4  a4  c4 | % 34
     b2  c4  d4 | % 35
    g,1 ~ | % 36
    g1 | % 37
    \break
    r4  f4  a4  c4 | % 38
     b2  c4  d4 | % 39
    \times 2/3  {
         e4  d4  c4 }
     a2 ~ | \barNumberCheck #40
    a1 | % 41
    \bar "||-||"
     \break
   \xTextMark \markup { \bold \box { B2 } }
     c,8 [  f16  f16 ]  f8 [  f8 ]
     c8 [  f16  f16 ]  f8 [  f8 ] | % 42
     c8 [  f16  f16 ]  f8 [  f8 ]
     c8 [  f16  f16 ]  f16 [  f16
     f16  f16 ] | % 43
     e2  a,2 ~ | % 44
    a1 | % 45
    \break
     c8 [  f16  f16 ]  f8 [  f8 ]
     c8 [  f16  f16 ]  f8 [  f8 ] | % 46
     c8 [  f16  f16 ]  f8 [  f8 ]
     c8 [  f16  f16 ]  f16 [  f16
     f16  f16 ] | % 47
     e2  a,2 ~ | % 48
    a1 | % 49
  }
    \break
    \xTextMark \markup { Outro }
    r4  a'8 [  c8 ]  d8 [  ef8 ]
     d4 | % 94
    r4  a8 [  d8 ]  a'8 [  g8 ]
     e4 | % 95
    r4  a,8 [  c8 ]  d8 [  ef8 ]
     d4 | % 96
    r4  a8 [  d8 ]  a'8 [  g8 ]
     e4 | % 97
    a1 | % 98
    R1 \bar "|."
    }

refrainChords =  \chordmode {
  a1:m d1 a1:m d1

  a1:m d1 a1:m a1:m
  a1:m d1 a1:m a1:m
  d1:m g1 d1:m d1:m
  a1:m d1 a1:m a1:m
  
  f1 f1 a1:m a1:m
  f1 f1 a1:m a1:m

  f1 g1 c2 a2:m a1:m
  f1 g1 c1 c1:7
  f1 g1 c2 a2:m a1:m

  f1 f1 a1:m a1:m
  f1 f1 a1:m a1:m

  a1:m d1 a1:m d1 a1:m a1:m
}


\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

xxxx = {    \bar "||-||"
    \xTextMark \markup { \bold \box { A2 } }
    a'2  e4  a4 | \barNumberCheck #50
     fs2  e4  d4 | % 51
     e2. r4 | % 52
    r2 r4  e4 | % 53
     a2  e4  a4 | % 54
     fs2  e4  d4 | % 55
     e2. r4 | % 56
    r2 r4  a4 | % 57
     d2  a4  d4 | % 58
     b2  a4  g4 | % 59
     a2. r4 | \barNumberCheck #60
    r2 r4  e4 | % 61
     a2  e4  a4 | % 62
     fs2  e4  d4 | % 63
     e2. r4 | % 64
    R1 | % 65
    \bar "||-||"
    \xTextMark \markup { \bold \box { B3 } }
     c8 [  f16  f16 ]  f8 [  f8 ]
     c8 [  f16  f16 ]  f8 [  f8 ] | % 66
     c8 [  f16  f16 ]  f8 [  f8 ]
     c8 [  f16  f16 ]  f16 [  f16
     f16  f16 ] | % 67
     e2  a,2 ~ | % 68
    a1 | % 69
     c8 [  f16  f16 ]  f8 [  f8 ]
     c8 [  f16  f16 ]  f8 [  f8 ] |
    \barNumberCheck #70
     c8 [  f16  f16 ]  f8 [  f8 ]
     c8 [  f16  f16 ]  f16 [  f16
     f16  f16 ] | % 71
    e1 ~ | % 72
    e1 | % 73
    \bar "||-||"
    \xTextMark \markup { \bold \box { C2 } }
    r4  f4  a4  c4 | % 74
     b2  c4  d4 | % 75
    \times 2/3  {
         e4  d4  c4 }
     a2 ~ | % 76
    a1 | % 77
    r4  f4  a4  c4 | % 78
     b2  c4  d4 | % 79
    g,1 ~ | \barNumberCheck #80
    g1 | % 81
    r4  f4  a4  c4 | % 82
     b2  c4  d4 | % 83
    \times 2/3  {
         e4  d4  c4 }
     a2 ~ | % 84
    a1 | % 85
    \bar "||-||"
    \xTextMark \markup { \bold \box { B4 } }
     c,8 [  f16  f16 ]  f8 [  f8 ]
     c8 [  f16  f16 ]  f8 [  f8 ] | % 86
     c8 [  f16  f16 ]  f8 [  f8 ]
     c8 [  f16  f16 ]  f16 [  f16
     f16  f16 ] | % 87
     e2  a,2 ~ | % 88
    a1 | % 89
     c8 [  f16  f16 ]  f8 [  f8 ]
     c8 [  f16  f16 ]  f8 [  f8 ] |
    \barNumberCheck #90
     c8 [  f16  f16 ]  f8 [  f8 ]
     c8 [  f16  f16 ]  f16 [  f16
     f16  f16 ] | % 91
     e2  a,2 ~ | % 92
    a1 | % 93
}