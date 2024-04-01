%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/Bags Groove - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Bags' Groove - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Bags Groove - Ly - F Bass for Standard"}

%}
