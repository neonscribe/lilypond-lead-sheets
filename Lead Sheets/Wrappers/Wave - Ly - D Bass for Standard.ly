%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = d,
whatClef = "bass"

\include "../Core/Wave - Ly Core - D.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Wave - D Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Wave - Ly - D Bass for Standard"}

%}
