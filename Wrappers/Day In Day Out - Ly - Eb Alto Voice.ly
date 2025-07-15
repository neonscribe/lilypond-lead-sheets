%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Chris Connor Key"
whatKey = ef,
whatClef = "treble_8"

\include "../Core/Day In Day Out - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Day In, Day Out - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Day In Day Out - Ly - Eb Alto Voice"}

%}
