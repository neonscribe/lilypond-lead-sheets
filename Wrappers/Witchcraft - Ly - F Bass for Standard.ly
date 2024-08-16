%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/Witchcraft - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Witchcraft - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Witchcraft - Ly - F Bass for Standard"}

%}
