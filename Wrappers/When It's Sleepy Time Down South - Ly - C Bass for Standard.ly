%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/When It's Sleepy Time Down South - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{When It's Sleepy Time Down South - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/When It's Sleepy Time Down South - Ly - C Bass for Standard"}

%}
