%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/Pick Yourself Up - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Pick Yourself Up - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Pick Yourself Up - Ly - F Bass for Standard"}

%}
