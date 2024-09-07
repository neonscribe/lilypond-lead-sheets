%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/Route 66 - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Route 66 - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Route 66 - Ly - F Bass for Standard"}

%}
