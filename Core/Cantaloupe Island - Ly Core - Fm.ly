%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Cantaloupe Island"
  subtitle = \instrument
  poet = ""
  composer = "Herbie Hancock"
  copyright = "© 1964 Hancock Music Inc."
}

straightEighths = ##t

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  f1:m7 f1:m7 f1:m7 f1:m7
  f1:m7 f1:m7 f1:m7 f1:m7
  df1:7 df1:7 df1:7 df1:7
  d1:m11 d1:m11 d1:m11 d1:m11
  f1:m7 f1:m7 f1:m7 f1:m7
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium Jazz Funk, Straight Eighths [Herbie Hancock 1964]" 4 = 116

  \xTextMark \markup{ \bold \box "Intro" }
  
  r1^"(Vamp)" | r1 | r1 | r2 r4 f8 f8 |
  
  \break

  \xTextMark \markup{ \bold \box "Refrain" }
  
  \bar ".|:-||"
  \repeat volta 2 {
  r2 af8 bf8 bf4 | r4 r8 af8 bf8 c8 ef,8 f8~ | f4 r4 r2 | r2 r4 f8 f8 |
  \break
  r2 af8 bf8 bf4 | r4 r8 af8 bf8 c8 ef,8 f8~ | f4 r4 r2 | r2 c'8 ef8 c8 ef8 |
  \break
  f,4. f8~ f2~ | f4 r4 c'8 ef8 c8 ef8 | f,4. f8~ f2~ | f2. r4 |
  \break
  r1^"(Intro Vamp)" | r1 | r1 | r2 r4
  \override Parentheses.font-size = #5
  \startParenthesis \parenthesize
  f8 
  \endParenthesis \parenthesize
  f8 |
  }
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup{ "Play head twice before and twice after solos." }
