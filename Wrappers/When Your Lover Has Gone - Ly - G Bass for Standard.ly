%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,
whatClef = "bass"

\include "../Core/When Your Lover Has Gone - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{When Your Lover Has Gone - G Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/When Your Lover Has Gone - Ly - G Bass for Standard"}

%}
