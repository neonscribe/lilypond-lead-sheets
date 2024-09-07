%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/When It's Sleepy Time Down South - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{When It's Sleepy Time Down South - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/When It's Sleepy Time Down South - Ly - C Standard"}

%}
