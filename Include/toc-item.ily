\tocItem \markup { \tocTruncateTitle \headerTitle \subtitle
		   " - "
		   \noteName { \whatKey } 
		   #(if (and (defined? 'isMinor) isMinor)
		     "Minor"
		     "")
		   " - "
		   \tocTruncateSubtitle \headerTitle \subtitle
		   }
