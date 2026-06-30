%% -*- Mode: LilyPond -*-

\version "2.26.0"

% Only include this file if version < 2.27

stanza = 
#(define-music-function (s)
  (string?)
  #{ \set stanza = #s #} )
