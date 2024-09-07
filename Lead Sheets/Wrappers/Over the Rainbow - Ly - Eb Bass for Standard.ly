%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/Over the Rainbow - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Over the Rainbow - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Over the Rainbow - Ly - Eb Bass for Standard"}

%}
