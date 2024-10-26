%% -*- Mode: LilyPond -*-

\score {
  <<
    { \context ChordNames 
      \with { \consists #Bass_changes_equal_root_engraver }
      {
      \override ChordName.font-size = #+3
      $(if (and (defined? 'chordSize) chordSize)
	#{ \override ChordName.font-size = \chordSize #} )
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \refrainKey \whatKey {
       \refrainChords
	}
      }
      }
    \new Staff 
      {
      #(set-accidental-style 'modern)
      \set Score.voltaSpannerDuration = #(ly:make-moment 1/2)
      \override Score.Clef.break-visibility = #all-invisible
      \override Score.KeySignature.break-visibility = #all-invisible
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
      \refrainLyrics
    }
  >>
  \layout { ragged-bottom = ##t ragged-right = ##f }
}

\include "../Include/refrain-midi.ily"
