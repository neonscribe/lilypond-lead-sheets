%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Here's That Rainy Day"
  subtitle = \instrument
  poet = "Johnny Burke"
  composer = "Jimmy Van Heusen"
  copyright = "© 1949 Burke & Van Heusen, Inc."
}

refrainLyrics = \lyricmode {
May -- be I should have saved those left -- o -- ver dreams,
fun -- ny but here's that rain -- y day. __
Here's that rain -- y day they told me a -- bout,
and I laughed at the thought that it might turn out this way. __
Where is that worn out wish that I threw a -- side,
af -- ter it brought my lov -- er near? __
Fun -- ny how love be -- comes a cold, rain -- y day.
Fun -- ny that rain -- y day is here.
}

refrainChords = \chordmode {
  g1:maj7 bf1:7 ef1:maj7 af1:maj7
  a1:m7 d1:7 g1:maj7 d2:m7 g2:7
  
  c1:m7 f1:7 bf1:maj7 ef1:maj7
  a1:m7 d1:7 g1:maj7 a2:m7 d2:7

  g1:maj7 bf1:7 ef1:maj7 af1:maj7
  a1:m7 d1:7 g1:maj7 d2:m7 g2:7
  
  c1:maj7 a2:m7 d2:7 b2:m7 e2:m7 a1:7
  a1:m7 d1:7 g1:6
  \chordOpenParen{ a2:m7 }
  \chordCloseParen{ d2:7 }
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad" 4 = 65

  \xTextMark \markup{ \bold \box "A1" }
  
  d4 d2 d4 | d4 f4 bf4 d4 | d2 c4. b8 | c1 |
  \break
  d,4 d2 d4 | d4 f4 a4 c4 | b1~ | b2. r4 |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  ef2 ef2 | ef4 g,4 af4 a4 | d2 f,4 fs4 | g2 f4 g4 |
  \break
  c4 c8 c8 c4 c8 c8 | c4 e,4 es4 fs4 | b1~ | b2. r4 |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  d,4 d2 d4 | d4 f4 bf4 d4 | d2 c4. b8 | c1 |
  \break
  d,4 d2 d4 | d4 f4 a4 c4 | b1~ | b2. r4 |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "C" }
  
  e4 e2 e4 | e4 a,4 b4 c4 | d2 fs,4 g4 | a1 |
  \break
  d,4 d2 d4 | d4 fs4 a4 b4 | g1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
