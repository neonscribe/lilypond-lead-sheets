%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Billie Holiday Key"
whatKey = g,
whatClef = "treble_8"

\include "../Core/When It's Sleepy Time Down South - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{When It's Sleepy Time Down South - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/When It's Sleepy Time Down South - Ly - G Alto Voice"}

%}
