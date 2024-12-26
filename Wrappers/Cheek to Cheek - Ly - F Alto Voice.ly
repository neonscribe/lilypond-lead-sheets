%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Doris Day Key"
whatKey = f,
whatClef = "treble_8"

\include "../Core/Cheek to Cheek - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Cheek to Cheek - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Cheek to Cheek - Ly - F Alto Voice"}

%}
