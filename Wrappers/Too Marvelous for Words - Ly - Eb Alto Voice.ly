%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Helen Forrest, Jo Stafford Key"
whatKey = ef
whatClef = "treble_8"

\include "../Core/Too Marvelous for Words - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Too Marvelous for Words - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Too Marvelous for Words - Ly - Eb Alto Voice"}

%}
