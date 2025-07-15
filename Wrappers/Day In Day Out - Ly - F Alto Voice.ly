%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Helen Ward (with Bob Crosby) Key"
whatKey = f,
whatClef = "treble_8"

\include "../Core/Day In Day Out - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Day In, Day Out - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Day In Day Out - Ly - F Alto Voice"}

%}
