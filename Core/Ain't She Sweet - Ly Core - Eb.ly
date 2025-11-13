%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Ain't She Sweet"
  subtitle = \instrument
  poet = "Jack Yellen"
  composer = "Milton Ager"
  copyright = \markup \small { \now " " "© 1927 Ager, Yellen, & Bornstein Inc." }
}

refrainObjectGenderFemaleLyrics = \lyricmode {
Ain't she sweet? See her com -- ing down the street.
Now, I ask you ver -- y con -- fi -- den -- tial -- ly, ain't she sweet?
Ain't she nice? Look her o -- ver once or twice.
Now, I ask you ver -- y con -- fi -- den -- tial -- ly, ain't she nice?

Just cast an eye __ in her di -- rec -- tion. __
Oh me, oh my, __ ain't that per -- fec -- tion? __
I re -- peat, don't you think that's kind of neat?
And I ask you ver -- y con -- fi -- den -- tial -- ly, ain't she sweet?
}

refrainObjectGenderMaleLyrics = \lyricmode {
Ain't he sweet? See him com -- ing down the street.
Now, I ask you ver -- y con -- fi -- den -- tial -- ly, ain't he sweet?
Ain't he nice? Look him o -- ver once or twice.
Now, I ask you ver -- y con -- fi -- den -- tial -- ly, ain't he nice?

Just cast an eye __ in his di -- rec -- tion. __
Oh me, oh my, __ ain't that per -- fec -- tion? __
I re -- peat, don't you think that's kind of neat?
And I ask you ver -- y con -- fi -- den -- tial -- ly, ain't he sweet?
}

refrainLyrics =
#(if (and (defined? 'objectGenderMale) objectGenderMale)
  refrainObjectGenderMaleLyrics
  refrainObjectGenderFemaleLyrics)

refrainChords = \chordmode {
  ef2 a2:9 bf1:7 ef2 a2:9 bf1:7 
  ef2 g2:7 c1:7 f2:7 bf2:7 ef2 bf2:7

  ef2 a2:9 bf1:7 ef2 a2:9 bf1:7 
  ef2 g2:7 c1:7 f2:7 bf2:7 ef8*7
  
  af8*9:7 af1:7 ef4*5 ef8*5 af8*9:7
  af1:7 ef1 f2:m7 bf2:7

  ef2 a2:9 bf1:7 ef2 a2:9 bf1:7 
  ef2 g2:7 c1:7 f2:7 bf2:7 ef4 af4:7 ef2
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Fast [Annette Hanshaw 1927]" 4 = 230

  \sectStart "A1"
  
  c'2 b2 | bf2 r8 c4 bf8 | c4 c4 b4 b4 | bf2 r8 c4 bf8 |
  \break
  ef4 ef4 d4 d4 | c4 c8 c8~ c8 bf8 af4 | g2 f2 | ef2 r2 |
  
  \sect "A2"

  c'2 b2 | bf2 r8 c4 bf8 | c4 c4 b4 b4 | bf2 r8 c4 bf8 |
  \break
  ef4 ef4 d4 d4 | c4 c8 c8~ c8 bf8 af4 | g2 f2 | ef4 ef'4 ef8 ef4 ef8~ |
  
  \sect "B"
  
  ef1~ | ef4 ef4 ef4 ef4 | ef2 bf2~ | bf4 ef4 ef8 ef4 ef8~ |
  \break
  ef1~ | ef4 ef4 ef4 ef4 | ef2 bf2~ | bf2. r4 |
  
  \sect "A3"

  c2 b2 | bf2 r8 c4 bf8 | c4 c4 b4 b4 | bf2 r8 c4 bf8 |
  \break
  ef4 ef4 d4 d4 | c4 c8 c8~ c8 bf8 af4 | g2 f2 | ef2. r4 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
