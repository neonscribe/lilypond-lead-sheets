%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Yes Sir, That's My Baby"
  subtitle = \instrument
  poet = "Gus Kahn"
  composer = "Walter Donaldson"
  copyright = "© 1925 Irving Berlin, Inc."
}

refrainLyricsOne = \lyricmode {
Yes, sir, that's my ba -- by.
No, sir, don't mean “may -- be.”
Yes, sir, that's my ba -- by now.

_ _ _

way, __ by the way __
when we meet the preach -- er I'll say __

Yes, sir, that's my ba -- by.
No, sir, don't mean “may -- be.”
Yes, sir, that's my ba -- by now. __
}

refrainLyricsTwo = \lyricmode {
Yes, ma'am, we've de -- ci -- ded.
No, ma'am, we won't hide it.
Yes, ma'am, you're in -- vit -- ed _ now. __
By the
}

refrainChords = \chordmode {
  ef1:maj7 ef2:maj7 e2:dim7 f1:m7
  bf1:7 f1:m7 bf1:7
  
  ef1 f2:m7 bf2:sus9
  
  ef1 ef2 b4:9 bf4:9
  
  ef1:7 ef1:7 af1 af2 g4:13 gf4:13 
  f1:7 f1:7 bf1:7 bf1:7
  
  ef2:maj7 af2:8 g2:m7 gf2:9 f1:m7 bf1:7
  f1:m7 bf1:7 ef1
  \chordOpenParen{ f2:m7 }
  \chordCloseParen{ bf2:7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 140

  \xTextMark \markup{ \bold \box "A1,A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  bf2 c2 | bf4 c4 c4 bf4 | bf2 c2 |
  bf4 c4 c4 bf4 |
  \break
  bf2 c2 | bf4 c4 g4 f4 |
  \alternative { \volta 1 {
  ef1~ | ef1 |
  } \volta 2 {
  ef1~ | ef2 fs4 g4 |
  } } }
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  ef1~ | ef2 b'4 c4 | af1~ | af2 g4 gf4 |
  \break
  f2 f2 | ef'4 c4 ef2 | d1~ | d4 r4 r2 |

  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A3" }
  
  bf2 c2 | bf4 c4 c4 bf4 | bf2 c2 | bf4 c4 c4 bf4 |
  \break
  bf2 c2 | bf4 c4 g4 f4 | ef1~ | ef2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"
