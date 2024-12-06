%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = d,
whatClef = "bass"

\include "../Core/Midnight in Moscow - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Midnight in Moscow - Dm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Midnight in Moscow - Ly - Dm Bass for Standard"}

%}
