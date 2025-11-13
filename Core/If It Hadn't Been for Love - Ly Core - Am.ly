%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "If It Hadn't Been for Love"
  subtitle = \instrument
  poet = ""
  composer =  "Michael Henderson and Chris Stapleton"
  copyright = \markup \small { \now " " "© 2004 Chicken Shack Songs" }
}

refrainLyrics = \lyricmode {
\set stanza = "1. "
Nev -- er would -- 've hitch -- hiked to Birm -- ing -- ham if it had -- n't been for love.
Nev --er would -- 've caught the train to Lou -- 'si -- an', if it had -- n't been for love.
Nev --er would -- 've run through the blind -- in' rain with -- out one dol -- lar to my name,
if it had -- n't been, if it had -- n't been for love.

Four cold walls a -- gainst my will. At least I know she's ly -- in' still.
Four cold walls with -- out pa -- role. Lord have mer -- cy on my soul.

if it had -- n't been, if it had -- n't been for love.
If it had -- n't been, if it had -- n't been for love.
}

refrainLyricsTwo = \lyricmode {
\set stanza = "2. "
Nev -- er would -- 've seen the trouble that I'm in if it had -- n't been for love.
Would -- 've been _ gone _ like a way -- ward wind if it had -- n't been for love.
No -- bod -- y knows it bet -- ter than me.
I would -- n't be wish -- ing I was free.
if it had -- n't been, if it had -- n't been for love.
}

refrainLyricsThree = \lyricmode {
\set stanza = "3. "
Nev -- er would -- 've gone to that side of town if it had -- n't been for love.
Nev -- er would -- 've took a mind to track her down if it had -- n't been for love.
Nev -- er would -- 've loaded up a four -- ty -- four, put my -- self behind a jail -- house door,
if it had -- n't been, if it had -- n't been for love.
}

refrainLyricsFour = \lyricmode {
\set stanza = "4. "
Nev -- er would -- 've hitch -- hiked to Birm -- ing -- ham if it had -- n't been for love.
Nev --er would -- 've caught the train to Lou -- 'si -- an', if it had -- n't been for love.
Nev -- er would -- 've loaded up a four -- ty -- four, put my -- self behind a jail -- house door,
if it had -- n't been, if it had -- n't been for love.
}

refrainChords = \chordmode {
  a1:m a1:m a1:m a1:m

  a1:m a1:m a1:m a1:m
  a1:m a1:m f1 f1
  a1:m a1:m f1 f1
  f1 e1:7 a1:m
  
  a1:m

  a1:m

  c1 g1 a1:m c1
  c1 g1 d1:m a1:m a1:m
  c1 g1 a1:m c1
  c1 g1 d1:m a1:m a1:m
  
  a1:m a1:m a1:m a1:m
  a1:m a1:m f1 f1
  a1:m a1:m f1 f1
  f1 e1:7 a1:m a1:m a1:m a1:m

  a1:m

  f1 e1:7 a1:m a1:m
  f1 e1:7 a1:m a1:m
}

refrainKey = a

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium [The SteelDrivers 2007]" 4 = 160

  \sectStart "Intro"
  
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  
  \sect "Verse"
  
  \bar ".|:-||"

  \repeat volta 4 {
  a8_"4x" a8 a8 a8 c8 
  <<
    \new Voice
    { \voiceTwo
      \magnifyMusic 0.63 {
	c8 d8 }
    }
    { \voiceOne
      d4 
    }
  >>
  \oneVoice
  c8 | e8 d4 c8~ c4 a8 a8 | c8 a8 a2 g8 a8~ | a2 r2 |
  \break
  a8 a8 a8 a8 c8 c8 d8 c8 | e8 d4 c8~ c4 a8 g8 | c8 a8 a2 g8 a8~( | a8 c4.) r2 |
  \break
  a8 a8 a8 a8 c4 d8 c8 | e4 d8 c8( a4) r8 a8 | e'4 d4 c8 d4. | g8 e4 d8~ d4 a8 g8 |
  \break
  a8 a8 c4 r4 d8 d8 | e8 e8 d4( e4) a,8 c8( | a2) r2 |
  \alternative { \volta 1 {
  r1 |
  \bar ":|."
  } \volta 2,3 {

  \xPageBreak

  r1 |
  \sectNoBreak "Chorus"
  
  g'2. e4 | d8( c4.) r4 d4 | d2. e4 | d8( c4.) r4 g'4 |
  \break
  g2. e4 | d8( c4.) r4 e4 | d4( c2) a4 | a2 r2 | r1 |
  \break
  g'2. e4 | d8( c4.) r4 d4 | d2. e4 | d8( c4.) r2 |
  \break
  g'2. e4 | d8( c4.~ c4) e4 | d4( c2) a4 | a2 r2 | r1 |

  \sect "Solo"
  
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |

  \bar "||-:|."
  } \volta 4 {
  \sectNoBar "Coda"
  r2 r4 a8 g8 | a8 a8 c4 r4 d8 d8 | e8 e8 d4( e4) a,8 c8( | a2) r2 | r2 r4 a8 g8 |
  \break
  a8 a8 c4\fermata r4 d8 d8 | e8 e8\fermata d4( e4\fermata) a,8 c8( | a2\fermata) r2 | r1 |
  } } }
  \bar ":|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
