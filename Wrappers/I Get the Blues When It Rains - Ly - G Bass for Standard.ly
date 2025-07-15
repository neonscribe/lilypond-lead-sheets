%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,
whatClef = "bass"

\include "../Core/I Get the Blues When It Rains - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Get the Blues When It Rains - G Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/I Get the Blues When It Rains - Ly - G Bass for Standard"}

%}
