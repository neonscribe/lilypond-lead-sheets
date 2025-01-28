%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,,
whatClef = "bass"

\include "../Core/Beatrice - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Beatrice - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Beatrice - Ly - F Bass for Standard"}

%}
