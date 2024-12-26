%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Doris Day, Sarah Vaughan Key"
whatKey = ef
whatClef = "treble_8"

\include "../Core/Day by Day - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Day by Day - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Day by Day - Ly - Eb Alto Voice"}

%}
