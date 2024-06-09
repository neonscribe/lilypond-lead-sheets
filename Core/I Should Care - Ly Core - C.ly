%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "I Should Care"
  subtitle = \instrument
  poet = ""
  composer = "Sammy Cahn, Axel Stordahl and Paul Weston"
  copyright = "© 1944 Dorsey Brothers Music, Inc."
}

refrainLyrics = \lyricmode {
I should care, I should go a -- round weep -- ing,
I should care, I should go with -- out sleep -- ing;
Strange -- ly e -- nough I sleep well
'cept for a dream or two,
But, then I count my sheep well, Fun -- ny how sheep can lull you to sleep.
So, I should care, I should let it up -- set me,
I should care, but it just does -- n't get me;
May -- be I won't find some -- one as love -- ly as you,
but I should care and I do. __
}

refrainChords = \chordmode {
  d2:m7 g2:7 e2:m7 a2:7 d2:m7 g2:7 c1:maj7
  e1:m7.5- a1:7 d1:m7 f2:m7 bf2:7
  
  c1:maj7 b2:m7.5- e2:7 g2:m7 c2:7 f1:maj7
  b2:m7.5- e2:7.9- a1:m7 d1:7 d2:m7 g2:7

  d2:m7 g2:7 e2:m7 a2:7 d2:m7 g2:7 c1:maj7
  e1:m7.5- a1:7 d1:m7 f2:m7 bf2:7
  
  c1:maj7 b2:m7.5- e2:7 a1:m7 d1:7
  d1:m7 g1:7
  c2:6
  \chordOpenParen{ f2:maj7 }
  e2:m7
  \chordCloseParen{ a2:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad" 4 = 100

  \textMark \markup{ \bold \box "A1" }
  
  c'2. b4 | b1 | r4 a8 b8 \tuplet 3/2 { c4 b4 a4 } | b4 b2. |
  \break
  bf2. e,4 | a1 | r4 e8 f8 \tuplet 3/2 { g4 d4 e4 } | f4 f2. |
  
  \bar "||"
  \break

  \textMark \markup{ \bold \box "B" }
  
  \tuplet 3/2 { e4 f4 e4 } f4 e4 | e4 e2. | \tuplet 3/2 { e4 f4 e4 } f4 e4 | e1 |
  \break
  \tuplet 3/2 { d4 e4 d4 } f4 e4 | c4 c2. | 
  \tuplet 3/2 { d4 e4 c4 } d4 e4 | \tuplet 3/2 { a4 b4 g4 } a4 b4 |
  
  \bar "||"
  \break

  \textMark \markup{ \bold \box "A2" }
  
  c2. b4 | b1 | r4 a8 b8 \tuplet 3/2 { c4 b4 a4 } | b4 b2. |
  \break
  bf2. e,4 | a1 | r4 e8 f8 \tuplet 3/2 { g4 d4 e4 } | f4 f2. |
  
  \bar "||"
  \break

  \textMark \markup{ \bold \box "C" }

  \tuplet 3/2 { e4 f4 e4 } f4 e4 | g4 f2 e4 | b'4 gs2 a4 | d2. df4 |
  \break
  c2. a4 | b2. a8 b8 | c1~ | c2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
