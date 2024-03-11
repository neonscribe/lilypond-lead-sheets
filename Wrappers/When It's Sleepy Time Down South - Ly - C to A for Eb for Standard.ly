%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/When It's Sleepy Time Down South - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{When It's Sleepy Time Down South - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/When It's Sleepy Time Down South - Ly - C to A for Eb for Standard"}

%}
