%% -*- Mode: LilyPond -*-

\new Score \with {
  \RemoveEmptyStaves
   \remove System_start_delimiter_engraver
}
<<
   #(if (and (defined? 'refrainAltChords) refrainAltChords)
     #{
    { \context ChordNames = "AltChords"
      \with { \consists #Bass_changes_equal_root_engraver }
      {
     \override BarLine.bar-extent = #'(-2 . 2)
      \override ChordName.font-size = #+2.5
      #(if (and (defined? 'altChordSize) AltChordSize)
	#{ \override ChordName.font-size = \altChordSize #} )
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \refrainKey \whatKey {
       \refrainAltChords
	}
      }
      }
    #} )
    { \context ChordNames = "StdChords"
      \with { \consists Bar_engraver }
      {
     \override BarLine.bar-extent = #'(-2 . 2)
      \override ChordName.font-size = #+2.5
      #(if (and (defined? 'chordSize) chordSize)
	#{ \override ChordName.font-size = \chordSize #} )
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \refrainKey \whatKey {
       \refrainChords
	}
      }
      }
    #(if (and (defined? 'refrainKicksOverTime) refrainKicksOverTime)
      #{
    \new RhythmicStaff {
      \override Staff.VerticalAxisGroup.staff-staff-spacing =
            #'( (basic-distance . 1) 
                (minimum-distance . 1) 
                (padding . 1) )
      \override Staff.StaffSymbol.transparent = ##t
      \override Staff.Clef.stencil = ##f
      \override Staff.TimeSignature.stencil = ##f
      \override Staff.BarLine.stencil = ##f
      \override Staff.StaffSymbol.line-count = #0
      \improvisationOn
      \magnifyMusic 0.63 \refrainKicksOverTime
      \improvisationOff
    }
    #} )
%{
 \new StaffGroup \with {
    systemStartDelimiter = #'SystemStartBar
}
<<
  #(if (and (defined? 'refrainMelody) refrainMelody)
    #{
    \new Devnull {
    \include "../Include/staff-settings.ily"
    \context NullVoice = "voiceMelody" { 
    \noDoubleAccidentalMusic \transpose \refrainKey \whatKey {
    \refrainMelody
  }
  }
    }
    #(if (and (not (and (defined? 'hideLyrics) hideLyrics))
	  (defined? 'refrainLyrics) refrainLyrics)
      (if (and (defined? 'refrainLyricsTwo) refrainLyricsTwo)
       #{
   \new Lyrics = "lyrics" {
      \lyricsto "voiceMelody" 
      {
	<<
	\refrainLyrics
	\new Lyrics {
	  \set associatedVoice = "voiceMelody"
       #(if (and (defined? 'refrainTwoLanguages) refrainTwoLanguages)
	 #{ \emphasize \refrainLyricsTwo #}
	 #{ \refrainLyricsTwo #} ) }
       #(if (and (defined? 'refrainLyricsThree) refrainLyricsThree)
	 #{
	 \new Lyrics {
	 \set associatedVoice = "voiceMelody"
	 \refrainLyricsThree }
	 #} )
       #(if (and (defined? 'refrainLyricsFour) refrainLyricsFour)
	 #{
	 \new Lyrics {
	 \set associatedVoice = "voiceMelody"
	 \refrainLyricsFour }
	 #} )
	>>
	}
    }
       #}
      #{
    \new Lyrics \lyricsto "voiceMelody"
    {
      \refrainLyrics
    }
      #} ) )
    #(if (and (defined? 'refrainMelodyTwo) refrainMelodyTwo)
      #{
    \new Devnull {
      \include "../Include/staff-settings.ily"
      \context NullVoice = "voiceMelodyTwo" { 
	\noDoubleAccidentalMusic \transpose \refrainKey \whatKey {
	  \refrainMelodyTwo
	  }
	}
    }
      #} )
    #(if (and (defined? 'refrainLyricsVoiceTwo) refrainLyricsVoiceTwo)
      (if (and (defined? 'refrainLyricsTwoVoiceTwo) refrainLyricsTwoVoiceTwo)
       #{
   \new Lyrics = "lyrics" {
      \lyricsto "voiceMelodyTwo" 
      {
	<<
	\refrainLyricsVoiceTwo
	\new Lyrics {
	  \set associatedVoice = "voiceMelodyTwo"
       #(if (and (defined? 'refrainTwoLanguagesVoiceTwo) refrainTwoLanguagesVoiceTwo)
	 #{ \emphasize \refrainLyricsTwoVoiceTwo #}
	 #{ \refrainLyricsTwoVoiceTwo #} ) }
       #(if (and (defined? 'refrainLyricsThreeVoiceTwo) refrainLyricsThreeVoiceTwo)
	 #{
	 \new Lyrics {
	 \set associatedVoice = "voiceMelodyTwo"
	 \refrainLyricsThreeVoiceTwo }
	 #} )
       #(if (and (defined? 'refrainLyricsFourVoiceTwo) refrainLyricsFourVoiceTwo)
	 #{
	 \new Lyrics {
	 \set associatedVoice = "voiceMelodyTwo"
	 \refrainLyricsFourVoiceTwo }
	 #} )
	>>
	}
    }
       #}
      #{
    \new Lyrics \lyricsto "voiceMelodyTwo"
    {
      \refrainLyricsVoiceTwo
    }
      #} ) )
    #(if (and (defined? 'refrainMelodyThree) refrainMelodyThree)
      #{
      \new Devnull {
      \include "../Include/staff-settings.ily"
      \context NullVoice = "voiceMelodyThree" \with { \consists #ambitus-engraver } { 
	\noDoubleAccidentalMusic \transpose \refrainKey \whatKey {
	  \refrainMelodyThree
	  }
	}
    }
      #} )
    #(if (and (defined? 'refrainLyricsVoiceThree) refrainLyricsVoiceThree)
      (if (and (defined? 'refrainLyricsTwoVoiceThree) refrainLyricsTwoVoiceThree)
       #{
   \new Lyrics = "lyrics" {
      \lyricsto "voiceMelodyThree" 
      {
	<<
	\refrainLyricsVoiceThree
	\new Lyrics {
	  \set associatedVoice = "voiceMelodyThree"
       #(if (and (defined? 'refrainTwoLanguagesVoiceThree) refrainTwoLanguagesVoiceThree)
	 #{ \emphasize \refrainLyricsTwoVoiceThree #}
	 #{ \refrainLyricsTwoVoiceThree #} ) }
       #(if (and (defined? 'refrainLyricsThreeVoiceThree) refrainLyricsThreeVoiceThree)
	 #{
	 \new Lyrics {
	 \set associatedVoice = "voiceMelodyThree"
	 \refrainLyricsThreeVoiceThree }
	 #} )
       #(if (and (defined? 'refrainLyricsFourVoiceThree) refrainLyricsFourVoiceThree)
	 #{
	 \new Lyrics {
	 \set associatedVoice = "voiceMelodyThree"
	 \refrainLyricsFourVoiceThree }
	 #} )
	>>
	}
    }
       #}
      #{
    \new Lyrics \lyricsto "voiceMelodyThree"
    {
      \refrainLyricsVoiceThree
    }
      #} ) )
    #} )
  >>
 %}
  >>
