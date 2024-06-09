%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
bassKey = f
whatClef = "bass"

\include "../Core/Cold Duck Time - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Cold Duck Time - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Cold Duck Time - Ly - F Bass for Standard"}

%}
