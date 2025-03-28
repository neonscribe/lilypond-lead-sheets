%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "He'll Have to Go"
  subtitle = \instrument
  poet = ""
  composer = "Joe Allison and Audrey Allison"
  copyright = \markup \small "© 1959 Beechwood Music Corp."
}

refrainObjectGenderFemaleLyrics = \lyricmode {
Put your sweet lips __ a lit -- tle clos -- er __ to the phone. __
Let's pre -- tend that we're to -- geth -- er all a -- lone. __
I'll tell the man to turn the juke -- box way down low __
and you can tell your friend there with you, he'll have to go. __
Whis -- per to me, __ tell me do you love me true __
or is he hold -- ing you the way I do? __
Though love is blind, make up your mind, I've got to know. __
Should I hang up __ or will you tell him, __ he'll have to go? __
You can't say the words I want to hear
while you're with an -- oth -- er man.
Do you want me? Ans -- wer yes or no.
Dar -- ling, I will un --der -- stand.
Put your
}

refrainObjectGenderMaleLyrics = \lyricmode {
Put your sweet lips __ a lit -- tle clos -- er __ to the phone. __
Let's pre -- tend that we're to -- geth -- er all a -- lone. __
I'll tell the man to turn the juke -- box way down low __
and you can tell your friend there with you, she'll have to go. __
Whis -- per to me, __ tell me do you love me true __
or is she hold -- ing you the way I do? __
Though love is blind, make up your mind, I've got to know. __
Should I hang up __ or will you tell her, __ she'll have to go? __
You can't say the words I want to hear
while you're with an -- oth -- er girl.
Do you want me? Ans -- wer yes or no.
Dar -- ling, I will un --der -- stand.
Put your
}

refrainLyrics =
#(if (and (defined? 'objectGenderMale) objectGenderMale)
  refrainObjectGenderMaleLyrics
  refrainObjectGenderFemaleLyrics)

refrainChords = \chordmode {
  f2. c2.:7 f2. f2/c c4:7
  
  f2. bf2. f2. f2.
  f2. f2. g2.:m7/c c2.:7
  f2. f2.:7 bf2. bf2.
  f2. c2.:7 f2. f2/c c4:7

  f2. bf2. f2. f2.
  f2. f2. g2.:m7/c c2.:7
  f2. f2.:7 bf2. bf2.
  f2. c2.:7 f2. f2.:7

  bf2. bf2. f2. f2.:7
  bf2. bf2. f2. c2.:7
}

refrainKey = f

refrainMelody = \relative f' {
  \time 3/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad [Jim Reeves 1959]" 4 = 80

  \sectStart "Intro"
  
  R2.*1 | R2.*1 | R2.*1 | r4 r4 g8 gs8 |
  
  \segnoSign
  \sect "Verse 1"
  
  a8 f8~ f8 f8 g8 a8 | bf8 bf8~ bf4 c8 d8 | c2.~ | c4 r4 a8 bf8 |
  c4. c8 d8 c8 | a4 c,4 bf'8 a8 | g2.~ | g4 r8 e8 f8 g8 |
  a4. g8 a8 bf8 | c4 c4 d8 c8 | bf,2.~ | bf4 r8 f'8 f8 g8 |
  a4. a8 bf8 a8 | g8 g8~ g8 c,8 e8 g8 | f2.~ | f4 \textFine r4 g8 gs8 |
  
  \sect "Verse 2"

  a8 c,8~ c4 a'8 a8 | bf4. bf8 c8 d8 | c2.~ | c2 a8 bf8 |
  c2 d8 c8 | a4. c,8 bf'8 a8 | g2.~ | g4 r8 e8 f8 g8 |
  a4. a8 a8 bf8 | c4. d8 d8 c8 | bf,2.~ | bf2 f'8 bf8 |
  a8 a8~ a8 c,8 f8 a8 | g8 g8~ g8 c,8 e8 g8 | f2.~ | f4 r4 c'8 cs8 |
  
  \sect "Bridge"
  
  d4. cs8 d8 ef8 | d8 c8 bf4 bf8 bf8 | a4. gs8 a8 bf8 | a2 c8 cs8 |
  d4. cs8 d8 ef8 | d8 c8 bf4 f8 g8 | a4. a8 bf8 a8 | g2 g8 gs8 \dalSegnoAlFine |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
