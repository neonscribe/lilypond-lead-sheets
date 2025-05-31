%% -*- Mode: LilyPond -*-

#(define (scoop-stencil grob)
  (ly:stencil-combine-at-edge
   (ly:note-head::print grob) 0 -1
   (grob-interpret-markup grob
    (markup #:with-dimensions '(0 . 0) '(0 . 0)
     #:translate '( -2 . -2) #:musicglyph "brackettips.up" )) 0 )
)

scoop = \once \override NoteHead.stencil = #scoop-stencil

%%% music = \fixed c'' { \scoop c2 r }
