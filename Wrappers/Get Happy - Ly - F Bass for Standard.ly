%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/Get Happy - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Get Happy - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Get Happy - Ly - F Bass for Standard"}

%}
