%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,
whatClef = "bass"

\include "../Core/Friend of the Devil - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Friend of the Devil - G Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Friend of the Devil - Ly - G Bass for Standard"}

%}
