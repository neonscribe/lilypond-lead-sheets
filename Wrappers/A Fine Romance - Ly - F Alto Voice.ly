%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Billie Holiday, Ella Fitzgerald Key"
whatKey = f,
whatClef = "treble"

\include "../Core/A Fine Romance - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{A Fine Romance - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/A Fine Romance - Ly - F Alto Voice"}

%}
