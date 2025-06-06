%% -*- Mode: LilyPond -*-

\score {
  <<
    { \context ChordNames 
      {
      \override ChordName.font-size = #+3
      \override ChordName.font-series = #'bold
      \set chordChanges = ##t
     \transpose \refrainKey \whatKey {
	\refrainChords
	}
      }
      }
    \new Staff {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelody" { 
	\noDoubleAccidentalMusic \transpose \refrainKey \whatKey {
	  \refrainMelody
	  }
	}
    }
    $(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames \tiedNoteToSkip { 
      \removeWithTag LLS \noDoubleAccidentalMusic \transpose \refrainKey \whatKey {
      \refrainMelody
      } }
      #} )
    \new Lyrics \lyricsto "voiceMelody"
    {
      \refrainLyricsPre
      <<
      {
      \refrainLyricsOne
      \refrainLyricsRepOne
      \refrainLyricsRest
      \refrainLyricsCoda
      }
	\new Lyrics {
	  \set associatedVoice = "voiceMelody"
	  \refrainLyricsTwo }
	\new Lyrics {
	  \set associatedVoice = "voiceMelody"
	  \refrainLyricsThree }
    >>
    }
  >>
  \layout { ragged-bottom = ##t ragged-right = ##f }
}

\score {
  \tripletFeel 8
  <<
    { \context ChordNames \with {midiInstrument = "drawbar organ"}
      {
      \override ChordName.font-size = #+3
      \override ChordName.font-series = #'bold
      \set chordChanges = ##t
     \transpose \refrainKey \whatKey {
	\refrainChords
	}
      }
      }
    \new Staff \with {midiInstrument = "overdriven guitar"} {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelody" { 
	\noDoubleAccidentalMusic \transpose \refrainKey \whatKey {
	  \refrainMelody
	  }
	}
    }
    \new Lyrics \lyricsto "voiceMelody"
    {
      \refrainLyricsPre
      <<
      {
      \refrainLyricsOne
      \refrainLyricsRepOne
      \refrainLyricsRest
      \refrainLyricsCoda
      }
	\new Lyrics {
	  \set associatedVoice = "voiceMelody"
	  \refrainLyricsTwo }
	\new Lyrics {
	  \set associatedVoice = "voiceMelody"
	  \refrainLyricsThree }
    >>
    }
  >>
  \midi{}
}
