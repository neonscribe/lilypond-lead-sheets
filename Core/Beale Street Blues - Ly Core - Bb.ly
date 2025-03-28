%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Beale Street Blues"
  subtitle = \instrument
  poet = ""
  composer = "W. C. Handy"
  copyright = \markup \small "© 1916 Pack & Handy Music Co. Inc."
}

refrainLyricsOne = \lyricmode {
}

refrainLyricsTwo = \lyricmode {
}

refrainLyricsThree = \lyricmode {
}

refrainChords = \chordmode {
  s2
  
  bf4 f4:7 bf4 f4:7 bf4 f4:7 bf2
  
  bf1 bf1 ef4 bf4 c4:m bf4
  f4 c4:7 f2:7 bf2 bf2:7 ef2 ef2:m
  bf1
  
  bf4 f4:7 bf2
  
  bf4 f4:7 bf4 bf4:7
  
  ef1 bf1:7 ef1 ef1:7 af1 af1:m ef1 ef1
  bf1:7 bf1:7 ef4 ef4:7 af4 af4:m ef2
  \chordOpenParen{ e4:7 }
  \chordCloseParen{ f4:7 }
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 4/4
  \key bf \major
  \clef \whatClef
  \tempo "Medium [Jack Teagerden 1956]" 4 = 134

  \partial 2 \invisEighth <d bf'>8 <ef c'>8 <e cs'>8 |
  \bar "||"

  \xTextMark \markup{ \bold \box "Intro" }
  
  <f d'>8 <d bf'>8 <ef c'>8 <e cs'>8 <f d'>8 <d bf'>8 <ef c'>8 <e cs'>8 |
  <f d'>8 <e df'>8 <ef c'>8 <d bf'>8~ <d bf'>4.
  
  cs'8 |

  \break

  \xTextMark \markup{ \bold \box "A" }
  
  \bar ".|:-||"
  \repeat volta 3 {
  d8 bf8 g8 bf8~ bf4. cs8 | d8 bf8 g8 bf8~ bf4 bf8 bf8 | ef4 d4 c4 bf4 |
  \break
  a4 g8 f8~ f4. cs'8 | d8 bf8 g8 bf8~ bf4. f'8 | f8 ef8 f8 ef8~ ef8 bf8 c8 cs8 |
  \break
  d8 bf8 c8 cs8 d8 bf8 c8 cs8 |
  \alternative { \volta 1,2 {
  d8 df8 c8 bf8~ bf4. cs8 |
  } \volta 3 {
  d8 df8 c8 bf8~ bf8 bf8 bf8 g8 |
  } } }
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  \key ef \major
  \bar ".|:-||"
  \repeat volta 3 {
  bf8 g8 bf8 bf8~ bf2 | r8 c8 bf8 c8 gf4 f8 ef8~ | ef1~ | ef2 r8 bf'8 bf8 bf8 |
  \break
  bf8 af8 bf8 af8~ af2 | r8 ef8 f8 ef8 gf4 f8 ef8~ | ef1~ ef2 r8 bf'8 bf8 bf8 |
  \break
  df4 bf8 c4 bf8~ bf4 | r8 ef4 c8 gf4 f8 ef8~ | ef1~ | ef2.
  \override Parentheses.font-size = #5
  \startParenthesis \parenthesize bf'8
  \endParenthesis \parenthesize bf8 |  
  }
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-three-verses.ily"
