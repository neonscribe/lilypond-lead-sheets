%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "On the Street Where You Live"
  subtitle = \instrument
  poet = "Alan Jay Lerner"
  composer = "Frederick Loewe"
  copyright = \markup \small { \now " " "© 1956 Alan Jay Lerner and Frederick Loewe" }
}

refrainLyrics = \lyricmode {
I have of -- ten walked __ down this street be -- fore, __
but the pave -- ment al -- ways stayed be -- neath my feet be -- fore. __
All at once am I __ sev -- 'ral stor -- ies high. __
Know -- ing I'm on the street where you live. __
Are there li -- lac trees __ in the heart of town? __
Can you hear a lark in an -- y oth -- er part of town? __
Does en -- chant -- ment pour __ out of ev -- 'ry door? __
No, it's just on the street where you live! __
And oh! __ The to -- wer -- ing feel -- ing __
just to know __ some -- how you are near. __
The o -- ver -- po -- wer -- ing feel -- ing __
that an -- y se -- cond you may sud -- den -- ly ap -- pear! __
Peo -- ple stop and stare. __ They don't both -- er me. __
For there's no where else on earth that I would rath -- er be. __
Let the time go by, __ I won't care if I __
can be here on the street where you live. __
}

refrainChords = \chordmode {
  s2
  
  bf2:maj7 g2:m7 c2:m7 f2:7 bf2:maj7 g2:m7 c2:m7 f2:7 
  bf2:maj7 ef2:9.11+ d2:m7 df2:dim7 c1:m7 f2:7 g2:7
  c1:m7 af1:9.11+ bf1:maj7 g1:m7
  c1:7 f1:7 d2:m7 g2:7 c2:m7 f2:7

  bf2:maj7 g2:m7 c2:m7 f2:7 bf2:maj7 g2:m7 c2:m7 f2:7 
  bf2:maj7 ef2:9.11+ d2:m7 df2:dim7 c1:m7 f2:7 g2:7
  c1:m7 af1:9.11+ bf1:maj7 g1:m7
  c1:7 f1:7 bf2:6 c2:m7 cs2:dim7 bf2/d
  
  a1:m7 d1:7 ef1:6 ef1:6 af1:7 af2:7 df2:dim7 bf1:6 bf1:6
  e1:m7.5- e1:m7.5- a1:7 a1:7 d2:maj7 a2:7/cs a2:m/c c2:7 f1:7 f1:7

  bf2:maj7 g2:m7 c2:m7 f2:7 bf2:maj7 g2:m7 c2:m7 f2:7 
  bf2:maj7 ef2:9.11+ d2:m7 df2:dim7 c1:m7 f2:7 g2:7
  c1:m7 af1:9.11+ bf1:maj7 g1:m7
  c1:7 f1:7 bf1:6
  \chordOpenParen{ c2:m7 }
  \chordCloseParen{ f2:7 }
}

refrainKey = bf

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Bobby Darin 1965]" 4 = 118

  \partial 2 bf,4 c4 |
  \bar "||"

  \sectNoBreak "A1"
  
  d4 g4 g2~ | g4 r4 f4 ef4 | d4 bf4 bf2~ | bf4 r4 bf4 c4 |
  \break
  d4 a'4 a4 a4 | a4 bf4 a4 bf4 | g4 f4 f2~ | f4 r4 c4 d4 |
  \break
  ef4 d'4 d2~ | d4 r4 c4 d4 | c4 bf4 bf2~ | bf4 r4 d4 c4 |
  \break
  bf2 c4 bf4 | a2 bf4 a4 | g1~ | g4 r4 bf,4 c4 |
  
  \sect "A2"

  d4 g4 g2~ | g4 r4 f4 ef4 | d4 bf4 bf2~ | bf4 r4 bf4 c4 |
  \break
  d4 a'4 a4 a4 | a4 bf4 a4 bf4 | g4 f4 f2~ | f4 r4 c4 d4 |
  \break
  ef4 d'4 d2~ | d4 r4 c4 d4 | c4 bf4 bf2~ | bf4 r4 d4 c4 |
  \break
  bf2 c4 bf4 | a2 bf4 c4 | bf1~ | bf4 r4 r4 c4 |
  \bar "||"
  
  \xPageBreak

  \sectNoBar "B"
  
  d1~ | d4 c4 \tuplet 3/2 { c4 bf4 a4 } | c2 g2~ | g4 r4 a4 bf4 |
  \break
  c1~ | c4 bf4 \tuplet 3/2 { bf4 a4 g4 } | bf1~ | bf4 r4 r4 bf4 |
  \break
  bf1~ | bf4 a4 \tuplet 3/2 { a4 g4 fs4 } | a2 e2~ | e4 e4 fs4 g4 |
  \break
  a4 a4 a4 a4 | a4 e4 f4 g4 | a1~ | a4 r4 bf,4 c4 |
  
  \sect "A3"

  d4 g4 g2~ | g4 r4 f4 ef4 | d4 bf4 bf2~ | bf4 r4 bf4 c4 |
  \break
  d4 a'4 a4 a4 | a4 bf4 a4 bf4 | g4 f4 f2~ | f4 r4 c4 d4 |
  \break
  ef4 d'4 d2~ | d4 r4 ef4 d4 | c4 bf4 bf2~ | bf4 r4 d4 c4 |
  \break
  bf2 c4 bf4 | a2 bf4 c4 | bf1~ | bf2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
