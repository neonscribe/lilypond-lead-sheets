%% -*- Mode: LilyPond -*-

#(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Easy Living"
  subtitle = \instrument
  poet = ""
  composer = "Leo Robin and Ralph Rainger"
  copyright = \markup \small "© 1937 Famous Music Corporation"
}

refrainLyrics = \lyricmode {
Liv -- ing for you is eas -- y liv -- ing.
It's eas -- y to live when you're in love,
and I'm so in love, there's noth -- ing in life but you. __
I'll nev -- er re -- gret the years I'm giv -- ing,
they're eas -- y to give when you're in love
and I'm happy to do what -- ev -- er I do for you. __
For you maybe I'm a fool but it's fun.
Peo -- ple say you rule me with one wave of your hand,
dar -- ling it's grand, they just don't un -- der -- stand.
Liv -- ing for you is eas -- y liv -- ing.
It's eas -- y to live when you're in love,
and I'm so in love, there's noth -- ing in life but you. __
}

refrainChords = \chordmode {
  \set chordChanges = ##t
  f2:maj7 fs2:dim7 g2:m7 gs2:dim7 f2:maj7/a c4:m7 f4:7 bf2:maj7 ef2:7
  f2:maj7 d2:m7 g2:m7 c2:7 a2:7 d2:7 g2:m7 c2:7

  f2:maj7 fs2:dim7 g2:m7 gs2:dim7 f2:maj7/a c4:m7 f4:7 bf2:maj7 ef2:7
  f2:maj7 d2:m7 g2:m7 c2:7 f2:6 bf2:7 ef2:m7 af2:7
  
  df2:maj7 bf2:m7 ef2:m7 af2:7 f2:m7 bf2:7 ef2:m7 af2:7
  df2:maj7 df2:maj7/c bf2:m7 bf2:m7/af g1:m7 c2:7 c2:7.5+

  f2:maj7 fs2:dim7 g2:m7 gs2:dim7 f2:maj7/a c4:m7 f4:7 bf2:maj7 ef2:7
  f2:maj7 d2:m7 g2:m7 c2:7
  f2:6
  \chordOpenParen{ af2:7 }
  df2:maj7
  \chordCloseParen{ c2:7 }
  \set chordChanges = ##f
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad" 4 = 89

  \xTextMark \markup{ \bold \box "A1" }

  \tuplet 3/2 { a4 d4 c4 } ef,2 | r8 d8 g8 bf8 d8 f4 e8 | 
  \tuplet 3/2 { b4 d4 c4 } f,2 | r8 d8 f8 a8 c4. bf8 | 
  \break
  \tuplet 3/2 { a4 g'4 f4 } a,4. e'8 | d4 bf8 d,8 a'4 gs4 | a1~ | a2. gs4 |
  
  \sect "A2"
  
  \tuplet 3/2 { a4 d4 c4 } ef,2 | r8 d8 g8 bf8 d8 f4 e8 | 
  \tuplet 3/2 { b4 d4 c4 } f,2 | r8 d8 f8 a8 c4. bf8 | 
  \break
  \tuplet 3/2 { a4 g'4 f4 } a,4. e'8 | d4 bf8 d,8 a'4 a8 f8~ | f1~ | f2. f4 |
  
  \sect "B"
  
  af1 | \tuplet 3/2 { ef'4 f4 ff4 } \tuplet 3/2 { ef4 c4 bf4 } |
  af1 | e'8 f8 e8 f8 ef4 c8 bf8 |
  \break
  af2 \tuplet 3/2 { af4 f4 af4 } | bf2 \tuplet 3/2 { bf4 g4 bf4 } |
  c2. d4 | g8 e8 d8 c8 gs2 |

  \sect "A3"

  \tuplet 3/2 { a4 d4 c4 } ef,2 | r8 d8 g8 bf8 d8 f4 e8 | 
  \tuplet 3/2 { b4 d4 c4 } f,2 | r8 d8 f8 a8 c4. bf8 | 
  \break
  \tuplet 3/2 { a4 g'4 f4 } a,4. e'8 | d4 bf8 d,8 a'4 a8 f8~ | f1~ | f1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
