%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

#(set-global-staff-size 18)

wpb = $(and (defined? 'withPianoAndBass) withPianoAndBass)

\header {
  title = "A Child Is Born"
  subtitle = \instrument
  poet = "Alec Wilder"
  composer = "Roland Hanna (credited to Thad Jones)"
  copyright = \markup \small { \now " " "© 1969 D'Accord Music, Inc." }
}

refrainLyrics = \lyricmode {
Now
out of the night,
new as the dawn,
in -- to the light,
this child,
in -- no -- cent child,
soft as the fawn,
this child is born.

One __ small heart,
one pair of eyes,
one work of art
here in my arms,
here he lies,
trust -- ing and warm,
bless -- ed this child is

born.
}

% chordSize = #-1

refrainChords = \chordmode {
  df2.:maj7.9.13 gf2.:m6.9/df df2.:maj7.9.13 gf2.:m6.9/df df2.:maj7.9.13 gf2.:m6.9/df c2.:m7.5- f2.:7.9-.5+
  bf2.:m9 f2.:7.9-.5+ bf2.:m9 f2.:7.9-.5+ bf2.:m9 ef2.:7.9.13 af2.:sus7.9.13 af2.:7.9-.13
  df2.:maj7.9.13 gf2.:m6.9/df df2.:maj7.9.13 gf2.:m6.9/df df2.:maj7.9.13 f2.:7.9+.5+ gf2.:maj9 b2.:7
  df2.:maj7.9.13/af f2.:7.9+.9-/a bf2.:m9 ef2.:7.9.13 af2.:sus7.9.13 af2.:7.9-.13
  df2.:maj7.9.13 gf2.:m6.9/df df2.:maj7.9.13 gf2.:m6.9/df df2.:maj7.9.13
}

refrainKey = df

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \time 3/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad" 4 = 75

  \xTextMark \markup{ \bold \box "A1" }
  
  f2. | gf4 af4 df4 | f,2. | gf4 af4 df4 |
  \break
  f,2. | gf4 af4 df4 | f2. | ef2. |
  
  \sect "B"
  
  f,2. | gf4 af4 df4 | f,2. | gf4 af4 df4 |
  \break
  f,2. | g4 af4 df4 | f2. | af,2~ af8 gf8 |
  \bar "||"
  
  $(if wpb #{ \xPageBreak #} )
  
  \sectNoBar "A2"
  
  f2. | gf4 af4 df4 | f,2. | gf4 af4 df4 |
  \break
  f,2. | af4 df4 f4 | af2. | gf2 a,4 |

  \sect "C"

  af2. | gf4 af4 df4 | f,2. | g4 bf4 ef4 |
  f2. | af,2. \textToCodaLastTime |
  
  \bar "||-|."
  
  \textCodaBreak
  
  f2. | gf4 af4 df4 | f,2. | gf4 af4 df4 | f2.\fermata | 
  
  \bar "|."
}

refrainRightHand = \relative f' {
  \time 3/4
  \key \refrainKey \major
  \clef "treble"

  <c ef af>2. | <df ef af>2. | <c ef af>2. | <df ef af>2. |
  <c ef af>2. | <df ef af>2. | <ef f>2. | <df ef>2. |
  
  <df f>2. | <ef gf>2. | <df f>2. | <ef gf>2. |
  <df f>2. | <df f>2. | <df f>2. | <c f>2. |
  
  <c ef af>2. | <df ef af>2. | <c ef af>2. | <df ef af>2. |
  <c ef af>2. | <ef af>2. | <f af>2. | <ds fs>2. |

  <c ef af>2. | <df ef af>2. | <df f>2. | <df f>2. |
  <df f>2. | <c f>2. |

  <c ef af>2. | <df ef af>2. | <c ef af>2. | <df ef af>2. | <c ef af>2. |
}

refrainLeftHand = \relative f' {
  \time 3/4
  \key \refrainKey \major
  \clef "bass"
  
  <<
    \new Voice
    { \voiceTwo
      df,,2. | df2. | df2. | df2. | df2. | df2. | c2. | f2. |
      bf2. | f2. | bf2. | f2. | bf2. | ef,2. | af2. | af2. |
      df,2. | df2. | df2. | df2. | df2. | f2. | gf2. | b2. |
      af2. | a2. | bf2. | ef,2. | af2. | af2. |
      df,2. | df2. |  df2. | df2. | df2. |
    }
    { \voiceOne
    
      <f' bf>2. | <gf a>2. | <f bf>2. | <gf a>2. |
      <f bf>2. | <gf a>2. | <gf bf>2. | <gf a>2. |

      <af c>2. | <a df>2. | <af c>2. | <a df>2. | 
      <af c>2. | <g c>2. | <gf bf>2. | <gf a>2. | 

      <f bf>2. | <gf a>2. | <f bf>2. | <gf a>2. |
      <f bf>2. | <a df>2. | <bf df>2. | <a cs>2. |

      <f bf>2. | <gf a>2. | <af c>2. | <g c>2. | 
      <gf bf>2. | <gf a>2. |

      <f bf>2. | <gf a>2. | <f bf>2. | <gf a>2. | <f bf>2.
    }
    >>
  \oneVoice

}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

file = $(if wpb
	 "../Include/piano-grand-staff.ily"
	 "../Include/refrain.ily")

\include \file
