%% -*- Mode: LilyPond -*-

  \header {
    title = \headerTitle
    subtitle = \subtitle
    poet = \headerPoet
    composer = \headerComposer
    copyright = \markup \small { \now " " \headerCopyright }
    nextpage =\markup { \headerTitle
		   "-"
		   \noteName { \whatKey } 
		   #(if (and (defined? 'isMinor) isMinor)
		     "Minor"
		     "")
		   #(if (not (and (defined? 'whatClef)
			     (not (or (equal? whatClef "treble")
				      (equal? whatClef "treble_8")))))
		     ""
		     (string-append "- " (string-capitalize whatClef) " Clef"))
		   }
  }
