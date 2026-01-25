%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Let's Do It (Let's Fall in Love)"
  subtitle = \instrument
  poet = ""
  composer = "Cole Porter"
  copyright = \markup \small { \now " " "© 1928 Harms, Inc." }
}

refrainLyrics = \lyricmode {
Birds do it, bees do it.
Ev -- en ed -- u -- ca -- ted fleas do it.
Let's do it, let's fall in love.
In Spain the best up -- per sets do it.
Lith -- u -- an -- i -- ans and Letts do it.
Let's do it, let's fall in love.
The Dutch in old Am -- ster -- dam do it.
Not to men -- tion the Finns.
Folks in Si -- am do it.
Think of Si -- am -- ese twins.
Some Ar -- gen -- tines, with -- out means, do it.
Peo -- ple say in Bos -- ton ev -- en beans do it.
Let's do it, let's fall in love.

(Ro -- man -- tic)
}

refrainChords = \chordmode {
  bf2:6 b2:dim7 c2:m7 f2:7 bf2:6 bf2:7 ef2:6 ef2:m6
  d2:m7 g2:7.9- c2:m7 f2:7 d2:7.5+ g2:7.9- c2:9 f2:9.5+

  bf2:6 b2:dim7 c2:m7 f2:7 bf2:6 bf2:7 ef2:6 ef2:m6
  d2:m7 g2:7.9- c2:m7 f2:7 bf2:6 ef2:7 bf2:6 d2:7.5+
  
  g1:m6 c2:m7 c2:m6 d1:m7 f2:m7 bf2:7.9-
  ef1:6 ef2:m7 af2:7 df1:6 c2:m7 f2:9.5+

  bf2:6 b2:dim7 c2:m7 f2:7 bf2:6 bf2:7 ef1:7
  bf2:6/d g2:7 c2:m7 f2:7.9- bf1:6
  \chordOpenParen{ c2:m7 }
  \chordCloseParen{ f2:9.5+ }
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
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Eartha Kitt 1957]" 4 = 97

  \sectStart "A1"
  
  g4 r4 gf8 f4. | g4 r4 gf8 f4. | r4 g8 fs8 g8 a8 bf8 b8 | c4 r4 b8 bf4. |
  g4 r4 gf8 f4. | g4 r4 gf8 f4. | d1 | r4 g4 g4 g4 |
  
  \sect "A2"
  
  g4 r4 gf8 f4. | g4 r4 gf8 f4. | r4 g8 fs8 g8 a8 bf8 b8 | c4 r4 b8 bf4. |
  g4 r4 gf8 f4. | g4 r4 gf8 f4. | bf1 | r4 bf4 bf4 bf4 |
  
  \sect "B"
  
  bf2 a8 g4. | bf2 a8 g4. | r4 a8 gs8 a8 g8 f4 | af1 |
  g2 f8 ef4. | g2 f8 ef4. | r4 f8 e8 f8 ef8 df4 | f4 g4 g4 g4 |

  \sect "A3"

  g4 r4 gf8 f4. | g4 r4 gf8 f4. | g8 fs8 g8 a8 bf8 a8 bf8 c8 | df4 r4 c8 bf4. |
  d4 r4 c8 bf4. | ef4 r4 d8 c4. | bf1 | r4
  \override Parentheses.font-size = #5
  \startParenthesis \parenthesize
  g4 g4
  \endParenthesis \parenthesize g4 |
  
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\pageBreak

\markup {
  \column 
  {
    \vspace #2
    \line { \large { Birds do it, bees do it. Even educated fleas do it } }
    \line { \large { Let's do it, let's fall in love. } }
    \line { \large { In Spain the best upper sets do it. Lithuanians and Letts do it. } }
    \line { \large { Let's do it, let's fall in love. } }
    \line { \large { The Dutch in old Amsterdam do it, not to mention the Finns. } }
    \line { \large { Folks in Siam do it -- think of Siamese twins. } }
    \line { \large { Some Argentines, without means, do it. They say in Boston even beans do it. } }
    \line { \large { Let's do it, let's fall in love. } }
    \vspace #1
    \line { \large { Romantic sponges, they say, do it. Oysters down in Oyster Bay do it. } }
    \line { \large { Let's do it, let's fall in love } }
    \line { \large { Cold Cape Cod clams, 'gainst their wish, do it. Even lazy jellyfish do it. } }
    \line { \large { Let's do it, let's fall in love. } }
    \line { \large { Electric eels, I might add, do it, though it shocks 'em, I know. } }
    \line { \large { Why ask if shad do it? Waiter, bring me shad roe! } }
    \line { \large { In shallow shoals, English soles do it. Goldfish in the privacy of bowls do it. } }
    \line { \large { Let's do it, let's fall in love. } }
    \vspace #1
    \line { \large { Mosquitos, heaven forbid, do it. So does every katydid do it. } }
    \line { \large { Let's do it, let's fall in love. } }
    \line { \large { Dragonflies in the reeds do it. Sentimental centipedes do it. } }
    \line { \large { Let's do it, let's fall in love } }
    \line { \large { The most refined ladybugs do it when a gentleman calls. } }
    \line { \large { Moths in your rugs do it. What's the use of moth balls? } }
    \line { \large { The locusts up in the trees do it. Even over-educated fleas do it. } }
    \line { \large { Let's do it, let's fall in love. } }
    \vspace #1
    \line { \large { The chimpanzees in the zoo do it. Some courageous kangaroos do it. } }
    \line { \large { Let's do it, let's fall in love. } }
    \line { \large { I'm sure giraffes on the sly do it. Heavy hippopotami do it. } }
    \line { \large { Let's do it, let's fall in love } }
    \line { \large { Sloths who hang down from the twigs do it, though the effort is great. } }
    \line { \large { Sweet guinea pigs do it -- buy a couple and wait! } }
    \line { \large { The world admits bears in pits do it. Even Pekingeses in the Ritz do it. } }
    \line { \large { Let's do it, let's fall in love. } }
  }
}




