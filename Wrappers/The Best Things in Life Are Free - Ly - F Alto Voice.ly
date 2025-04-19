%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Peggy Lee Key"
whatKey = f,
whatClef = "treble_8"

\include "../Core/The Best Things in Life Are Free - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Best Things in Life Are Free - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/The Best Things in Life Are Free - Ly - F Alto Voice"}

%}
