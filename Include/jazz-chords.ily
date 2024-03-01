%
% JAZZ CHORDS
% (based upon pop-chords.ly by James L. Hammons)
%
% v3.1
% 19 Nov 2011
% address@hidden
%
% tested against lilypond v2.14.2

\include "nederlands.ly"

#(define-markup-command (jcRaise layout props jcText) (markup?)
   (interpret-markup layout props
     (markup #:raise 1.5 #:smaller #:smaller #:smaller jcText)))

#(define-markup-command (jcSmall layout props jcText) (markup?)
   (interpret-markup layout props
     (markup #:smaller #:smaller #:smaller jcText)))

jcFlat = \markup{  \hspace #0.2 \raise #0.4 { \smaller \flat } }
jcSharp = \markup{ \hspace #0.2 \raise #0.7 { \smaller \sharp } }

% define your prefererred mode markers here
jcMajor = \markup{ \jcSmall{ "MA" } }
jcDiminished = \markup{ \jcRaise{ "o" } }
jcMinor = \markup{ \jcSmall{ "MI" } }
jcMinorSeventh = \markup{ \jcMinor \jcRaise{ "7" } }
jcMajorSeventh = \markup{ \jcMajor \jcRaise{ "7" } }
jcMajorSeventhModifier = \markup{ \jcRaise{ "(MA 7)" } }
jcMajorNinthModifier = \markup{ \jcRaise{ "(MA 9)" } }
jcMinorMajorSeventh = \markup{ \jcMinor \jcMajorSeventhModifier }
jcMinorMajorNinth = \markup{ \jcMinor \jcMajorNinthModifier }
jcSeventh = \markup{ \jcRaise{ "7" } }
jcSixth = \markup{ \jcRaise{ "6" } }
jcMinorSixth = \markup{ \jcMinor \jcRaise{ "6" } }
jcMinorFlatSixth = \markup{ \jcMinor \jcRaise{ \jcFlat "6" } }
jcNinth = \markup{ \jcRaise{ "9" } }
jcMajorNinth = \markup{ \jcMajor \jcRaise{ "9" } }
jcFlatFive = \markup{ \jcRaise{ "(" \jcFlat "5)" } }
jcFlatNinth = \markup{ \jcRaise{ "(" \jcFlat "9)" } }
jcSharpNinth = \markup{ \jcRaise{ "(" \jcSharp "9)" } }
jcEleventh = \markup{ \jcRaise{ "11" } }
jcSharpEleventh = \markup{ \jcRaise{ "(" \jcSharp "11)" } }
jcFlatEleventh = \markup{ \jcRaise{ "(" \jcFlat "11)" } }
jcThirteenth = \markup{ \jcRaise{ "13" } }
jcSharpThirteenth = \markup{ \jcRaise{ "(" \jcSharp "13)" } }
jcFlatThirteenth = \markup{ \jcRaise{ "(" \jcFlat "13)" } }
jcAugmented = \markup{ "+" }
jcSus = \markup{ \jcSmall{ "SUS" } }
jcSusTwo = \markup{ \jcSmall{ "SUS2" } }


jazzChordsMusic =
{

	% Duads
	<c g>-\markup{ \jcRaise{ "5" } }
	<c e>-\markup{ \jcRaise{ "3" } }
	<c ees>-\markup{ \jcMinor \jcRaise{ "3" } }
	
	
	% Triads
	<c e ges>-\markup{ \jcFlatFive }
	<c e gis>-\markup{ \jcAugmented }

	<c ees g>-\markup{ \jcMinor }
	<c ees gis>-\markup{ \jcMinor \jcAugmented }

	<c ees ges>-\markup{ \jcMinor \jcFlatFive }
	<c d g>-\markup{ \jcSusTwo }
	<c f g>-\markup{ \jcSus }

	% this chord appears in Miles Davis's "Enigma" and is called "p4",
	% meaning a chord constisting of perfect fourths
	<c f bes>-\markup{ \jcRaise{ "4" } }

	% Sixth Chords
	<c e g a>-\markup{ \jcSixth }
	<c ees g a>-\markup{ \jcMinorSixth }
	<c ees g aes>-\markup{ \jcMinorFlatSixth }

	
	% Sevenths (including altered ones)	
	
	% dominant sept
	<c e g bes>-\markup{ \jcSeventh }
	
	
	% major sept
	<c e g b>-\markup{ \jcMajorSeventh }
	<c e gis b>-\markup{ \jcAugmented \jcMajorSeventhModifier }
	<c e ges b>-\markup\jcRaise{ \jcMajorSeventh \jcFlatFive }
	
	
	% minor
	<c ees g aes>-\markup{ \jcMinorSixth }
	<c ees g bes>-\markup{ \jcMinorSeventh }
	
	<c ees bes>-\markup{ \jcMinorSeventh \jcRaise{ "(OMIT 5)" } }
	
	<c ees g b>-\markup{ \jcMinorMajorSeventh }
	
	<c ees ges bes>-\markup{ \jcMinorSeventh \jcFlatFive }
	<c ees ges beses>-\markup{ \jcDiminished }

	% suspended
	<c f g bes>-\markup{ \jcSeventh \jcSus }
	<c d g bes>-\markup{ \jcSeventh \jcSusTwo }
	<c f g bes des'>-\markup{ \jcSeventh \jcSus \jcFlatNinth }



	% Ninths (including altered--incomplete)

	% major	
	<c e g d'>-\markup\jcRaise{ "(ADD 9)" }
	<c e g b d'>-\markup{ \jcMajorNinth }
	<c e g bes d'>-\markup{ \jcNinth }
	<c e gis bes d'>-\markup{ \jcAugmented \jcNinth }
	<c e ges bes d'>-\markup{ \jcNinth \jcFlatFive }
	<c f g d'>-\markup{ \jcNinth \jcSus }
	
	<c e g bes des'>-\markup{ \jcSeventh \jcFlatNinth }
	<c e g bes dis'>-\markup{ \jcSeventh \jcSharpNinth }

	<c e gis bes dis'>-\markup{ \jcAugmented \jcSeventh \jcSharpNinth }
	<c e ges bes dis'>-\markup{ \jcSeventh \jcFlat }
	<c e gis bes des'>-\markup{ \jcAugmented \jcSeventh \jcFlatNinth }
	
	<c e ges bes des'>-\markup {
	    \jcSeventh
	    {\larger\larger\medium "(" } 
	      \tiny { \column{ 
	        \raise #1.2 \line{ \jcFlat "9" } % the lower tension in the bracket
	        \raise #2.5 \line{ \jcFlat "5" }  % the upper tension in the bracket
	      } } 
	     \larger\larger\medium ")" } 
	
	<c e g bes cis' dis'>-\markup {
	    \jcSeventh
	    {\larger\larger\medium "(" } 
	      \tiny { \column{ 
	        \raise #1.2 \line{ \jcSharp "9" } % the lower tension in the bracket
	        \raise #2.5 \line{ \jcFlat "9" }  % the upper tension in the bracket
	      } } 
	     \larger\larger\medium ")" } 
	
	<c e gis bes cis' dis'>-\markup{ 
	    \jcAugmented \jcSeventh
	    {\larger\larger\medium "(" } 
	      \tiny { \column{ 
	        \raise #1.2 \line{ \jcSharp "9" } % the lower tension in the bracket
	        \raise #2.5 \line{ \jcFlat "9" }  % the upper tension in the bracket
	      } } 
	     \larger\larger\medium ")" } 
	
	<c e ges bes cis' dis'>-\markup{ 
	    \jcSeventh \jcFlatFive
	    {\larger\larger\medium "(" } 
	      \tiny { \column{ 
	        \raise #1.2 \line{ \jcSharp "9" } % the lower tension in the bracket
	        \raise #2.5 \line{ \jcFlat "9" }  % the upper tension in the bracket
	      } } 
	     \larger\larger\medium ")" } 
	
	% 6/9
	<c e g a d'>-\markup{ \jcSixth "/" \jcSmall{ "9" } }
	% minor 6/9
	<c ees g a d'>-\markup{ \jcMinor \jcSixth "/" \jcSmall{ "9" } }


	     
	% minor
	<c ees g bes d'>-\markup{ \jcMinor \jcNinth }
	<c ees g bes des'>-\markup{ \jcMinor \jcFlatNinth }
	<c ees g b d'>-\markup{ \jcMinorMajorNinth }
	
	
	% Elevenths
	
	% major	
	<c e g b d' f'>-\markup{ \jcMajor \jcEleventh }
	<c e g b d' fis'>-\markup{ \jcMajorSeventh \jcSharpEleventh }
	<c e g b d' fes'>-\markup{ \jcMajorSeventh \jcFlatEleventh }
	<c e g bes des' fes'>-\markup{ 
	    \jcSeventh
	    {\larger\larger\medium "(" } 
	      \tiny { \column{ 
	        \raise #1.2 \line{ \jcFlat "9" }  % the upper tension in the bracket
	        \raise #2.5 \line{ \jcFlat "11" } % the lower tension in the bracket
	      } } 
	     \larger\larger\medium ")" } 
	
	<c e g f' >-\markup{ \jcRaise{ "(ADD 11)" } }
	<c e g bes f' >-\markup{ \jcSeventh \jcRaise{ "(ADD 11)" } }

	<c e g bes des' f' >-\markup{ \jcEleventh \jcFlatNinth }
	<c e g bes dis' f' >-\markup{ \jcEleventh \jcSharpNinth }
	<c e g bes fis'>-\markup{ \jcSeventh \jcSharpEleventh }
	<c e g bes fes'>-\markup{ \jcSeventh \jcFlatEleventh }
	<c e g bes d' f'>-\markup{ \jcEleventh }
	<c e g bes d' fes'>-\markup{ \jcNinth \jcFlatEleventh }
	<c e g bes d' fis'>-\markup{ \jcNinth \jcSharpEleventh }
	<c f g bes d' f'>-\markup{ \jcEleventh \jcSus }
		
	
	% minor	
	<c ees g f'>-\markup{ \jcMinor \jcRaise{ "(ADD 11)" } }
	<c ees g bes f'>-\markup{ \jcMinorSeventh \jcRaise{ "(ADD 11)" } }

	<c ees g bes d' f'>-\markup{ \jcMinor \jcEleventh }
	<c ees ges bes d' f'>-\markup{ \jcMinor \jcSeventh \jcFlatFive \jcRaise{ "(11)" } }

	% So What
	<c f bes ees' g'>-\markup{ \jcMinor \jcSeventh \jcRaise{ "(ADD 4)" } } 

	%% Thirteens
	
	<c e g b d' f' a'>-\markup{ \jcMajor \jcThirteenth }
	<c ees g bes d' f' a'>-\markup{ \jcMinor \jcThirteenth }
	<c ees g bes d' a'>-\markup{ \jcThirteenth }
	<c e g bes d' f' a'>-\markup{ \jcThirteenth }
	<c e g bes d' a'>-\markup{ \jcThirteenth }

	<c f g a'>-\markup{ \jcThirteenth \jcSus }
	<c f g bes d' a'>-\markup{ \jcThirteenth \jcSus }
	<c f g bes d' f' a'>-\markup{ \jcThirteenth \jcSus }
	
	<c e g bes des' a'>-\markup{ \jcThirteenth \jcFlatNinth }
	<c e g bes d' fis' a'>-\markup{ \jcThirteenth \jcSharpEleventh }

	<c e g bes des' aes'>-\markup{ 
	    \jcSeventh
	    {\larger\larger\medium "(" } 
	      \tiny { \column{ 
	        \raise #1.2 \line{ \jcFlat "13" } % the lower tension in the bracket
	        \raise #2.5 \line{ \jcFlat "9" }  % the upper tension in the bracket
	      } } 
	     \larger\larger\medium ")" } 
	
	<c e g bes des' ais'>-\markup{ 
	    \jcSeventh
	    {\larger\larger\medium "(" } 
	      \tiny { \column{ 
	        \raise #1.2 \line{ \jcSharp "13" } % the lower tension in the bracket
	        \raise #2.5 \line{ \jcFlat "9" }  % the upper tension in the bracket
	      } } 
	     \larger\larger\medium ")" } 
	
	<c e g bes dis' aes'>-\markup{ 
	    \jcSeventh
	    {\larger\larger\medium "(" } 
	      \tiny { \column{ 
	        \raise #1.2 \line{ \jcFlat "13" } % the lower tension in the bracket
	        \raise #2.5 \line{ \jcSharp "9" }  % the upper tension in the bracket
	      } } 
	     \larger\larger\medium ")" } 
	
	<c e g bes dis' ais'>-\markup{ 
	    \jcSeventh
	    {\larger\larger\medium "(" } 
	      \tiny { \column{ 
	        \raise #1.2 \line{ \jcSharp "13" } % the lower tension in the bracket
	        \raise #2.5 \line{ \jcSharp "9" }  % the upper tension in the bracket
	      } } 
	     \larger\larger\medium ")" } 
	
	<c e g bes ais'>-\markup{ \jcSeventh \jcSharpThirteenth }
	<c e g bes aes'>-\markup{ \jcSeventh \jcFlatThirteenth }


	% diminished flat 13
	<c ees ges aes'>-\markup{ \jcDiminished \jcFlatThirteenth }

	% diminished seventh flat 13
	<c ees ges beses aes'>-\markup{ \jcDiminished \jcFlatThirteenth }

	% sevenths with sharp five and flat five won't be found, b13 and #11 match first!
	<c e ges bes>-\markup{ \jcSeventh \jcFlatFive }
	<c e gis bes>-\markup{ \jcAugmented \jcSeventh }
}



% Exception handling
jazzChordsAdd = #(append
	 (sequential-music-to-chord-exceptions jazzChordsMusic #t)
	 ignatzekExceptions)


	 

#(define (chord-name->jazz-markup pitch lowercase?)

  (let* ((pitch (no-double-accidental-pitch pitch))
	 (alt (ly:pitch-alteration pitch)))

  (make-line-markup
    (list
      (make-simple-markup (vector-ref #("C" "D" "E" "F" "G" "A" "B") (ly:pitch-notename pitch)))

      ;; If it's natural, do nothing

      (if (= alt 0)

        (make-line-markup (list empty-markup))

        (if (= alt FLAT)

          ;; Otherwise, handle adding the flat symbol

          (make-line-markup
            (list
              (make-hspace-markup 0.3) ;; WAS: 0.4
              (make-tiny-markup (make-raise-markup 1.0
                (make-musicglyph-markup "accidentals.flat")))
            )
          )

          ;; or handle adding the sharp symbol

          (make-line-markup
            (list
              (make-hspace-markup 0.1) ;; WAS: 0.2
              (make-teeny-markup (make-raise-markup 1.0
                (make-musicglyph-markup "accidentals.sharp")))
            )
          )

        )

      )

    )
  )
  )
)

\layout
{
  \context
  {
    \Score
    chordNameExceptions = #jazzChordsAdd
    chordRootNamer = #chord-name->jazz-markup
    \override ChordName.extra-spacing-width = #'(-1.25 . 1.25)
  }
}

