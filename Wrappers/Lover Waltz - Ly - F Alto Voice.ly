%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Margaret Whiting Key"
whatKey = f,
whatClef = "treble_8"

\include "../Core/Lover Waltz - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Lover (3/4) - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Lover Waltz - Ly - F Alto Voice"}

%}
