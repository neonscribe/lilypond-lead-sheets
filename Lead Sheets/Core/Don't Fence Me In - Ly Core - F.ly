%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Don't Fence Me In"
  subtitle = \instrument
  poet = ""
  composer = "Cole Porter"
  copyright = "© 1944 Warner Bros, Inc."
}

refrainLyrics = \lyricmode {
Oh, give me land, lots of land un -- der star -- ry skies a -- bove
don't fence me in. __
Let me ride thru the wide o -- pen coun -- try that I love,
don't fence me in.
Let me be by my -- self in the eve -- ning breeze,
lis -- ten to the mur -- mur of the cot -- ton -- wood trees,
send me off for -- ev -- er, but I ask you please
don't fence me in.
Just turn me loose, let me strad -- dle my old sad -- dle
un -- der -- neath the west -- ern skies. __
On my cay -- use, let me wan -- der o -- ver yon -- der
till I see the moun -- tains rise. __
I want to ride to the ridge where the west com -- menc -- es,
gaze at the moon till I lose my sens -- es.
Can't look at hob -- bles and I can't stand fen -- ces,
don't fence me in.
}

refrainChords = \chordmode {
  s2.
  
  f2 f2:maj7 f2:6 f2:maj7 f2:6 d2:7.9- g2:m7 c2:7
  g2:m7 c2:7 g2:m7 c2:7 g2:m7 c2:7 f1:6
  
  f2 f2:maj7 f2:7 f2:7.5+ bf1:6 bf2:6 bf2:m
  f1 d2:7 g2:m7.5- f2 c4.:7 f8*3 f2.:7
  
  bf1 bf1 f2 c2:9.5+ f1:7 
  bf1 bf1 f2 fs2:dim7 g2:m7 c2:7
  
  f2 f2:maj7 f2:7 f2:7.5+ bf1:6 bf2:6 bf2:m
  f1 d2:7 g2:m7.5- f2:6 c8*3:9 f8*9:6
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 112
  
  \partial 2. c4 f4 g4 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A" }
  
  a4 a8 gs8 a4 a8 gs8 | a8 g8 f8 g8 a2 | a2 bf4 a8 g8~ | g2. e8 f8 | 
  \break
  g4 g8 fs8 g4 g8 f8 | g8 f8 e8 f8 g2 | c2 c4. bf8 | a2. f8 g8 |

  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  a4 a8 gs8 a4 a8 gs8 | a4 a4 g8( f4.) | 
  bf8 a8 bf8 a8 bf8 a8 bf8 c8 | d8 cs8 d4 c8( bf4.) |
  \break
  a8 gs8 a8 bf8 c8 b8 c8 d8 | ef4 d4 c8( bf4.) | a2 a4 g8 f8~ | f4 f4 f4 f4 |

  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "C" }
  
  f4 d8 e8 f8 e8 d8 e8 | f8 e8 d8 e8 f8 g8 f8 d8 | c1~ | c4 f4 f4 f4 |
  \break
  f4 d8 e8 f8 e8 d8 e8 | f8 e8 d8 e8 f8 g8 f8 d8 | c1~ | c4 c4 f4 g4 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "D" }
  
  a4 a8 gs8 a4 a8 gs8 | a4 a4 g8 f4. | bf4 bf8 a8 bf4 bf8 c8 | d4 d4 c8 bf4. |
  \break
  a4 a8 bf8 c8 b8 c8 d8 | ef4 d4 c8 bf4. | a2 a4 g8 f8~ | f2. r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
