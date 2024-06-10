%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Ask Me Now (How I Wish)"
  subtitle = \instrument
  poet = "Jon Hendricks"
  composer = "Thelonius Monk"
  copyright = "© 1951 Thelonius Music Corporation"
}

refrainLyrics = \lyricmode {
  Once you said you loved me,
  Placed no one a -- bove me,
  Prayed for me to make that vow.
  What dumb thing did I say
  So bu -- sy be -- ing bla -- sé?
  How I wish _ you'd ask me now. \skip 1 \skip 1 \skip 1
  I was vain and blind then,
  Prone to be un -- kind then,
  Wish they'd turn back time some -- how.
  Then I was au -- da -- cious,
  I ig -- nored what was pre -- cious,
  How I wish _ you'd ask me now.
  I thought then I'd al -- ways be
  All foot -- loose and fan -- cy free
  How could I have been so blind?
  What I once made light of turned out to be true love
  Once my e -- go ruled me
  Flat -- tered me and fooled me
  More times than the laws al -- low
  You asked me could I care
  My at -- ten -- tion was else -- where
  How I wish _ you'd ask me now.
  How I wish _ you'd ask me How I wish _ you'd ask me
  How I wish _ you'd ask me now.
}

refrainChords = \chordmode {
  g4:m7 c4:7 gf4:m7 cf4:7 f4:m7 bf4:7 e4:m7 a4:7 ef2:m7 af2:7
  b2:7 bf2:7 ef2:7 d2:7 df2:maj7 ef2:7
  
  ef2:m7 af2:7 b4:7 bf4:7 a4:7 af4:7

  g4:m7 c4:7 gf4:m7 cf4:7 f4:m7 bf4:7 e4:m7 a4:7 ef2:m7 af2:7
  b2:7 bf2:7 ef2:7 d2:7 df2:maj7 ef2:7
  
  ef2:m7 af2:7 df1:6
  
  
  ef2:m7 af2:7 df1:maj7 ef2:m7 d2:7 df1:maj7
  bf2:m7 ef2:7 ef2:7 bf2:m7 ef2:m7 af2:7 gf1:7
  
  g4:m7 c4:7 gf4:m7 cf4:7 f4:m7 bf4:7 e4:m7 a4:7 ef2:m7 af2:7
  b2:7 bf2:7 ef2:7 d2:7 df2:maj7 ef2:7
  
  ef2:m7 af2:7 df1:6

  ef2:m7 af2:7
  f2:m7 bf2:7
  ef2:m7 af2:7 df1:6
}

refrainKey = df

refrainMelody = \relative c'' {
  \time 4/4
  \clef \whatClef
  \tempo "Medium Swing Ballad" 4 = 80

  \xTextMark \markup { \bold \box "A1" }
  c8 g8 e8 c8 b8 b'4. | bf8 f8 d8 bf8 a8 a'4. |
  \allowBreak
  af8 bf8 af8 bf8 af4 e!4 | f1 |
  \allowBreak
  f8 df8 bf8 g8 fs8 e'!4. | ef8 df8 \tuplet 3/2 { c8 df8 f8 } c'8 bf4. |
  \allowBreak
  df8 bf8 \tuplet 3/2 { gf8 ef8 bf8 } f'4 e4 | f4 bf4 ef,4 af4 |
  \bar "||"
  \break

  \xTextMark \markup { \bold \box "A2" }
  c8 g8 e8 c8 b8 b'4. | bf8 f8 d8 bf8 a8 a'4. |
  \allowBreak
  af8 bf8 af8 bf8 af4 e!4 | f1 |
  \allowBreak
  f8 df8 bf8 g8 fs8 e'!4. | ef8 df8 \tuplet 3/2 { c8 df8 f8 } c'8 bf4. |
  \allowBreak
  df8 bf8 \tuplet 3/2 { gf8 ef8 bf8 } f'4. af,8 | df1 |
  \bar "||"
  \break

  \pageBreak
  
  \xTextMark \markup { \bold \box "B" }
  ef8 f8 gf8 af8 c4. bf8 | af1 |
  \allowBreak
  ef8 f8 gf8 af8 b!4. a8 | af1 |
  \allowBreak
  f'8 ef8 df8 f,8 c'4. ef8 | bf1 | 
  \allowBreak
  bf8 af8 gf8 bf,8 f'8 ef4. | ff'8 ef8 df8 bf8 ff'8 ef4. |
  \bar "||"

  \xTextMark \markup { \bold \box "A3" }
  c8 g8 e8 c8 b8 b'4. | bf8 f8 d8 bf8 a8 a'4. |
  \allowBreak
  af8 bf8 af8 bf8 af4 e!4 | f1 |
  \allowBreak
  f8 df8 bf8 g8 fs8 e'!4. | ef8 df8 \tuplet 3/2 { c8 df8 f8 } c'8 bf4. \textToCodaLastTime |
  \allowBreak
  df8 bf8 \tuplet 3/2 { gf8 ef8 bf8 } f'4. af,8 | df1 |
  \bar "||-|."

  \textCodaBreak
  
  df'8 bf8 \tuplet 3/2 { gf8 ef8 bf8 } f'4. af,8 |
  ef''8 c8 \tuplet 3/2 { af8 f8 c8 } g'4. bf,8 |
  \break
  df'8-"rit." bf8 \tuplet 3/2 { gf8 ef8 bf8 } f'4. af,8 | df1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

performanceNotes =
\markup {
  \column {
    \line { \huge { "last 8 clarinet," } }
    \line { \huge { "vocal chorus, guitar chorus," } }
    \line { \huge { "clarinet first 16, vocal bridge to coda" } }
  }
}

\include "../Include/notes.ily"
