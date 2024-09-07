%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/Where or When - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Where or When - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Where or When - Ly - Eb Bass for Standard"}

%}
