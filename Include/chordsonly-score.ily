%% -*- Mode: LilyPond -*-

\new Score \with {
  \RemoveEmptyStaves
   \remove System_start_delimiter_engraver
  \omit BarNumber
}
<<
    { \context ChordNames = "StdChords"
      \with { \consists Bar_engraver
	    }
      {
	\override BarLine.bar-extent = #'(0 . 2)
	\override LyricText.parent-alignment-X = #LEFT
	%% \override LyricText.self-alignment-X = #LEFT
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \refrainKey \whatKey {
       \refrainChords
	}
      }
      }
    #(if (and (not (and (defined? 'hideLyrics) hideLyrics))
	  (defined? 'refrainLyrics) refrainLyrics)
      #{
      \new Lyrics = "lyrics"
    {
      \refrainLyrics
    }
      #} )
  >>
