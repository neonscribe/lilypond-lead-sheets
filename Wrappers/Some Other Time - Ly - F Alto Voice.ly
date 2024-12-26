%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Blossom Dearie Key"
whatKey = f,
whatClef = "treble_8"

\include "../Core/Some Other Time - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Some Other Time - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Some Other Time - Ly - F Alto Voice"}

%}
