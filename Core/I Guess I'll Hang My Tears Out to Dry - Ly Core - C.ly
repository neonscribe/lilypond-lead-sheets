%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "I Guess I'll Hang My Tears Out to Dry"
  subtitle = \instrument
  poet = "Sammy Cahn"
  composer = "Jule Styne"
  copyright = \markup \small { \now " " "© 1944 Cahn Music Company and Chappell & Co." }
}

refrainObjectGenderFemaleLyrics = \lyricmode {
When I want rain __ I get sun -- ny weath -- er.
I'm just as blue as the sky. __
Since love is gone, __ can't pull my -- self to -- geth -- er.
Guess I'll hang my tears out to dry. __

Friends ask me out, __ I tell them I'm bus -- y.
Must get a new al -- i -- bi. __
I stay at home __ and ask my -- self, “Where is she?”
Guess I'll hang my tears out to dry. __

Dry, lit -- tle tear drops, my lit -- tle tear drops,
hang -- ing on a string of dreams.
Fly, lit -- tle mem -- 'ries, my lit -- tle mem -- 'ries
re -- mind her of our cra -- zy schemes.

Some -- bod -- y said __ just for -- get a -- bout her.
I gave that treat -- ment a try. __
Strange -- ly e -- nough, __ I got a -- long with -- out her,
then one day she passed me right by. __
Oh well,
I guess I'll hang my tears out to dry. __
}

refrainObjectGenderMaleLyrics = \lyricmode {
When I want rain __ I get sun -- ny weath -- er.
I'm just as blue as the sky. __
Since love is gone, __ can't pull my -- self to -- geth -- er.
Guess I'll hang my tears out to dry. __

Friends ask me out, __ I tell them I'm bus -- y.
Must get a new al -- i -- bi. __
I stay at home __ and ask my -- self, “Where is he?”
Guess I'll hang my tears out to dry. __

Dry, lit -- tle tear drops, my lit -- tle tear drops,
hang -- ing on a string of dreams.
Fly, lit -- tle mem -- 'ries, my lit -- tle mem -- 'ries
re -- mind him of our cra -- zy schemes.

Some -- bod -- y said __ just for -- get a -- bout him.
I gave that treat -- ment a try. __
Strange -- ly e -- nough, __ I got a -- long with -- out him,
then one day he passed me right by. __
Oh well,
I guess I'll hang my tears out to dry. __
}

refrainLyrics =
#(if (and (defined? 'objectGenderMale) objectGenderMale)
  refrainObjectGenderMaleLyrics
  refrainObjectGenderFemaleLyrics)

refrainChords = \chordmode {
  e2:m7 ef2:m7 d2:m7 g2:7.5+ c2:maj7 a2:m7 d2:m7 g2:7
  g2:m7 c2:7 f2:maj7 bf2:9 c2:maj7 d4:m7 d4:m7.5- c2:6 g2:7

  e2:m7 ef2:m7 d2:m7 g2:7.5+ c2:maj7 a2:m7 d2:m7 g2:7
  g2:m7 c2:7 f2:maj7 bf2:9 c2:maj7 d2:m7/g c1:6
  
  g2:m7 c2:7 g2:m7 c2:7 f2:maj7 c2:7.5+ f1:6
  e2:m7 a2:7 e2:m7.5- a2:7 d2:m7 af2:7.5- g1:7

  e2:m7 ef2:m7 d2:m7 g2:7.5+ c2:maj7 a2:m7 d2:m7 g2:7
  g2:m7 c2:7.9- f2:maj7 bf2:9 a2:m7 a2:m7/g fs2:m7.5- b2:7
  e2.:m7 ef4:m7 d2:m7 d2:m7/g c1:6
  \chordOpenParen{ d2:m7 }
  \chordCloseParen{ g2:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 120

  \sectStart "A1"

  d'8 d8 d8 df8~ df2 | c8 d,8 e8 f8 g8 a4. | r8 bf8 bf8 bf8 a8 c,8 d8 e8~ | e1 |
  \break
  a8 a8 g8 a8~ a4. bf8 | b8 c8 b,8 c8 e8 d4. | e8 c8 d8 c8 e8 c8 c8 c8~ | c2. r4 |
  
  \sect "A2"

  d'8 d8 d8 df8~ df2 | c8 d,8 e8 f8 g8 a4. | r8 bf8 bf8 bf8 a8 c,8 d8 e8~ | e1 |
  \break
  a8 a8 g8 a8~ a4. bf8 | b8 c8 b,8 c8 e8 d4. | e8 c8 d8 c8 e8 c8 c8 c8~ | c1 |
  \bar "||"
  
  \xPageBreak

  \sectNoBar "B"
  
  bf'4 c8 c8 bf4 c4 | bf4 c8 c8 bf4 c4 | a8 g8 f8 e8 d4 d4 | d1 |
  \break
  g4 a8 a8 g8 a4. | g4 a8 a8 g8 a4 gs8 | a8 g8 f8 e8 d4 d4 | d1 |
  
  \sect "A3"

  d'8 d8 d8 df8~ df2 | c8 d,8 e8 f8 g8 a4. | r8 bf8 bf8 bf8 a8 c,8 d8 e8~ | e1 |
  \break
  a8 a8 g8 a8~ a4. bf8 | b8 c8 b,8 c8 e8 d4. | e8 c8 d8 c8 e8 g8 a8 b8~ | b2. c4 |
  \break
  d2. df4 | c8 c,8 c8 c8 e8 c8 c8 c8~ | c1~ | c2. r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
