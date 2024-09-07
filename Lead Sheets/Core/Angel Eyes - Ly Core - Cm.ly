%% -*- Mode: LilyPond -*-

#(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Angel Eyes"
  subtitle = \instrument
  poet = "Earl Brent"
  composer = "Matt Dennis"
  copyright = "© 1946 Dorsey Bros. Music"
}

refrainLyricsOne = \lyricmode {
Try to think __ that love's not a -- round, __
Still it's un -- com -- fort -- 'bly near, __
My old heart __ ain't gain -- in' no ground __
be -- cause my An -- gel Eyes ain't here.

_ _

drink up, __ all you peo -- ple,
Or -- der an -- y -- thing you see, __
Have fun __ you hap -- py peo -- ple, __
The drink and the laugh's on me. __
Par -- don me, __ but I got -- ta run, __
The fact's un -- com -- mon -- ly clear, __
Got -- ta find __ who's now num -- ber one __
and why my An -- gel Eyes ain't here. __

'Scuse me while I dis -- a -- pear. __
}

refrainLyricsTwo = \lyricmode {
An -- gel Eyes __ that old Dev -- il sent, __
They glow un -- bear -- a -- bly bright, __
Need I say __ that my love's mis -- spent, __
mis -- spent with An -- gel Eyes to -- night. __

_

So
}

refrainNicoChords = \chordmode {
  \set chordChanges = ##t
  c4:m7 c4:m7/bf af2:7 c4:m7 c4:m7/bf af2:7 c2:m7 a2:m7.5- d2:m7.5- g2:7.5+
  c4:m7 c4:m7/bf af2:7 c4:m7 c4:m7/bf a2:m7.5- af2:7 g2:7.5+

  c4:m7 \chordSlash 1 af4:7 g4:7.5+

  c1:m6

  bf2:m7 ef2:7 af2:maj7 a2:dim7 bf2:m7 ef2:7 af2:maj7 df2:maj7
  a2:m7 d2:7 g2:maj7 c2:maj7 cs2:m7 fs2:7 d2:m7 g2:5+

  c4:m7 c4:m7/bf af2:7 c4:m7 c4:m7/bf af2:7 c2:m7 a2:m7.5- d2:m7.5- g2:7.5+
  c4:m7 c4:m7/bf af2:7 c4:m7 c4:m7/bf a2:m7.5- af2:7 g2:7.5+ c2:m7 c2:m7/bf

  af2:7 g2:7.5+ c1:m6
  \set chordChanges = ##f
}

refrainHLChords = \chordmode {
  c4:m7 \chordSlash 1 d4:7.5- g4:7.5+ c2:m7 af2:7 c2:m7 a2:m7.5- d2:m7.5- g2:7.5+
  c4:m7 \chordSlash 1 d4:7.5- g4:7.5+ c2:m7 a2:m7.5- af2:7 g2:7.5+
  
  c4:m7 \chordSlash 1 af4:7 g4:7.5+
  
  c1:m6
  
  bf2:m7 ef2:7 af2:maj7 a2:dim7 bf2:m7 ef2:7 af2:maj7 df2:maj7
  a2:m7 d2:7 g2:maj7 c2:maj7 cs2:m7 fs2:7 d2:m7 g2:5+

  c4:m7 \chordSlash 1 d4:7.5- g4:7.5+ c2:m7 af2:7 c2:m7 a2:m7.5- d2:m7.5- g2:7.5+
  c4:m7 \chordSlash 1 d4:7.5- g4:7.5+ c2:m7 a2:m7.5- af2:7 g2:7.5+ c2:m7 c2:m7/bf

  af2:7 g2:7.5+ c1:m6
}

refrainChords = \refrainNicoChords

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Ballad" 4 = 110

  \xTextMark \markup{ \bold \box "A1, A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  r8 c8 g'8 gf8~ gf4. f8 | ef4 \tuplet 3/2 { ef8 c8 ef8~ } ef2 |
  r8 c8 ef8 g8 d'8 d8 c8 g8~ |
  \break
  g1 |
  r8 c,8 g'8 gf8~ gf4. f8 | ef8 ef8 c8 ef8~ ef4. c8 |
  \break
  ef8 c8 ef8 c8 ef4 ef8 c8~ |
  } \alternative { {
  c2 r2 |
  } {
  c2.\repeatTie c'4 |
  } }
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  c8 c4.~ c8 c8 bf8 ef,8~ | ef8 ef4.~ ef2 | c'8 c4 c16 b16 c4 bf8 ef,8~ | ef2. c'4 |
  \break
  b2~ b8 a4 b16 a16 | d,8 d4.~ d4 r8 e8 | fs8 fs8 fs8 fs8~ fs4 fs8 g8~ | g1 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A3" }
  
  r8 c,8 g'8 gf8~ gf4. f8 | ef4 \tuplet 3/2 { ef8 c8 ef8~ } ef2 |
  r8 c8 ef8 g8 d'8 d8 c8 g8~ | g1 |
  \break
  r8 c,8 g'8 gf8~ gf4. f8 | ef8 ef8 c8 ef8~ ef4. c8 | ef8 c8 ef8 c8 ef4 ef8 c8~ |
  c1 \textToCodaLastTime |
  
  \bar "||-|."

  \textCodaBreak

  \tempo "Rubato"

  ef8 c8 ef8 c8 bf'8 g8( f8) g8~ | g1\fermata |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"
