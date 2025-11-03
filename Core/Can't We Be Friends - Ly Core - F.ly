%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Can't We Be Friends"
  subtitle = \instrument
  poet = "Paul James"
  composer = "Kay Swift"
  copyright = \markup \small "© 1929 HARMS Inc."
}

refrainLyrics = \lyricmode {
I thought I'd found the man of my dreams.
Now it seems, this is how the stor -- y ends.
He's goin' to turn me down and say,
“Can't we be friends?”
I thought for once it could -- n't go wrong,
Not for long! I can see the way this ends.
He's goin' to turn me down and say
“Can't we be friends?”
Nev -- er a -- gain! Through with love,
Through with men!
They play their game with -- out shame,
And who's to blame?
I thought I'd found a man I could trust,
What a bust! This is how the stor -- y ends.
He's goin' to turn me down and say,
“Can't we be friends?”
}

refrainLyricsTwo = \lyricmode {
I thought I knew the wheat from the chaff,
What a laugh! This is how the stor -- y ends.
I let him turn me down and say,
“Can't we be friends?”
I act -- ed like a kid out of school,
What a fool! now I see the way this ends.
I let him turn me down and say,
“Can't we be friends?”
Why should I care,
Though he gave me the air?
Why should I cry,
Heave a sigh, and won -- der why?
I should have seen the sig -- nal to stop,
What a flop! This is how the stor -- y ends
I let him turn me down and say,
“Can't we be friends?”
}

refrainChords = \chordmode {
  g1:9 c2:7 g4:m7 gf4:9.5- f2:6 df2:7 f2:6 a4:m7 af4:m7
  g2:m7 c2:7 g2:9 c2:7 f4:6 bf4:9 f2:6 a2:m7 af2:m7

  g1:9 c2:7 g4:m7 gf4:9.5- f2:6 df2:7 f2:6 a4:m7 af4:m7
  g2:m7 c2:7 g2:9 c2:7 f4:6 bf4:9 f2:6 c2:m7 f2:7

  bf1:7 bf1:7 f2:maj9 f2:dim7 f2:maj9 b4:9.5- bf4:9 
  a2:m7.5- d4:7.9- df4:9.11+ c2:m7 c2:m7/bf a1:m7 d1:7

  g1:9 c2:7 g4:m7 gf4:9.5- f2:6 df2:7 f2:6 a4:m7 af4:m7
  g2:m7 c2:7 g2:9 c2:7 f4:6 bf4:9 f2:6
  \chordOpenParen{ a2:m7 }
  \chordCloseParen{ af2:m7 }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Ballad [Ella Fitzgerald 1958]" 4 = 90

  \sectStart "A1"
  
  a2 d,8 e8 f8 g8 | a8 bf8 c8 c8~ c2 | d4. f8 df2 | d8 c8 a8 f8 d8 df8~ df4 |
  c2~ c8 cs8 d8 f8 | a4 d8 a8~ a8 gs8 g4 | f8 g8 f8 f8~ f2 | r1 |
  \sectStart "A2"
  
  a2 d,8 e8 f8 g8 | a8 bf8 c8 c8~ c2 | d4. f8 df2 | d8 c8 a8 f8 d8 df8~ df4 |
  c2~ c8 cs8 d8 f8 | a4 d8 a8~ a8 gs8 g4 | f8 g8 f8 f8~ f2 | r1 |
  \bar "||"

  \xPageBreak
  
  \sectStart "B"
  
  d'2~ d8 ef8 e4 | f2~ f8 e4 d8 | c2~ c8 b4 bf8 | a4 c4 cs4 d4 |
  e2~ e8 fs,8 g8 bf8~ | bf4 bf4 c4 cs4 | d1 | r1 |

  \sect "A3"

  a2 d,8 e8 f8 g8 | a8 bf8 c8 c8~ c2 | d4. f8 df2 | d8 c8 a8 f8 d8 df8~ df4 |
  c2~ c8 cs8 d8 f8 | a4 d8 a8~ a8 gs8 g4 | f8 g8 f8 f8~ f2 | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
