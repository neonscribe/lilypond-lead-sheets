#(ly:message "toc item ~a ~a ~a" headerTitle subtitle thisKey)

\tocItem \markup { \tocTruncateTitle \headerTitle \subtitle
		   " - "
		   \noteName { \thisKey } 
		   #(if (and (defined? 'isMinor) isMinor)
		     "Minor"
		     "")
		   " - "
		   \tocTruncateSubtitle \headerTitle \subtitle
		   }
