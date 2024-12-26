%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "In Walked Bud"
  subtitle = \instrument
  poet = ""
  composer = "Thelonious Monk"
  copyright = "© 1948 Embassy Music Corporation"
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  f1:m f1:m7+ f1:m7 bf2:7 ef2:7
  af2:6 f2:7 bf2:m7 ef2:7 af1:6
  
  af2:6 c2:7
  
  af1:6
  
  f1:m f1:m df1:7 df1:7
  f1:m f1:m df1:7 df1:7

  f1:m f1:m7+ f1:m7 bf2:7 ef2:7
  af2:6 f2:7 bf2:m7 ef2:7 af1:6 af1:6
  
  gf1:6.9
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium-Up Swing" 4 = 180

  \xTextMark \markup{ \bold \box "A1,A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  f8 c'4. r4 f,4-. | e8 c'4. r4 e,4-. | ef8 c'4. r4 ef,4 | d8 bf'8 r4 df,2 |
  \break
  c8 af'4. r4 cf,4 | bf8 g'8 r4 <df a>4. b8 | c8 ef8 f4-. af4 f8 ef8 |
  \alternative { \volta 1 {
  r8 af,4.~ af2 |
  } \volta 2 {
  r8 af4.~ af2 |
  } } }
  \sect "B"
  
  f'8 g8 af4-. bf4 af8 bf8 | af4-. bf4 af8 bf8 af4-. |
  <<
    {
      \voiceOne
      cf1~ | cf1 |
    }
    \new Voice = "head" {
      \voiceTwo
      r4 gf4-. f8 cf4. | gf'4-. f8 cf8~ cf4 r4 |
    }
  >>
  \oneVoice
  \break
  f8 g8 af4-. bf4 af8 bf8 | af4-. bf4 af8 bf8 af4-. |
  <<
    {
      \voiceOne
      cf1~ | cf1 |
    }
    \new Voice = "head" {
      \voiceTwo
      r4 gf4-. f8 cf4. | gf'4-. f8 cf8~ cf4 r4 |
    }
  >>
  \oneVoice
  
  
  \sect "A3"
  
  f8 c'4. r4 f,4-. | e8 c'4. r4 e,4-. | ef8 c'4. r4 ef,4 | d8 bf'8 r4 df,2 |
  \break
  c8 af'4. r4 cf,4 | bf8 g'8 r4 <df a>4. b8 | c8 ef8 f4-. af4 f8 ef8 |
  r8 af,4.~ af2 |

  \bar "|."
  
  \textCoda
  
  r8 af4.~ af2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-no-note-names.ily"
