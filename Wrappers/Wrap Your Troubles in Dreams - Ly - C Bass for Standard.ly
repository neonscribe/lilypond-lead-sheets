%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,,
whatClef = "bass"

\include "../Core/Wrap Your Troubles in Dreams - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Wrap Your Troubles in Dreams - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Wrap Your Troubles in Dreams - Ly - C Bass for Standard"}

%}
