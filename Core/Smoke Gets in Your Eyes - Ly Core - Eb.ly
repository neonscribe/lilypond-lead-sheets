%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "Smoke Gets in Your Eyes"
  subtitle = \instrument
  poet = "Otto Harbach"
  composer = "Jerome Kern"
  copyright = \markup \small "© 1933 T.B. Harms Company"
}

refrainLyrics = \lyricmode {
They asked me how I knew my true love was true. __
I, of course, re -- plied,
“Some -- thing here in -- side can -- not be de -- nied.” __
They said some -- day you'll find all who love are blind __
When your heart's on fire you must re -- al -- ize smoke gets in your eyes.
So I chaffed __ them and I gai -- ly laughed __ to think they could doubt my love.
Yet to -- day __ my love has flown a -- way. __ I am with -- out my love.
Now laugh -- ing friends de -- ride tears I can -- not hide. __
So i smile and say,
“When a love -- ly flame dies, smoke gets in your eyes.”
}

refrainChords = \chordmode {
  ef2 g4:m7 gf4:dim7 f2:m7 bf2:7 ef2:6 g2:7.5+ af2:maj7 a2:dim7
  g2:m7 c2:m7 f2:m7 bf2:7 df2:7 c2:7 f2:m7 bf2:7

  ef2 g4:m7 gf4:dim7 f2:m7 bf2:7 ef2:6 g2:7.5+ af2:maj7 a2:dim7
  g2:m7 c2:m7 f2:m7 bf2:7 ef1:6 df2:m7 gf2:7
  
  cf1:maj7 af1:m7 ef2:m7 af2:7 df2:m7 gf2:7
  cf1:maj7 af2:m7 bf2:7 ef2:m7 c2:7 f2:m7 bf2:7

  ef2 g4:m7 gf4:dim7 f2:m7 bf2:7 ef2:6 g2:7.5+ af2:maj7 a2:dim7
  g2:m7 c2:m7 f2:m7 bf2:7 ef2:6
  \chordOpenParen{ c2:m7 }
  f2:m7
  \chordCloseParen{ bf2:7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Up" 4 = 171

  \sectStart "A1"

  ef2 d8 f8 ef8 c8 | af'2 g8 bf8 af8 f8 | ef'1~ | ef2 f8 ef8 b8 c8 |
  %% \break
  d2 c8 bf8 c,8 ef8 | bf'2 c8 bf8 bf,8 c8 | g'1( | f1) |
  
  %% \break

  \sectNoBreak "A2"
  
  ef2 d8 f8 ef8 c8 | af'2 g8 bf8 af8 f8 | ef'1~ | ef2 f8 ef8 b8 c8 |
  %% \break
  d2 c8 bf8 c,8 ef8 | bf'2 c8 bf8 bf,8 c8 | ef'1 | r1 |
  
  \sect "B"
  
  ef,8 gf8 ef'4~ ef8 bf8 df8 cf8 |
  ef,8 gf8 bf4~ bf8 af8 \tuplet 3/2 { gf8 af,8 cf8 } |  gf'2 gf2 | gf1 |
  %% \break
  ef8 gf8 ef'4~ ef8 bf8 df8 cf8 |
  ef,8 gf8 bf4~ bf8 af8 g8 f8 | g2 g2 | f1 |
  
  %% \break

  \sectNoBreak "A3"

  ef2 d8 f8 ef8 c8 | af'2 g8 bf8 af8 f8 | ef'1~ | ef2 f8 ef8 b8 c8 |
  %% \break
  d2 c8 bf8 \tuplet 3/2 { c,8 ef8 g8 } | bf2 c8 bf8 bf,8 c8 | ef1 | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
