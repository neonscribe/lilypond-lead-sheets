%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Irene Kral Key"
whatKey = f,
whatClef = "treble_8"

\include "../Core/Emily - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Emily - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Emily - Ly - F Alto Voice"}

%}
