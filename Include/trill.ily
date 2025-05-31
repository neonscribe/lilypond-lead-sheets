%% -*- Mode: LilyPond -*-

trillDoubleFlat = \override TrillSpanner.bound-details.left.text = \markup{ 
  \musicglyph "scripts.trill" \raise #0.65 \teeny  \doubleflat }

%% music = \fixed c'' { \trillDoubleFlat c1\startTrillSpan c1\stopTrillSpan }

