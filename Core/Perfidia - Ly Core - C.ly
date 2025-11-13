%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Perfidia"
  subtitle = \instrument
  poet = "Milton Leeds"
  composer = "Alberto Dominguez"
  copyright = \markup \small { \now " " "© 1939 Southern Music Publishing Co., Inc." }
}

refrainLyrics = \lyricmode {
To you, __ my heart cries out, “Per -- fi -- di -- a,” __
for I found you, the love of my life, in some -- bod -- y el -- se's arms. __

Your eyes __ are echo -- o -- ing, “Per -- fi -- di -- a.” __
For -- get -- ful of our pro -- mise of love, you're shar -- ing an -- oth -- er's charms. __

With a sad la -- ment, my dreams have fad -- ed like a bro -- ken mel -- o -- dy, __
while the gods of love look down and laugh at what ro -- man -- tic fools we mor -- tals be. __

And now __ I know my love was not for you, __ and so I'll take it back with a sigh,
per -- fi -- di -- ous one good -- bye. __

(To)
}

refrainChords = \chordmode {
  s4

  c2 a2:m7 d2:m7 g2:7 c2 a2:m7 d2:m7 g2:7
  c2 a2:m7 d1:m7 e1 d2:m7 g2:7

  c2 a2:m7 d2:m7 g2:7 c2 a2:m7 d2:m7 g2:7
  c2 a2:m7 d1:m7 e1 e1
  
  d1:m d1:m e1 e1
  d1:m d1:m e1 e2 g2:7

  c2 a2:m7 d2:m7 g2:7 c2 a2:m7 d2:m7 g2:7
  c2 a2:m7 d2:m7 g2:7 c1
  \chordOpenParen{ d2:m7 }
  \chordCloseParen{ g2:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Latin [Xavier Cugat 1939]" 4 = 145

  \partial 4 g4 |
  \bar "||"

  \sectStart "A1"
  
  c1~ | c4. b8 c8 d8 c8 b8 | \tuplet 3/2 { c4 b4 a4~ } a2~ | a4. b8 c8 d8 c8 b8 |
  \break
  \tuplet 3/2 { c4 b4 a4 } c4. a8 | \tuplet 3/2 { g4 f4 g4 } a4 f4 | e1~ | e2 r4 g4 |
  
  \sect "A2"

  c1~ | c4. b8 c8 d8 c8 b8 | \tuplet 3/2 { c4 b4 a4~ } a2~ | a4. b8 c8 d8 c8 b8 |
  \break
  \tuplet 3/2 { c4 b4 a4 } c4. a8 | \tuplet 3/2 { g4 f4 g4 } a4 f4 | e1~ | e2 r4 d8 e8 |
  
  \sect "B"
  
  f8 f8 f8 g8 a8 a8 a8 gs8 | a4. gs8 a8 gs8 a8 b8 | gs1~ | gs2 r4 b8 c8 |
  \break
  d8 d8 d8 c8 b8 b8 b8 c8 | b8 b8 b8 a8 g8 a8 g8 f8 | e1~ | e8 r8 r4 r4 g4 |
  
  \sect "A3"

  c1~ | c4. b8 c8 d8 c8 b8 | \tuplet 3/2 { c4 b4 a4~ } a2~ | a4. b8 c8 d8 c8 b8 |
  \break
  \tuplet 3/2 { c4 b4 a4 } c4. a8 | \tuplet 3/2 { g4 f4 g4 } a4 f4 | e1~ | e2 r4 
  \override Parentheses.font-size = #5
  \parenthesize g4 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
