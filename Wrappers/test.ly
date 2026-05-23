\version "2.26.0"

\include "../Include/lead-sheets.ily"

\include "nederlands.ly"


%%% SNIPPET START

\version "2.24.4"

%% Exlicitly instantiate the Score level and remove its System_start_delimiter_engraver to not have a start-bar connecting the rhythmic staff to the other staves
\new Score \with {
   \remove System_start_delimiter_engraver
}
<<
\new RhythmicStaff \with {
    % to bring RhythmicStaff closer to your staff group customize its staf-staff-spacing
    \override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 1)
    (minimum-distance . 1)
    (padding . 1))
}
{
\override Staff.StaffSymbol.transparent = ##t
\override Staff.TimeSignature.stencil = ##f
\improvisationOn
c8 c16 c16~ c16 c16 c16 c16 c8 c16 c16~ c16 c16 c16 c16|
}

% create a nested staff group for the staves you want connected by the SystemStartBar and override its
% start delimiter to 'SystemStartBar
\new StaffGroup \with {
    systemStartDelimiter = #'SystemStartBar
}
<<
\new Staff
{
\clef "treble_8"
\key c \major  \set tieWaitForNote = ##t
\time 4/4
c'2 d'2
}
\new ChordNames
{
\chordmode  { c2 d2:m |}
}
\new TabStaff {
{ c'2 d'2 }
}
>>

>>
%%% SNIPPET END
