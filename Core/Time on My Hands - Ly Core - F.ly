%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Time on My Hands (You in My Arms)"
  subtitle = \instrument
  poet = "Harold Adamson and Mack Gordon"
  composer = "Vincent Youmans"
  copyright = \markup \small "© 1930 Vincent Youmans, Inc."
}

refrainLyrics = \lyricmode {
Time on my hands, __ you in my arms. __ No -- thing but love __ in view. __
Then if you fall, __ once and for all, __ I'll see my dreams __ come true. __
Mo -- ments to spare __ for some -- one you care __ for; one love af -- fair __ for two. __
WIth time on my hands __ and you in my arms, __ and love in my heart all for you. __
}

refrainChords = \chordmode {
  f2 f2:maj7 f1:maj7 e1:7 e1:7
  g1:m7 g2:m7 bf2:m6 c2:7 cs2:dim7/c c2:9 c2:7
  
  f2 f2:maj7 f1:maj7 e1:7 e1:7
  g1:m7 g2:m7 bf2:7 a2:7 a2:6 a2:aug a2
  
  d1:7 d1:7 g2.:9 g4*3:m7 c2:7
  f2 d2:m7 g1:7 c1:9 c2:9 cs4:m c4:9

  f2 f2*2:maj7 f2 d1:7 d1:7 d2:m7/g
  g2:7 c2:9 c2:7 f2
  \chordOpenParen{ d2:m7 }
  g2:7
  \chordCloseParen{ c2:7 }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad [Billy Holiday 1940]" 4 = 80

  \sectStart "A1"
  
  \tuplet 3/2 { e4 f4 d4 } e2~ | e2. r4 | \tuplet 3/2 { e4 f4 d4 } e2~ | e2. r4 |
  \break
  \tuplet 3/2 { d4 e4 c4 } d2~ | d2 f2 | a1~ | a2. r4 |
  
  \sect "A2"
  
  \tuplet 3/2 { e4 f4 d4 } e2~ | e2. r4 | \tuplet 3/2 { e4 f4 d4 } e2~ | e2. r4 |
  \break
  \tuplet 3/2 { d4 e4 c4 } d2~ | d2 f2 | a1~ | a2. r4 |
  
  \sect "B"
  
  \tuplet 3/2 { bf4 c4 a4 } bf2~ | bf2 c2 | cs4 e4 d4 c4~ | c2 a2 |
  \break
  \tuplet 3/2 { g4 a4 f4 } g2~ | g2 e2 | d1~ | d4 r4 r4 a'4 |
  
  \sect "A3"

  \tuplet 3/2 { e4 f4 d4 } e2~ | e2 f2 | \tuplet 3/2 { bf4 c4 a4 } bf2~ | bf2 c2 |
  \break
  \tuplet 3/2 { cs4 e4 d4 } a2 | a2 a2 | f1~ | f4 r4 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
