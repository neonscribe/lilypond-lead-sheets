%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,
whatClef = "bass"

\include "../Core/Minor Blues - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Minor Blues (Blues en Mineur) - Gm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Minor Blues - Ly - Gm Bass for Standard"}

%}
