%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Jo Stafford Key"
whatKey = g,
whatClef = "treble_8"

\include "../Core/The Best Things in Life Are Free - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Best Things in Life Are Free - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/The Best Things in Life Are Free - Ly - G Alto Voice"}

%}
