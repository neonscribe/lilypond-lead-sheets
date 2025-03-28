%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/Seven Steps to Heaven - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Seven Steps to Heaven - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Seven Steps to Heaven - Ly - F Bass for Standard"}

%}
