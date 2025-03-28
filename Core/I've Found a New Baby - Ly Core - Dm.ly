%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "I've Found a New Baby"
  subtitle = \instrument
  poet = ""
  composer = "Jack Palmer and Spencer Williams"
  copyright = \markup \small "© 1926 Clarence Williams Music Publishing Co. Inc."
}

refrainObjectGenderFemaleLyrics = \lyricmode {
  I've found a new ba -- by, __ I've found a new girl,
  My fash -- ion plate ba -- by __ has got me a -- whirl.
  
  Her new kind o' lov -- in' __ done made me her slave,
  Her sweet tur --  tle dov -- in' __ is all that I crave. __
  
  Sweet -- est miss, with a kiss, full o' bliss, can't re -- sist some -- how, __
  Tells me lies, but she's wise, naugh -- ty eyes mes -- mer -- ize, I vow, and how.

  I don't mean maybe, I just had to fall,
  I found a new ba -- by, new ba -- by, that's all. __
}

refrainObjectGenderMaleLyrics = \lyricmode {
I found a new ba -- by, __
I found a new boy,
That sweet talk -- in' ba -- by __
Has filled me with joy!

His new way of lov -- in' __
Is all that I crave,
His sweet tur -- tle dov -- in' __
Has made me his slave. __

Sweet -- est kiss, what a kiss,
Full of bliss, can't re -- sist, some -- how. __
Tells me lies, but he's wise,
Naugh -- ty eyes mes -- mer -- ize, I vow, __ and how.

I don't mean maybe, __
I just had to fall,
I found a new ba -- by, __
New ba -- by, that's all. __
}

refrainLyrics =
#(if (and (defined? 'objectGenderMale) objectGenderMale)
  refrainObjectGenderMaleLyrics
  refrainObjectGenderFemaleLyrics)

refrainChords = \chordmode {
  s2.
  
  d1:m a1:7 d1:m d1:7 g1:7 c1:7 f1 a1:7

  d1:m a1:7 d1:m d1:7 g1:7 c1:7 f1 f1
  
  a1:7 a1:7 d1:m d1:m g1:7 g1:7 c1:7 a1:7

  d1:m a1:7 d1:m d1:7 g1:7 c1:7 f1 a1:7
}

refrainKey = d

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Fast Swing" 4 = 240
  
  \partial 2. gs8 a8~ a8 gs8 a4 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  f4. d8~ d2 | r4 gs8 a8~ a8 gs8 a4 | f1 | r4 cs'8 e8~ e8 cs8 d4 |
  \break
  a4. a8~ a2 | r4 a8 c8~ c8 a8 g4 | f1 | r4 gs8 a8~ a8 gs8 a4 |
  
  \sect "A2"
  
  f4. d8~ d2 | r4 gs8 a8~ a8 gs8 a4 | f1 | r4 cs'8 e8~ e8 cs8 d4 |
  \break
  a4. a8~ a2 | r4 a8 c8~ c8 a8 g4 | f1~ | f1 |
  
  \sect "B"
  
  r4 cs'8 c8 cs4 b8 cs8 | b4 a8 b8 a4 a8 g8 | f8 g4 a8~ a2 | r1 |
  \break
  r4 b8 bf8 b4 a8 b8 | a4 g8 a8 g4 g8 f8 | e8 f4 g8~ g2 | r4 gs8 a8~ a8 gs8 a4 |
  
  \sect "A3"

  f4. d8~ d2 | r4 gs8 a8~ a8 gs8 a4 | f1 | r4 cs'8 e8~ e8 cs8 d4 |
  \break
  a4. a8~ a2 | r4 a8 c8~ c8 a8 g4 | f1~ | f1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
