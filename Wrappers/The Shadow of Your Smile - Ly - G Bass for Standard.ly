%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,
whatClef = "bass"

\include "../Core/The Shadow of Your Smile - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Shadow of Your Smile - G Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/The Shadow of Your Smile - Ly - G Bass for Standard"}

%}
