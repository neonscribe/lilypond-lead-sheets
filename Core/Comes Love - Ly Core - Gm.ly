%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Comes Love"
  subtitle = \instrument
  poet = ""
  composer = "Lew Brown, Chas. Tobias, Sam H. Stept"
  copyright = "© 1939 Chappel & Co., Inc."
}

refrainLyricsOne = \lyricmode {
Comes a rain -- storm, put your rub -- bers on your feet.
Comes a snow -- storm, you can get a lit -- tle heat.
Comes love, __ noth -- ing can be done. __

Comes a fi -- re, then you know just what to do.
Blow a ti -- re you can buy an -- oth -- er shoe.
Comes love, __ noth -- ing can be done. __

Don't try __ hi -- din' 'cause there is -- n't an -- y use. __
You'll start __ slid -- in' __ when your heart turns on the juice.

Comes a head -- ache, you can lose it in a day.
Comes a tooth -- ache, see your den -- tist right a -- way.
Comes love, __ noth -- ing can be done. __
}

refrainLyricsTwo = \lyricmode {
Comes a heat wave, you can hur -- ry to the shore.
Comes a sum -- mons, you can hide be -- hind the door.
_ _ _ _ _ _ _
Comes the meas -- les you can quar -- an -- tine the room.
Comes a mous -- ie, you can chase it with a broom.
_ _ _ _ _ _ _

That's all __ bro -- ther if you've ev -- er been in love. __
You'll know __ bro -- ther what it is I'm speak -- ing of.

Comes a night -- mare, you can al -- ways stay a -- wake.
Comes de -- pres -- sion, you can get an -- o -- ther break.
_ _ _ _ _ _ _
}

refrainChords = \chordmode {
  s4

  g1:m6 g1:m6 d1:7.13- d1:7.13-
  a1:m7.5- d1:7.9- g1:m6 a2:m7.5- d2:7.9-

  g1:m6 g1:m6 d1:7.13- d1:7.13-
  a1:m7.5- d1:7.9- g1:m6 ef2:7 d2:7
  
  g1:7.13- g1:7.13- c2:m7 g2:7.9- c1:m7
  f1:7 f1:7 bf1:6 d1:7.13-

  g1:m6 g1:m6 d1:7.13- d1:7.13-
  a1:m7.5- d1:7.9- g1:m6 
  \chordOpenParen{ a2:m7.5- }
  \chordCloseParen{ d2:7.9- }
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium" 4 = 120

  \partial 4 d8 d8 |
  \bar "||"

  \mark \markup{ \box "A1" }
  
  g4 bf2 d,8 d8 | g8 g8 bf8 bf8 g4 d8 d8 | fs4 a2 d,8 d8 | fs8 fs8 a8 a8 f4 d4 |
  \break
  d'1~ | d8 c4 c8 bf4 a4 | g1~ | g2 r4 d8 d8 |
  
  \bar "||"
  \break

  \mark \markup{ \box "A2" }
  
  g4 bf2 d,8 d8 | g8 g8 bf8 bf8 g4 d8 d8 | fs4 a2 d,8 d8 | fs8 fs8 a8 a8 f4 d4 |
  \break
  d'1~ | d8 c4 c8 bf4 a4 | g1~ | g2 r2 |
  
  \bar "||"
  \pageBreak

  \mark \markup{ \box "B" }
  
  d'4. b8~ b4 r4 | d4. b8~ b8 ef4 d8 | ef4 d4 c4 b8 c8~ | c2. r4 |
  \break
  c4. a8~ a4 r4 | c4. a8~ a4 r4 | d8 d4 d8~ d8 d4 d8~ | d8 d,4 d8~ d4 d8 d8 |
  
  \bar "||"
  \break

  \mark \markup{ \box "A3" }

  g4 bf2 d,8 d8 | g8 g8 bf8 bf8 g4 d8 d8 | fs4 a2 d,8 d8 | fs8 fs8 a8 a8 f4 d4 |
  \break
  d'1~ | d8 c4 c8 bf4 a4 | g1~ | g2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"
