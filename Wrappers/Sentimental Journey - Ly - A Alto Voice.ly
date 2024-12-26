%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Doris Day Key"
whatKey = a,
whatClef = "treble_8"

\include "../Core/Sentimental Journey - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sentimental Journey - A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Sentimental Journey - Ly - A Alto Voice"}

%}
