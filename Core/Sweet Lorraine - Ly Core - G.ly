%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames
      (string=? instrument "Eb for Standard Key"))
  (set-global-staff-size 16)
  (set-global-staff-size 18))

\header {
  title = "Sweet Lorraine"
  subtitle = \instrument
  poet = "Mitchell Parish"
  composer = "Cliff Burwell"
  copyright = "© 1928 Mills Music Inc."
}

refrainLyrics = \lyricmode {
  I've just found joy, I'm as hap -- py as a ba -- by boy
  With an -- oth -- er brand new choo -- choo toy,
  When I met my sweet Lor -- raine;
  
  A pair of eyes That are bright -- er than the sum -- mer skies
  When you see them you will re -- a lize
  Why I love my sweet Lor -- raine,
  
  Now when its rain -- ing I don't miss the sun,
  Be -- cause it's in my ba -- by's smile,
  Just to think that I'm the luck -- y one
  Who will lead her down the aisle;
  
  Each night I pray That no -- bod -- y steals her heart a -- way,
  Just can't wait un -- til that hap -- py day,
  When I mar -- ry sweet Lor -- raine.
}

refrainChords = \chordmode {
  s8
  
  g2:6 b4:m7 e4:7.9- a2:m7 d4:9 ef4:dim7 e2:m7 g2:7.5+ c2:9 b2:9
  e2:9 a4:13 a4:7.5+ d2:sus9 d2:9 b2:m7 e2:9 a2:m7 d2:7.9-

  g2:6 b4:m7 e4:7.9- a2:m7 d4:9 ef4:dim7 e2:m7 g2:7.5+ c2:9 b2:9
  e2:9 a4:13 a4:7.5+ d2:sus9 d2:9 g2:6 d2:sus9 g2:6 g2:13
  
  c2:6 b4:m7 e4:7 a2:m7 g4:m7 c4:7 f2:9 e4:9 e4:7.9- a2:m7 g4:m7 c4:7
  f2:9 e2:9 ef2:9 d2:9 f2:9 e2:9 a2:7.5+ d4:sus9 af4:7

  g2:6 b4:m7 e4:7.9- a2:m7 d4:9 ef4:dim7 e2:m7 g2:7.5+ c2:9 b2:9
  e2:9 a4:13 a4:7.5+ d2:sus9 d2:7.9- g2:6
  \chordOpenParen{ b4:m7 } 
  e4:m7 a2:m7
  \chordCloseParen{ d2:9 }
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Moderately Slow Swing" 4 = 82

  \partial 8 d8 |
  \bar "||"

  \textMark \markup{ \bold \box "A1" }
  
  b'4 b8 b8~ b4 r4 | r4 a8 b8 c8 d8 b8 a8 | g4 g8 g8~ g4 r4 | r4 fs8 g8 a8 b8 g8 fs8 |
  \break
  e4 e8 e8~ e4 r4 | r4 d8 e8 fs8 g8 a8 b8 | d1~ | d2 r4 r8 d,8 |
  
  \bar "||"
  \break

  \textMark \markup{ \bold \box "A2" }
  
  b'4 b8 b8~ b4 r4 | r4 a8 b8 c8 d8 b8 a8 | g4 g8 g8~ g4 r4 | r4 fs8 g8 a8 b8 g8 fs8 |
  \break
  e4 e8 e8~ e4 r4 | r4 d8 e8 fs8 g8 a8 b8 | g1~ | g2 r4 r8 g8 |
  
  \bar "||"
  \break

  \textMark \markup{ \bold \box "B" }
  
  c8 d8 c8 a8 b8 c8 b8 g8 | a2 r2 | r8 c,8 a'8 c8 b8 e,8 gs8 b8 | a2. r4 |
  \break
  r4 c8 e,8 b'8 c8 b8 e,8 | a8 a8 a2 r4 | r4 b8 e,8 b'8 c8 b8 e,8 | a2. r8 d,8 |
  
  \bar "||"
  \break

  \textMark \markup{ \bold \box "A3" }

  b'4 b8 b8~ b4 r4 | r4 a8 b8 c8 d8 b8 a8 | g4 g8 g8~ g4 r4 | r4 fs8 g8 a8 b8 g8 fs8 |
  \break
  e4 e8 e8~ e4 r4 | r4 d8 e8 fs8 g8 b8 d,8 | g1~ | g2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
