%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Vivo Sonhando (Dreamer)"
  subtitle = \instrument
  poet = "Gene Lees"
  composer = "Antonio Carlos Jobim"
  %% copyright = "© 1963 Jobim Music Ltda."
}

introLyrics = \lyricmode {
}

introChords = \chordmode {
  g1:maj7 g1:maj7 ef1:maj7/g ef1:maj7/g
  g1:maj7 g1:maj7 ef1:maj7/g ef1:maj7/g
}

introKey = g

introMelody = \relative g' {
  \time 2/2
  \key \introKey \major
  \clef \whatClef
  \mark "Intro"

  fs4. d4. b4~ | b8 d4. e4 g4 |
  a4. g4. d4~ | d8 bf4. a4 bf4 |
  \break
  fs'4. d4. b4~ | b8 d4. e4 g4 |
  f4. d4. bf4~ | bf8 a4. bf4 c4 |

  \bar "||"
}

outroLyrics = \lyricmode {
}

outroChords = \chordmode {
  g1:maj7 g1:maj7 ef1:maj7/g ef1:maj7/g
  g1:maj7 g1:maj7 ef1:maj7/g ef1:maj7/g
  g1:maj7 af1:7.11+ g1:maj7
}

outroKey = g

outroMelody = \relative g' {
  \time 2/2
  \key \outroKey \major
  \clef \whatClef
  \mark "Ending"

  fs4. d4. b4~ | b8 d4. e4 g4 |
  f4. d4. bf4~ | bf8 a4. bf4 c4 |
  \break
  fs4. d4. b4~ | b8 d4. e4 g4 |
  a4. g4. d4~ | d8 bf4. a4 bf4 |
  fs'8 fs8 fs8 fs4 fs8 fs8 fs8( | fs8) fs8 fs8 fs4 fs8 fs8 d8~ | d1~

  \bar "|."
}

refrainLyricsAOneP = \lyricmode {
  Vi -- vo so -- nhan -- do, so -- nhan -- do Mil ho -- ras sem fim __
  Tem -- po_em que vou __ per -- gun -- tan -- do Se gos -- tas de mim __
}

refrainLyricsAOneE = \lyricmode {
  Why are my eyes __ al -- ways full __ of this vi -- sion of you __
  Why do I dream sil -- ly dreams that I fear won't come true
}

refrainLyricsATwoP = \lyricmode {
  Vo -- cê não vin -- do não vin -- do A vi -- da tem fim __
  Gen -- te que pas -- sa sor -- rin -- do Zom -- ban -- do de mim __
}

refrainLyricsATwoE = \lyricmode {
  So I go on ask -- ing if __ may -- be one day you'll care __
  I tell my sad lit -- tle dreams __ to the soft eve -- ning air
}

refrainLyricsBP = \lyricmode {
  Tem -- po de fal -- ar em es -- tre -- las, Mar, a -- mor, lu -- ar __
  Fa -- lar do_a -- mor que se tem __ Mas vo -- cê não vem, não vem
}

refrainLyricsBE = \lyricmode {
  I long to show _ you the stars __ _ Caught in_the dark of the_sea
  I long to speak of my love __ _ But you won't come to me
}

refrainLyricsCP = \lyricmode {
  E_eu a fa -- lar em es -- tre __ -- las, __ Mar, a -- mor, lu -- ar __
  Po -- bre de mim __ Que só sei te_a -- mar __
}

refrainLyricsCE = \lyricmode {
  I am quite hope -- less it seems, __ _ Two_things I know how to_do __
  One is to dream __ Two is lov -- ing you __
}

