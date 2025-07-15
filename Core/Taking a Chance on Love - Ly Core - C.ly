%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Taking a Chance on Love"
  subtitle = \instrument
  poet = "John LaTouche & Ted Fetter"
  composer = "Vernon Duke"
  copyright = \markup \small "© 1940 Leo Feist, Inc."
}

refrainLyrics = \lyricmode {
Here I go a -- gain. __ I hear those trum -- pets blow a -- gain. __
All a -- glow a -- gain, __ tak -- ing a chance on love.

Here I slide a -- gain, __ a -- bout to take that ride a -- gain. __
Star -- ry eyed a -- gain, __ tak -- ing a chance on love.

I thought the cards __ were a frame -- up __ I nev -- er would try.
But now I'm tak -- ing the game up and the ace of hearts is high.

Things are mend -- ing now, __ I see a rain -- bow bend -- ing now. __
We'll have our hap -- py end -- ing now, __ tak -- ing a chance on love.
}

refrainChords = \chordmode {
  c2:maj7 \chordInsideParens{ cs2:dim7 } d1:m7 g1:7 c1:maj7
  a1:m7 d1:9 d2:m7 g2:7 e4:m7 ef4:7 d4:m7 g4:7

  c2:maj7 \chordInsideParens{ cs2:dim7 } d1:m7 g1:7 c1:maj7
  a1:m7 d1:9 d2:m7 g2:7 c1:6
  
  g2:m7 c2:9 f2:6 \chordInsideParens{ fs2:dim7 } g2:m7 c2:7 f1:maj7
  f2:m7 bf2:9 ef2:6 e2:dim7 f2:m7 af2:7 g1:7

  c2:maj7 \chordInsideParens{ cs2:dim7 } d1:m7 g1:7 c1:maj7
  a1:m7 d1:9 d2:m7 g2:7 c2:6
  \chordOpenParen{ d4:m7 }
  \chordCloseParen{ g4:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Ethel Waters 1940]" 4 = 130

  \sectStart "A1"
  
  r4 g2 g4 | g4 f8 f8~ f2 | r8 f8 e8 f8 d'4 f,4 | f4 e8 e8~ e2 |
  \break
  r4 e2 e4 | e4 d8 d8~ d2 | \tuplet 3/2 { c4 d4 c4 } b4 a'4 | g1 |
  
  \sect "A2"

  r4 g2 g4 | g4 f8 f8~ f2 | r8 f8 e8 f8 d'4 f,4 | f4 e8 e8~ e2 |
  \break
  r4 e2 e4 | e4 d8 d8~ d2 | \tuplet 3/2 { c4 d4 c4 } b4 d4 | c2. c4 |
  
  \sect "B"
  
  bf'4 c8 d8~ d8 c8 bf4 | d4. a8~ a4 c4 | c4. g8~ g4 bf4 | a2. c,4 |
  af'4 bf8 c8~ c8 bf8 af4 | c4. g8~ g4 bf8 a8 | bf4 f4 af4 ef4 | g1 |
  
  \sect "A3"

  r4 g2 g4 | g4 f8 f8~ f2 | r8 f8 e8 f8 d'4 f,4 | f4 e8 e8~ e2 |
  \break
  r8 e8 a8 c8 e4 e4 | e4 d8 d8~ d2 | \tuplet 3/2 { c4 d4 c4 } b4 d4 | c2 r2 |
  
  \bar "|."

  \xPageBreak
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup {
  \column 
  \bold
  {
   \vspace #2
   \line { \large { Verse 2 } }
   \vspace #12
   \line { \large { Verse 3 } }
   }
  \column
  {
    \hspace #4
    }
  \column 
  {
   \vspace #2
   \line { \large { Here I come again. I’m gonna make things hum again, } }
   \line { \large { Acting dumb again taking a chance on Love. } }
   \vspace #1
   \line { \large { Here I stand again. about to beat the band again, } }
   \line { \large { Feeling grand again, taking a chance on Love. } }
   \vspace #1
   \line { \large { I never dreamed in my slumbers and bets were taboo. } }
   \line { \large { But now I’m playing the numbers on a little dream for two. } }
   \vspace #1
   \line { \large { Wading in again, I’m leading with my chin again, } }
   \line { \large { I’m starting out to win again taking a chance on Love. } }
   \vspace #2
   \line { \large { Here I slip again, About to take that tip again } }
   \line { \large { Got my grip again taking a chance on Love. } }
   \vspace #1
   \line { \large { Now I prove again that I can make life move again, } }
   \line { \large { In the groove again taking a chance on Love. } }
   \vspace #1
   \line { \large { I walk around with a horseshoe in clover I lie. } }
   \line { \large { And brother rabbit, of course you better kiss your foot goodbye. } }
   \vspace #1
   \line { \large { On the ball again, I’m riding for a fall again, } }
   \line { \large { I’m gonna give my all again taking a chance on Love. } }
 }
}

