%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Tea for Two"
  subtitle = \instrument
  poet = "Irving Caesar"
  composer = "Vincent Youmans"
  copyright = \markup \small "© 1924 HARMS Inc."
}

refrainLyrics = \lyricmode {
Pic -- ture you up -- ion my knee,
Just tea for two and two for tea,
Just me for you and you for me a -- lone. __

No -- bod -- y near us to see us or hear us,
No friends or re -- la -- tions on week -- end va -- ca -- tions,
We won't have it known, dear, that we own a tel -- e -- phone, dear.
Day will break and you'll a -- wake and start to bake a sug -- ar cake
For me to take for all the boys to see, __
We will raise a fam -- i -- ly,
A boy for you, a girl for me,
Oh, can't you see how hap -- py we would be.
}

refrainChords = \chordmode {
  bf2:m7 ef2:7 bf2:m7 ef2:7 af2:maj7 df2:7 c2:m7 b2:dim7
  bf2:m7 ef2:7bf2:m7 ef2:7 af1:maj7 af1:6
  
  d2:m7 g2:7 d2:m7 g2:7 c2:maj7 f2:7 e2:m7 ef2:dim7
  d2:m7 g2:7 d2:m7 g2:7 c1:maj7 ef1:7

  bf2:m7 ef2:7 bf2:m7 ef2:7 af2:maj7 df2:7 c2:m7 b2:dim7
  bf2:m7 ef2:7bf2:m7 ef2:7 c1:m7.5- f1:7.9-
  
  bf2:m7 c2:m7.5- f2:9.5+ f2:9 bf1:m7 df2:m7+ df2:m6
  f2:m7/c b2:dim7 bf2:m7 ef2:7 af1:6
  \chordOpenParen{ c2:m7 }
  \chordCloseParen{ f2:7.9- }
}

refrainKey = af

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Benny Goodman 1937]" 4 = 128

  \xTextMark \markup{ \bold \box "A1" }
  
  af4. f8 g4. f8 | af4. f8 g4. ef8 | g4. ef8 f4. ef8 | g4. ef8 f4. ef8 |
  \break
  af4. f8 g4. f8 | af4. f8 g4. ef8 | c'1~ | c2 r2 |
  
  \sect "B"
  
  c4 c8 a8 b4 b8 a8 | c4 c8 a8 b4 b8 g8 | b4 b8 g8 a4 a8 g8 | b4 b8 g8 a4 a8 g8 |
  \break
  c4 c8 a8 b4 b8 a8 | c4 c8 a8 b4 b4 | e1 | ef2 r2 |
  

  \sect "A2"
  
  af,4. f8 g4. f8 | af4. f8 g4. ef8 | g4. ef8 f4. ef8 | g4. ef8 f4. ef8 |
  \break
  af4. f8 g4. f8 | af4. f8 g4. ef8 | ef'1~ | ef2 r2 |

  \sect "C"
  
  f4. f8 ef4. ef8 | df4. df8 c4. c8 | ef4. ef8 df4. df8 | c4. c8 bf4. bf8 |
  \break
  af4. f8 g4. f8 | af4. f8 g4. c8 | af1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
