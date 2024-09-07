%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/Rosetta - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Rosetta - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Rosetta - Ly - F Bass for Standard"}

%}
