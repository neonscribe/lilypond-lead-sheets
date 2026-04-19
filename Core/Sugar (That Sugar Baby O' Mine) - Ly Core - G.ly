%% -*- Mode: LilyPond -*-

%{

"Customizer": { "toggles": [ "femaleSinger" ] }

%}

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "Sugar (That Sugar Baby O' Mine)"
  subtitle = \instrument
  poet = "Sidney Mitchell and Edna Alexander"
  composer = "Maceo Pinkard"
  copyright = \markup \small { \now " " "© 1927 Robbins Music Corporation" }
}

refrainMaleSingerLyrics = \lyricmode {
Sug -- ar, I call my ba -- by my sug -- ar.
I nev -- er may -- be my sug -- ar,
that's why my ba -- by is so con -- fec -- tion -- er -- y.

Fun -- ny, she nev -- er pleads for my mo -- ney,
but when she feeds me on hon -- ey, she gets her needs ev -- 'ry -- time. __

I'd make a mil -- lion trips __ to her lips __ if I were a bee,
'cause they are sweet -- er than __ an -- y can -- dy to me.

She's gran -- u -- lat -- ed sug -- ar, I nev -- er cheat __ on my sug -- ar,
'cause I'm too sweet __ on my sug -- ar, that sug -- ar ba -- by o' mine. __
}

refrainFemaleSingerLyrics = \lyricmode {
Sug -- ar, I call my ba -- by my sug -- ar.
I nev -- er may -- be my sug -- ar,
that's why my ba -- by is so con -- fec -- tion -- er -- y.

Fun -- ny, I nev -- er plead for his mo -- ney,
'cause when I feed him on hon -- ey, I get my needs ev -- 'ry -- time. __

I'd make a mil -- lion trips __ to his lips __ if I were a bee,
'cause they are sweet -- er than __ an -- y can -- dy to me.

He's gran -- u -- lat -- ed sug -- ar, I nev -- er cheat __ on my sug -- ar,
'cause I'm too sweet __ on my sug -- ar, that sug -- ar ba -- by o' mine. __
}

refrainLyrics =
#(if (and (defined? 'femaleSinger) femaleSinger)
  refrainFemaleSingerLyrics
  refrainMaleSingerLyrics)

refrainDjypsyDjamChords = \chordmode {
  g2 e2:7 a2:7 d2:7 g2:maj7 d2:7.5+ g2 bf2:dim7
  a2:m7 gs2:dim7 d2:7 d2:7.5+ g2:6 e2:7 a2:m7 d2:7

  g2 e2:7 a2:7 d2:7 g2:maj7 d2:7.5+ g2 g2:m
  d2 ds2:dim7 e2:m7 a2:7 d4:7 \chordSlash 1 a4:m7 gs4:dim7 d2:7/a d2:7
  
  g1:7 d1:m7 g1:7 g1:7 c1 g1:7 c1:m7 d1:7

  g2 e2:7 a2:7 d2:7 g2:maj7 d2:7.5+ g1
  a2:m7 gs2:dim7 d1:7 g1:6
  \chordOpenParen{ a2:m7 }
  \chordCloseParen{ d2:7 }
}

refrainChords = \refrainDjypsyDjamChords

refrainKey = g

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
  \tempoFour "Medium [Peggy Lee 1955]" 108

  \sectStart "A1"
  
  b2 b2 | a8 as8 b8 a8~ a8 as8 b4 | fs2 fs2 | e8 es8 fs8 e8~ e8 es8 fs4 |
  e2 e2 | d8 ds8 e8 d8~ d8 ds8 e4 | b'2. e,4 | c'8 d4 b8~ b4 a4 |
  
  \sect "A2"
  
  b2 b2 | a8 as8 b8 a8~ a8 as8 b4 | fs2 fs2 | e8 es8 fs8 e8~ e8 es8 fs4 |
  a2 a2 | a8 as8 b8 a8~ a8 as8 b4 | d1~ | d4 b4 c4 cs4 |
  
  \sect "B"
  
  d8 d4 d8~ d2 | c8 c4 c8~ c2 | r4 b8 b8~ b8 d8 b4 | a4 g4 a4 b4 |
  c8 c4 c8~ c2 | b8 b4 b8~ b8 e8 b4 | a2. a4 | b8 a4 fs8~ fs4 d4 |

  \sect "A3"

  b'2 b2 | a8 as8 b8 a8~ a8 as8 b4 | fs2 fs2 | e8 es8 fs8 e8~ e8 es8 fs4 |
  e2 e2 | a8 as8 b8 d8~ d8 as8 b4 | g1~ | g4 r4 r2
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
