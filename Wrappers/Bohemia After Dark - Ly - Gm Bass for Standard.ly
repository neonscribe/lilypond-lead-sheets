%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,
whatClef = "bass"

\include "../Core/Bohemia After Dark - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Bohemia After Dark - Gm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Bohemia After Dark - Ly - Gm Bass for Standard"}

%}