refrainChords = \chordmode {
  g1:maj7 g1:maj7 ef1:maj7/g ef1:maj7/g
  g1:maj7 g1:maj7 b1:m7 e1:7.9-
  a1:m7 c2:m7 c2:m6 b1:m7 e1:7.9-
  a1:m7 d1:7.9- g1:maj7 g1:m7
  g1:maj7 g1:maj7 ef1:maj7/g ef1:maj7/g
  g1:maj7 g1:maj7 b1:m7 e1:7.9-
  a1:m7 c2:m9 c2:m6 b1:m7 e1:7.9- a2:7.13 a2:7.13-
  a2:m7 d2:9 g1:6
  \chordInsideParens{ ef1:maj7/g }
}

refrainMelody = \relative g' {
  \time 2/2
  \key g \major
  \clef \whatClef
  \set Score.currentBarNumber = #1

  \mark \markup { \box "A1" }

  fs8 fs8 fs fs4 fs8 fs8 fs8~ | fs8 fs8 fs8 fs4 fs8 fs8 d8~ | d1~ | d2. r4 |
  fs8 fs8 fs fs4 fs8 fs8 fs8~ | fs8 fs8 fs8 fs4 fs8 fs8 d8~ | d1~ | d2. r4 |
  \break
  \mark \markup { \box "B" }
  c8 c8 c8 c8 c8 b8 c8 d8~ | d4. d8~ d2 | b4. b8 b4 b8 c8~ | c2. r4 |
  r8 a8 a8 a8 a8 gs8 a8 b8~ | b4. a8 \tuplet 3/2 { a4 b4 c4 } | d2. f4 | d2. r4 |
  \break
  \pageBreak
  \mark \markup { \box "A2" }
  fs8 fs8 fs fs4 fs8 fs8 fs8~ | fs8 fs8 fs8 fs4 fs8 fs8 d8~ | d1~ | d2. r4 |
  fs8 fs8 fs fs4 fs8 fs8 fs8~ | fs8 fs8 fs8 fs4 fs8 fs8 d8~ | d1~ | d2. r4 |
  \break
  \mark \markup { \box "C" }
  c8 c8 c8 c4 b8 c8 d8~ | d4. d8~ d2 | b4. b8 b4 b8 c8~ | c2 e8 fs8 g8 a8~ |
  a2. r4 | r8 g4 fs8 e4 fs4 | g1~ | g1 |
    
  \bar "||"
}
  
\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/intro.ily"

emphasize = {
  \override Lyrics.LyricText.font-shape = #'italic
}

normal = {
  \revert Lyrics.LyricText.font-shape
}

\score {
  <<
    { \context ChordNames 
      {
      \override ChordName.font-size = #+3
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose g \whatKey {
       \refrainChords
	}
      }
      }
    \new Staff {
      #(set-accidental-style 'modern)
      \context Voice = "voiceMelody" { 
	\noDoubleAccidentalMusic \transpose g \whatKey {
	  \refrainMelody
	  }
	}
    }
    \new Lyrics \lyricsto "voiceMelody"
    {
    <<
      { \refrainLyricsAOneP }
      \new Lyrics {
	\set associatedVoice = "voiceMelody"
	\emphasize \refrainLyricsAOneE }
    >>
    <<
      { \refrainLyricsBP }
      \new Lyrics {
	\set associatedVoice = "voiceMelody"
	\emphasize \refrainLyricsBE }
    >>
    <<
    { \refrainLyricsATwoP }
    \new Lyrics {
      \set associatedVoice = "voiceMelody"
      \emphasize \refrainLyricsATwoE }
    >>
    <<
      { \refrainLyricsCP }
      \new Lyrics {
	\set associatedVoice = "voiceMelody"
	\emphasize \refrainLyricsCE }
    >>
    }
  >>
  \midi{} \layout { }
}

\include "../Include/outro.ily"


performanceNotes =
\markup {
  \column {
    \line { \huge { Accordion & vocal intro, Portuguese vocal with band, English vocal with band } }
    \line { \huge { Accordion solo full chorus, guitar solo full chorus } }
    \line { \huge { Portuguese vocal with band to ending, note bII7 chord 2nd to last bar! } }
  }
}

\include "../Include/notes.ily"
