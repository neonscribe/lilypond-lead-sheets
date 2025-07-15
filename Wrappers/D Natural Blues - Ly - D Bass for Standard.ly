%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = d,
whatClef = "bass"

\include "../Core/D Natural Blues - Ly Core - D.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{D Natural Blues - D Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/D Natural Blues - Ly - D Bass for Standard"}

%}
