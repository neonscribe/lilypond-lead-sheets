%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Am I Blue"
  subtitle = \instrument
  poet = "Grant Clarke"
  composer = "Harry Akst"
  copyright = "© 1929 M. Witmark & Sons"
}

refrainLyricsOne = \lyricmode {
Am I blue? __ Am I blue? __ Ain't these tears __ in these eyes __ tell -- in you? __
Am I blue? __

_ Was a time __ I was his on -- ly one, __
but now I'm __ the sad and lone -- ly one. __

“Law -- dy,” was I gay, __ 'til to -- day, __
now he's gone __ and we're through. __ Am I blue? __
}

refrainLyricsTwo = \lyricmode {
_ _ _ You'd be too __ if each plan __ with your man __ done fell through. __
}

refrainChords = \chordmode {
  s2
  
  f1:maj7 f1:6 g1:m7 c1:7 f2:6 d2:7 g2:7 c2:7
  
  f1:6 c1:7
  
  f2 bf2/f f1

  a1:m7 a1:m7 e1:7 e1:7
  e1:7 e1:7 a2.:m7 fs4:dim7 g2:m7 c2:7
  
  f1:maj7 f1:6 g1:m7 c1:7 f2 d2:7 g2:7 c2:7 f4. bf8*5/f f2
  \chordInsideParens{ c2:7 }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 120

  \partial 2 c8 d4 a'8~ |

  \xTextMark \markup{ \bold \box "A1,A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  a1~ | a2 c,8 d4 bf'8~ | bf1~ | bf4 r4  c,8 d4 c'8~ |
  \break
  c2 cs8 d4 f,8~ | f2 af8 g4 f8~ |
  \alternative { \volta 1 {
  f2. r4 | r2 c8 d4 a'8\laissezVibrer |
  } \volta 2 {
  f1~\repeatTie | f2 ds8 e4 c'8~ |
  } } }
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  c1~ | c4 e4 d4 c4 | b8 d4 b8~ b2~ | b2 ds,8 e4 b'8~ | 
  \break
  b1~ | b4 d4 c4 b4 | a8 c4 c8~ c2 | a4 g8 r8 c,8 d4 a'8~ |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A3" }
  
  a1~ | a2 c,8 d4 bf'8~ | bf1~ | bf4 r4  c,8 d4 c'8~ |
  \break
  c2 ef8 d4 f,8~ | f2 af8 g4 f8~ | f1~ | f2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"
