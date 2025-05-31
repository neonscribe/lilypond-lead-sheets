%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/Beyond the Sea - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Beyond the Sea - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Beyond the Sea - Ly - F Bass for Standard"}

%}
