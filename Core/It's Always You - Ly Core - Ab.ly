%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "It's Always You"
  subtitle = \instrument
  poet = "Johnny Burke"
  composer = "Jimmy Van Heusen"
  copyright = "© 1941 Famous Music Corp."
}

refrainLyrics = \lyricmode {
  When -- ev -- er it's ear -- ly twi -- light, I watch till a star breaks through;
  fun -- ny, it's not a star I see, it's al -- ways you.

  when -- ev -- er I roam through ro -- ses, and late -- ly I of -- ten do,
  fun -- ny it's not a rose I touch, it's al -- ways you.
  
  If a breeze ca -- ress -- es me, it's real -- ly you stroll -- ing by.
  If I hear a mel -- o -- dy, it's mere -- ly the way you sigh.
  
  Wher -- ev --er you are, you're near me; you dare me to be un -- true.
  Fun -- ny, each time I fall in love, it's al -- ways you.
}

refrainChords = \chordmode {
  s4

  bf2:m7 ef2:7 af2:maj7 a2:dim7 bf2:m7 ef2:7 c2:m7 f2:7
  bf2:m7 ef2:7 af2:maj7 f2:m7 bf2:m7 ef2:7 c2:m7 f2:7

  bf2:m7 ef2:7 af2:maj7 a2:dim7 bf2:m7 ef2:7 c2:m7 f2:7
  bf2:m7 ef2:7 af2:maj7 f2:m7 bf2:m7 ef2:7 af2:maj7 bf2:7.9-
  
  ef2:m7 af2:7 ef1:m7 df1:maj7 df1:maj7
  f2:m7 bf2:7 f2:m7 bf2:7 bf1:m7 ef1:7

  bf2:m7 ef2:7 af2:maj7 a2:dim7 bf2:m7 ef2:7 c2:m7 f2:7
  bf2:m7 ef2:7 af2:maj7 f2:m7 bf2:m7 ef2:7 af2:maj7

  \chordInsideParens{ f2:7 }
}

refrainKey = af

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Ballad" 4 = 84

  \partial 4 ef4 |
  \bar "||"

  \mark \markup{ \box "A1" }
  
  \tuplet 3/2 { f4 f4 bf4 } f4 e4 | ef4 ef2 d4 | \tuplet 3/2 { df4 df4 f4 } c4 df4 | ef1 |
  \break
  \tuplet 3/2 { df4 df4 f4 } c4 df4 | ef4 f4 g4 af4 | df2 ef2 | c2. ef,4 |
  
  \bar "||"
  \break

  \mark \markup{ \box "A2" }
  
  \tuplet 3/2 { f4 f4 bf4 } f4 e4 | ef4 ef2 d4 | \tuplet 3/2 { df4 df4 f4 } c4 df4 | ef1 |
  \break
  \tuplet 3/2 { df4 df4 f4 } c4 df4 | ef4 f4 g4 af4 | df2 g,2 | af1 |
  
  \bar "||"
  \break

  \mark \markup{ \box "B" }
  
  bf4 ef,4 f4. ef8 | bf'8 ef,8 f2 ef4 | af4 af4 af4 gf8 af8 | f1 |
  \break
  c'4 f,4 g4. f8 | c'8 f,8 g2 f4 | \tuplet 3/2 { bf4 bf4 bf4 } bf4 af4 | g2. gf4 |
  
  \bar "||"
  \break

  \mark \markup{ \box "A3" }

  \tuplet 3/2 { f4 f4 bf4 } f4 e4 | ef4 ef2 d4 | \tuplet 3/2 { df4 df4 f4 } c4 df4 | ef1 |
  \break
  \tuplet 3/2 { df4 df4 f4 } c4 df4 | ef4 f4 g4 af4 | df2 g,2 | af2. r4 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
