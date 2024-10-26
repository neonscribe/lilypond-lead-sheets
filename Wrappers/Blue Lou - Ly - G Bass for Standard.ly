%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,
whatClef = "bass"

\include "../Core/Blue Lou - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Blue Lou - G Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Blue Lou - Ly - G Bass for Standard"}

%}
