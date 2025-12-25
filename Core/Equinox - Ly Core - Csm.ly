%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "Equinox"
  subtitle = \instrument
  poet = ""
  composer = "John Coltrane"
  copyright = \markup \small { \now " " "© 1960 Jowcol Music" }
}

refrainChords = \chordmode {
  \chordInsideParens{ cs1:m }
  \chordInsideParens{ fs1:m }

  \chordInsideParens{ cs1*6:m }
  
  \chordInsideParens{ cs1*4:m }
  
  fs8*3:m9 fs8*3:m6.9 d4*5/fs
  
  \chordInsideParens{ cs1*2:m }
  
  a1:13 gs2:sus7.9- gs2:7.9-.5+
  
  \chordInsideParens{ cs1*2:m }
}

solosChords = \chordmode {
  cs1:m13 cs1:m13 cs1:m13 cs1:m13
  fs1:m11 fs1:m11 cs1:m13 cs8*7:m13 a8:sus13
  a8*7:sus13 gs8*9:13.9- cs1:m13 cs1:m13
  
}

refrainKey = cs

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium [John Coltrane 1960]" 4 = 117

  \sectStart "Intro"
  
  \bar ".|:"
  \repeat volta 2 {
    cs4 r4 gs'8 cs,8 b'8 cs,8 | fs4 r4 e8^"(play 3x)" cs8 fs8 b,8 |
  }
  
  \bar ":|.|:"
  \repeat volta 2 {
    cs4. cs8~ cs4 cs4~ | cs2_"(bass)"
    <<
      {
        \voiceOne
        r2 |
      }
      \new Voice = "head" {
        \voiceTwo
	gs4 b4 |
      }
    >>
    \oneVoice
    \break
    }

  \bar "||-:|."
  \break

  cs4. cs8~ cs4 cs4~ | cs2
  <<
    {
      \voiceOne
      r2 |
    }
    \new Voice = "head" {
      \voiceTwo
      gs4 b4 |
    }
  >>
  \oneVoice
  cs4. cs8~ cs4 cs4~ | cs2
  <<
    {
      \voiceOne
      r4 r8 gs'8^"(melody)" |
    }
    \new Voice = "head" {
      \voiceTwo
      gs,4 b4 |
    }
  >>
  \oneVoice
  
  \sectNoBar "Head"

  \bar ".|:-||"

  \repeat volta 2 {
  e'8 cs4.~ cs2~ | cs2. r8 gs8 | e'4. cs8~ cs2~ | cs2. r8 e8 |
  \break
  fs8 cs4.~ cs2~ | cs2. r8 gs8 | e'4. cs8~ cs2~ | cs2 r2 |
  \break
  r8 ds4. ds4 ds4 | ds4. cs8 e8 cs8 e4 | cs4. cs8~ cs4 cs4~ | cs4 r4 r4 r8
  \override Parentheses.font-size = #5
  \parenthesize gs8 |
  }
}

solosKey = cs

bassSolos = \relative f' {
  \time 4/4
  \key \solosKey \minor
  \clef bass

  \xTextMark \markup{ \bold \box "Solos" }

  \bar ":|.|:"
  \repeat volta 2 {
    cs,4. cs8~ cs4 cs4~ | cs2 gs4 b4 | cs4. cs8~ cs4 cs4~ | cs2 cs4 e4 |
    fs4. fs8~ fs4 fs4~ | fs2 gs,4 b4 | cs4. cs8~ cs4 cs4~ | cs2.. a8~ |
    a4. a'8~ a8 a,4 gs8~ | gs4. gs'8~ gs8 gs,4. | cs4. cs8~ cs4 cs4~ | cs2 gs4 b4 |
  }
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\include "../Include/bass-solos.ily"

\markup "Play head twice before and twice after solos, tag last four bars for ending."
