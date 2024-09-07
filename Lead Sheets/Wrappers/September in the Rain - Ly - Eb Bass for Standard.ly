%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/September in the Rain - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{September in the Rain - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/September in the Rain - Ly - Eb Bass for Standard"}

%}
