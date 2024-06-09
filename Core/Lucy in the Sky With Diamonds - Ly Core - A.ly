%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Lucy in the Sky With Diamonds"
  subtitle = \instrument
  poet = ""
  composer = "John Lennon/Paul McCartney"
  copyright = "© 1967 Northern Songs Ltd."
}

refrainLyricsOne = \lyricmode {
_ _ _ _ _ _ _ _ _ _ _ _ _
Pic -- ture your -- self in a boat on a riv -- er,
with tan -- ger -- ine trees and mar -- ma -- lade skies.
Some -- bod -- y calls __ you, you ans -- wer quite __ slow -- ly,
a girl with ka -- lei -- do -- scope eyes. __

Cel -- lo -- phane __ flow -- ers of yel -- low and green,
tow -- er -- ing o -- ver your head. __
Look for the girl __ with the sun in her eyes, and she's gone.

Lu -- cy in the sky __ with dia -- monds.
Lu -- cy in the sky __ with dia -- monds.
Lu -- cy in the sky __ with dia -- monds.
Ah.

eyes. __

Lu -- cy in the sky __ with dia -- monds.
Lu -- cy in the sky __ with dia -- monds.
Lu -- cy in the sky __ with dia -- monds.
Ah.
}

refrainLyricsTwo = \lyricmode {
_ _ _ _ _ _ _ _ _ _ _ _ _
Fol -- low her down to a bridge by a foun -- tain,
where rock -- ing horse peo -- ple eat marsh -- mallow pies.
Ev -- 'ry -- one smiles __ as you drift past the __ flow -- ers
that grow so in -- cre -- di -- bly high. __

News -- pa -- per tax -- is ap -- pear on the shore,
wait -- ing to take you a -- way.
Climb in the back __ with your head in the clouds, and you're gone.
}

refrainLyricsThree = \lyricmode {
_ _ _ _ _ _ _ _ _ _ _ _ _
Pic -- ture your -- self on a train in a sta -- tion,
with Plas -- ti -- cine porters with look -- ing glass ties.
Sud -- den -- ly some -- one is there at the turn -- stile,
the girl with ka -- kei -- do -- scope
}

refrainLyricsFour = \lyricmode {
}

refrainChords = \chordmode {
  r2. r2. r2. r2. 
  
  a2. a2.:7/g fs2.:m7 f2.:aug
  a2. a2.:7/g fs2.:m7 f2. f2.
  a2. a2.:7/g fs2.:m7 f2.:aug
  a2. a2.:7/g fs2.:m7 fs2.:m7
  d2.:m d2.:m/c
  
  bf2.:1.3.5.9 bf2.:1.3.5.9 c2.:1.3.5.9 c2.:1.3.5.9 f2.:6 f2.:6
  bf2.:1.3.5.9 bf2.:1.3.5.9 c2.:1.3.5.9 c2.:1.3.5.9 g2. g2.
  
  d1
  
  g2 a2:m7 b2:m7 d2 g2 a2:m7 b2:m7 d2 
  g2 a2:m7 b2:m7 d2 d1
  
  fs2.:m7 fs2.:m7
  
  d1
  
  g2 a2:m7 b2:m7 d2 g2 a2:m7 b2:m7 d2 
  g2 a2:m7 b2:m7 d2 d1 a1  
}

refrainKey = a
preChorusKey = f
chorusKey = g

refrainMelody = \relative f' {
  \time 3/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 120

  \textMark \markup{ \bold \box "Intro" }
  
  e4 a4 e'4 | g,4 e'4 a,4 | fs4 a4 e'4 | f,4 d'8 cs8 a4 |
  
  \break

  \textMark \markup{ \bold \box "Verse"  \musicglyph #"scripts.segno" }
  \bar ".|:-||"
  \repeat volta 2 {
  cs4 cs4 cs4 | cs4 b4 a4 | cs4 b4 a4 | cs8 b8 r4 a4 |
  \break
  cs4 b8 a4. | cs2 cs4 | e4 d8 cs4. | a2. |
  \break
  R2. | cs4 d4 e8 cs8~ | cs4 b4 a4 | cs4 b8 a8~ a4 |
  \break
  cs4 b4 r8 a8 | cs4 b4 a4 | e'4 d4 cs4 \textToCoda | a2.~ | a2.~ | a2 r4 | R2. |

  \bar "||"
  \break

  \textMark \markup{ \bold \box "Pre-Chorus" }
  
  \key \preChorusKey \major
  
  d8 d4 d8~ d4 | d4 d4 d4 | c8 d4. d4 | d2. |
  d4 d4 d4 | d4 d4 d4 | d4( bf2) | R2. |
  d4 d4 d8 d8~ | d4 d4 d4 | d4 d4 d4 | d4 c4 b4 |
  \numericTimeSignature
  \time 4/4
  \tempo \markup {
    \concat {
      (
      \smaller \general-align #Y #DOWN \note {2.} #1
      " = "
      \smaller \general-align #Y #DOWN \note {2} #1
      )
    }
  }
    a4 r4 r2 |

  \bar "||"
  \pageBreak

  \textMark \markup{ \bold \box "Chorus" }
  
  \key \chorusKey \major
  
  g'8 g8 g8 g8 g8( fs4) e8 | d8( c16 b16) a4 r2 |
  g'8 g8 g8 g8 g8( fs4) e8 | d8( c16 b16) a4 r2 |
  \break
  <g' b>8 <g b>8 <g b>8 <g b>8 <g b>8(  <fs a>4) <e g>8 | <d fs>8( <c e>16 <b d>16) <a c>4 r2 |
  <fs' a>1
  \dalSegnoSecondTime
  |
  }

  \key \refrainKey \major
  \time 3/4

  \textCodaBreak

  a,2.~ | a2.~ |
  \numericTimeSignature
  \time 4/4
  \tempo \markup {
    \concat {
      (
      \smaller \general-align #Y #DOWN \note {2.} #1
      " = "
      \smaller \general-align #Y #DOWN \note {2} #1
      )
    }
  }
  a2 r2 |
  
  \break

  \textMark \markup{ \bold \box "Outro" }
  
  \bar ".|:-||"
  \repeat volta 2 {
  g'8 g8 g8 g8 g8( fs4) e8 | d8( c16 b16) a4 r2 |
  <g' b>8 <g b>8 <g b>8 <g b>8 <g b>8( <fs a>4) <e g>8 |
  <d fs>8( <c e>16 <b d>16) <a c>4 r2 |
  <g' b>8 <g b>8 <g b>8 <g b>8 <g b>8( <fs a>4) <e g>8 |
  <d fs>8( <c e>16 <b d>16) <a c>4 r2 |
  <fs a>1( | <e a>1) \repeatAndFade |
  }
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-four-verses.ily"
