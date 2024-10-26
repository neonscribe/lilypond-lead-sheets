%% -*- Mode: LilyPond -*-

\version "2.24.4"

% Function to print a specified number of slashes
chordSlash = #(define-music-function (count) (integer?)
#{
    \override ChordName.stencil = #ly:percent-repeat-interface::beat-slash
    \override ChordName.thickness = #0.48
    \override ChordName.slope = #1.7
    \override ChordName.Y-offset = #1
    \repeat unfold $count { r4 }
    \revert ChordName.stencil
    \revert ChordName.Y-offset
  #}
)

%{

\layout {
  system-count = 4
  ragged-right = ##f
  ragged-last = ##f
  \context {
    \ChordNames
    chordChanges = ##f
    \consists Percent_repeat_engraver
    \override VerticalAxisGroup.staff-affinity = #DOWN
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1
  }
}

harmonies = \chordmode {
  d4:m \chordSlash 6
  c4 \chordSlash 8
  d2:m
  c4 | d2.:m | d:m | d:m | d:m
            d:m | d:m | c | c | c | c |
            d:m | d:m | d:m d:m d:m }

melody = \relative c' {
  \key d \minor
  \time 3/4
  \partial 4
  d4 d a' a a2 a8 a g4 g e  c2. R2.  
  r4 r8 g' g g a4 a a a f g a8 d~ d2 R2. R r4 r f8 f
  d4 d a a8 a4. a4 g c, c8 c c4c2 R2. r4 r c8 c 
  d4 f a g e c d d2~ d2.~ d4 r \bar ":|."        
}

\score {
  <<
    \new ChordNames \harmonies
    \new Voice = "one" { \melody }
  >>
}

%}
